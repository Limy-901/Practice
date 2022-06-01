package com.plcoding.cleanarchitecturenoteapp.feature_note.domain.use_case

import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.InvalidNoteException
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.repository.NoteRepository

class AddNote (
    private val repository: NoteRepository
        ){

    @Throws(InvalidNoteException::class)
    suspend operator fun invoke(note: Note) {

        if(note.title.isBlank()) { // 유효성 검사
            // 직접 로직 입력하지 않고, Note 모델 클래스에 아예 예외 처리에 대한 클래스를 만들어서 리턴함
            throw InvalidNoteException("타이틀이 비어있습니다.")
        }
        if(note.content.isBlank()) {
            throw InvalidNoteException("내용이 비어있습니다.")
        }


        repository.insertNote(note)
    }
}