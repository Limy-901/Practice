package com.example.data.repository

import com.example.data.mapper.MainMapper
import com.example.data.repository.remote.datasource.MainDataSource
import com.example.domain.model.DomainLoveResponse
import com.example.domain.repository.MainRepository
import com.example.domain.utils.RemoteErrorEmitter
import javax.inject.Inject

class MainRepositoryImpl @Inject constructor(
    private val mainDataSource: MainDataSource
) : MainRepository {

    override suspend fun checkLoveCalculator(
        remoteErrorEmitter: RemoteErrorEmitter,
        host: String,
        key: String,
        wName: String,
        mName: String
    ): DomainLoveResponse? {
        // Mapper 를 쓰는 이유?
        // Data 에는 Domain 과 연결되어 있지 않아서, Mapper 통해서 연결 시켜줌
        return MainMapper.loveMapper(mainDataSource.checkLoveCalculator(remoteErrorEmitter,host, key, wName, mName))
    }
}