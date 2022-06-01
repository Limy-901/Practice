package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.notes

import androidx.compose.runtime.State
import androidx.compose.runtime.mutableStateOf
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.lifecycle.viewmodel.compose.viewModel
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.use_case.NoteUseCases
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.NoteOrder
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.OrderType
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.launchIn
import kotlinx.coroutines.flow.onEach
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class NotesViewModel @Inject constructor(
    private val noteUseCases: NoteUseCases
) : ViewModel() {

    private val _state = mutableStateOf(NotesState()) // 기본적으로 empty 상태로 초기화
    val state: State<NotesState> = _state

    private var recentlyDeletedNote: Note? = null

    private var getNotesJob: Job? = null // 작업은 기본적으로 null 임

    init {
        // 기본적으로 날짜 내림차순으로 정렬되게 초기화 시킴
        getNotes(NoteOrder.Date(OrderType.Descending))
    }

    fun onEvent(event: NotesEvent) {
        when(event) {
            is NotesEvent.Order -> {
                // 기존의 정렬방법과 event 에서 들어온 정렬방법이 같은지 비교한 후 로직 실행
                if(state.value.noteOrder::class == event.noteOrder::class && // ::class 해줘야 동일한 클래스인지 비교가 됨
                   state.value.noteOrder.orderType == event.noteOrder.orderType
                ) {
                    return
                }
                getNotes(event.noteOrder)
            }
            is NotesEvent.DeleteNote -> {
                viewModelScope.launch {
                    noteUseCases.deleteNote(event.note)
                    recentlyDeletedNote = event.note //복원을 위해, 방금 삭제한 노트 객체를 기록함
                }
            }
            is NotesEvent.RestoreNote -> {
                viewModelScope.launch {
                    noteUseCases.addNote(recentlyDeletedNote ?: return@launch)
                    recentlyDeletedNote = null // 윗 라인에서 이미 삭제된 노트를 인설트했으므로, 기존에 기록된 객체는 null로 변경
                }
            }
            is NotesEvent.ToggleOrderSection -> {
                // 기본이 항상 불린임
                _state.value = state.value.copy( // 기본 상태 값을 복사하지만 일부만 변경할 수 있음
                    // 기존의 isOrderSectionVisible 의 반대값을 리턴하므로 false -> true로 바뀜 (첫 이벤트시)
                    isOrderSectionVisible = !state.value.isOrderSectionVisible

                )
            }
        }
    }

    private fun getNotes(noteOrder: NoteOrder) {
        // 새 코루틴 잡
        getNotesJob?.cancel()
        getNotesJob = noteUseCases.getNotes(noteOrder).onEach { notes->
            // 노트 목록을 flow 에서 넘어온 데이터로 변경해줌
            _state.value = state.value.copy(
                notes = notes,
                noteOrder = noteOrder
            )
        }
        // getNotes 함수 호출할때마다 새로운 flow를 얻음 -> 그때마다 새 인스턴스 발생
        .launchIn(viewModelScope)
    }

}