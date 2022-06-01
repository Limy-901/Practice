package com.plcoding.cleanarchitecturenoteapp.feature_note.domain.model

import androidx.compose.ui.graphics.Color
import androidx.room.Entity
import androidx.room.PrimaryKey
import com.plcoding.cleanarchitecturenoteapp.ui.theme.*

@Entity
data class Note(
    val title: String,
    val content: String,
    val timestamp: Long,
    val color: Int,
    // 처음에 null로 정의되는 nullable 정수
    @PrimaryKey val id: Int? = null
) {
    // 이미 노트 객체가 가지고 있는 내용을 정의하기위해 컴패니언 오브젝트 만들었음
    companion object {
        val noteColors = listOf(RedOrange, LightGreen, Violet, BabyBlue, RedPink)
    }
}

// 예외처리 클래스 (유스케이스에서 사용함)
class InvalidNoteException(message: String) : Exception(message)
