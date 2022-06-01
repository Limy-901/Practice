package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.notes

import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.NoteOrder


/**
 *
 * 유저가 ui에서 할 수 있는 이벤트 모음집
 *
 */
sealed class NotesEvent {
    data class Order(val noteOrder: NoteOrder) : NotesEvent()
    data class DeleteNote(val note: Note): NotesEvent()
    object RestoreNote: NotesEvent()
    object ToggleOrderSection: NotesEvent()
}
