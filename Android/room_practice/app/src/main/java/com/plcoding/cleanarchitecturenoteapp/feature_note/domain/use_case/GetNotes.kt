package com.plcoding.cleanarchitecturenoteapp.feature_note.domain.use_case

import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.repository.NoteRepository
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.NoteOrder
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.OrderType
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.Flow

class GetNotes (
    private val repository: NoteRepository
    ) {

    // 유스케이스에는 하나의 함수만 있어도 됨
    // 이름 보고 알아보기 쉽게 만들어야 함
    // one public function
    // execute, invoke 등

    operator fun invoke(
        noteOrder: NoteOrder = NoteOrder.Date(OrderType.Descending)
    ): Flow<List<Note>> {
        // 리턴되는 값에 따라서 다르게 해줌
        return repository.getNotes().map { notes ->
            // 리턴되는 노트를 가져다가 notes 라는 변수로 만들고
            when(noteOrder.orderType) {
                // 노트의 orderType에 따라서
                is OrderType.Ascending -> {
                    when(noteOrder) {
                        is NoteOrder.Title -> notes.sortedBy { it.title.lowercase() }
                        is NoteOrder.Date -> notes.sortedBy { it.timestamp }
                        is NoteOrder.Color -> notes.sortedBy { it.color }
                    }
                }
                is OrderType.Descending -> {
                    when(noteOrder) {
                        is NoteOrder.Title -> notes.sortedByDescending { it.title.lowercase() }
                        is NoteOrder.Date -> notes.sortedByDescending { it.timestamp }
                        is NoteOrder.Color -> notes.sortedByDescending {  it.color }
                    }
                }
            }
        }
    }
}