package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.add_edit_note

import androidx.compose.runtime.State
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.graphics.toArgb
import androidx.lifecycle.ViewModel
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.use_case.NoteUseCases
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.asSharedFlow
import javax.inject.Inject


@HiltViewModel
class AddEditNoteViewModel @Inject constructor(
    private val noteUseCases: NoteUseCases
) : ViewModel(){

    // Add Note 시, 기본적으로 가지는 값을 미리 세팅함 (아무값도 없게 초기화)

    // 노트에 텍스트가 입력될때 연동될 텍스트 필드
    private val _noteTitle = mutableStateOf(NoteTextFieldState(
        hint = "제목을 입력하세요."
    ))
    val title: State<NoteTextFieldState> = _noteTitle

    // 노트에 텍스트가 입력될때 연동될 텍스트 필드
    private val _noteContent = mutableStateOf(NoteTextFieldState(
        hint = "노트의 내용을 기록하세요."
    ))
    val noteContent: State<NoteTextFieldState> = _noteContent

    // 노트 컬러중 랜덤으로 한 색 뽑아줌
    private val _noteColor = mutableStateOf(Note.noteColors.random().toArgb())

    private val _eventFlow = MutableSharedFlow<UiEvent>()
    val eventFlow = _eventFlow.asSharedFlow()

    fun onEvent(event: )

    sealed class UiEvent {
        data class ShowSnackbar(val message: String) : UiEvent()
        object SaveNote: UiEvent()
    }
}