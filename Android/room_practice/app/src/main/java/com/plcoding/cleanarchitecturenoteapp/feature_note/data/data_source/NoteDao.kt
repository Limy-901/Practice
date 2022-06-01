package com.plcoding.cleanarchitecturenoteapp.feature_note.data.data_source

import androidx.room.*
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model.Note
import kotlinx.coroutines.flow.Flow


@Dao
interface NoteDao {
    @Query("SELECT * FROM note")
    fun getNotes(): Flow<List<Note>>

    // 직접 노트를 반환함.
    @Query("select * from note where id=:id")
    suspend fun getNoteById(id: Int) : Note?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertNote(note: Note)

    @Delete
    suspend fun deleteNote(note: Note)

}