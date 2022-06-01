package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.notes

import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.NoteOrder
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.OrderType

data class NotesState(
    val notes: List<Note> = emptyList(), // 기본적으로 빈 항목으로 초기화
    val noteOrder: NoteOrder = NoteOrder.Date(OrderType.Descending), // 기본적으로 날짜 내림차순
    val isOrderSectionVisible: Boolean = false // 처음에는 그 섹션을 표시하지 않음.
)
