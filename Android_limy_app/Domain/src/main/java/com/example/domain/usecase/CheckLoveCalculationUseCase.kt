package com.example.domain.usecase

import com.example.domain.repository.MainRepository
import com.example.domain.utils.RemoteErrorEmitter
import javax.inject.Inject

class CheckLoveCalculationUseCase @Inject constructor(
    private val mainRepository: MainRepository
) {
    suspend fun execute(
        remoteErrorEmitter: RemoteErrorEmitter,
        host: String,
        key : String,
        wName : String, // fName
        mName : String // sName
    ) = mainRepository.checkLoveCalculator(remoteErrorEmitter, host, key, wName, mName)
}