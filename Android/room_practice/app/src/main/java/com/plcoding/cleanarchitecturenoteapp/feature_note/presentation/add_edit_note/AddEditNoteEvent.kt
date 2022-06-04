package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.add_edit_note

import androidx.compose.ui.focus.FocusState


/**
 * UI 작업에 대한 이벤트가 포함됨
 *
 *
 */
sealed class AddEditNoteEvent {
        // 타이틀을 입력함
        data class EnteredTitle(val value: String) : AddEditNoteEvent()
        // 텍스트 포커스 변경
        data class ChangeTitleFocus(val focusState: FocusState) : AddEditNoteEvent()
        // 글 입력함
        data class EnteredContent(val value: String) : AddEditNoteEvent()
        // 글 입력함
        data class ChangeContentFocus(val focusState: FocusState) : AddEditNoteEvent()
        // 색상 변경
        data class ChangeColor(val color: Int) : AddEditNoteEvent()

        object SaveNote: AddEditNoteEvent()
}
