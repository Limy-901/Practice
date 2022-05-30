package com.codemave.mobilecomputing.data.room

import androidx.room.Database
import androidx.room.RoomDatabase
import com.codemave.mobilecomputing.data.entity.Category

/**
 * The [RoomDatabase] for this app
 */
@Database(
    entities = [Category::class],
    version = 1,
    exportSchema = false
)
/**
 * 룸 데이터 베이스를 상속받는 데이터베이스를 생성
 */

abstract class MobileComputingDatabase : RoomDatabase() {
    /**
     * 이 데이터 베이스는 아래의 펑션을 호출함 (dao)
     */
    abstract fun categoryDao(): CategoryDao
}