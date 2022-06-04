package com.plcoding.cleanarchitecturenoteapp.feature_note.domain.use_case


/**
 *
 * 뷰모델에 모든 useCase를 넣자니 프로젝트 규모가 커지면 복잡해지므로
 * 더 깔끔하게 한방에 주입하기 위해서 만드는 Note에 관한 모든 useCase 모음집
 *
 */
data class NoteUseCases(
    val getNotes: GetNotes,
    val deleteNote: DeleteNote,
    val getNote: GetNote,
    val addNote: AddNote
)
