package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.add_edit_note

import androidx.compose.runtime.State
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.graphics.toArgb
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.lifecycle.viewmodel.compose.viewModel
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.InvalidNoteException
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.use_case.NoteUseCases
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.launch
import javax.inject.Inject


@HiltViewModel
class AddEditNoteViewModel @Inject constructor(
    private val noteUseCases: NoteUseCases,
    savedStateHandle: SavedStateHandle
) : ViewModel(){

    init {
        savedStateHandle.get<Int>("noteId")?.let { noteId ->
            if(noteId != -1) {
                viewModelScope.launch {
                    noteUseCases.getNote(noteId)?.also { note-> // null이 아닌 경우
                        currentNoteId = note.id
                        _noteTitle.value = noteTitle.value.copy(
                            // DB에서 가져와서 보여주기
                            text = note.title,
                            isHintVisible = false
                        )
                        _noteContent.value = noteContent.value.copy(
                            // DB에서 가져와서 보여주기
                            text = note.content,
                            isHintVisible = false
                        )
                        _noteColor.value = note.color
                    }
                }
            }
        }
    }


    // Add Note 시, 기본적으로 가지는 값을 미리 세팅함 (아무값도 없게 초기화)

    // 노트에 텍스트가 입력될때 연동될 텍스트 필드
    private val _noteTitle = mutableStateOf(NoteTextFieldState(
        hint = "제목을 입력하세요."
    ))
    val noteTitle: State<NoteTextFieldState> = _noteTitle

    // 노트에 텍스트가 입력될때 연동될 텍스트 필드
    private val _noteContent = mutableStateOf(NoteTextFieldState(
        hint = "노트의 내용을 기록하세요."
    ))
    val noteContent: State<NoteTextFieldState> = _noteContent

    // 노트 컬러중 랜덤으로 한 색 뽑아줌
    private val _noteColor = mutableStateOf(Note.noteColors.random().toArgb())
    val noteColor: State<Int> = _noteColor

    private val _eventFlow = MutableSharedFlow<UiEvent>()
    val eventFlow = _eventFlow.asSharedFlow()

    private var currentNoteId: Int? = null

    fun onEvent(event: AddEditNoteEvent) {
        when(event) {
            // 제목 입력 이벤트
            is AddEditNoteEvent.EnteredTitle -> {
                _noteTitle.value = noteTitle.value.copy(
                    text = event.value
                )
            }
            is AddEditNoteEvent.ChangeTitleFocus -> {
                _noteTitle.value = noteTitle.value.copy(
                    // 입력할때는 힌트를 숨겨야 하니까, 텍스트필드 비어있고, 포커스 되어있지 않은 상황일때만 보여줌
                    isHintVisible = !event.focusState.isFocused &&
                            noteTitle.value.text.isBlank()
                )
            }
            // 내용 입력 이벤트
            is AddEditNoteEvent.EnteredContent -> {
                _noteContent.value = noteContent.value.copy(
                    text = event.value
                )
            }
            is AddEditNoteEvent.ChangeContentFocus -> {
                _noteContent.value = noteContent.value.copy(
                    // 입력할때는 힌트를 숨겨야 하니까, 텍스트필드 비어있고, 포커스 되어있찌 않은 상황일때만 보여줌
                    isHintVisible = !event.focusState.isFocused &&
                            noteContent.value.text.isBlank()
                )
            }
            is AddEditNoteEvent.ChangeColor -> {
                _noteColor.value = event.color
            }
            is AddEditNoteEvent.SaveNote -> {
                viewModelScope.launch {
                    try {
                        noteUseCases.addNote(
                            Note(
                                title = noteTitle.value.text,
                                content = noteContent.value.text,
                                timestamp = System.currentTimeMillis(),
                                color = noteColor.value,
                                id = currentNoteId // null 일수 있음 -> 새 노트라는 것.
                            )
                        )
                        _eventFlow.emit(UiEvent.SaveNote)
                    } catch(e: InvalidNoteException) { //
                        _eventFlow.emit(
                            UiEvent.ShowSnackbar(
                                message = e.message?: "노트를 저장할 수 없습니다."
                            )
                        )
                    }
                }
            }

        }
    }

    sealed class UiEvent {
        data class ShowSnackbar(val message: String) : UiEvent()
        object SaveNote: UiEvent()
    }
}