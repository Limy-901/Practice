package com.example.data.remote.api

import retrofit2.http.GET
import retrofit2.http.Header
import retrofit2.http.Query

interface LoveCalculationApi {
    @GET("getPercentage")
    suspend fun getPercentage(
        // api 문서에 적혀있는 헤더
        @Header("X-RapidAPI-Key") key : String,
        @Header("X-RapidAPI-Host") host : String,
        // 매개변수로 줄 값
        @Query("sname") sName : String,
        @Query("fname") fName : String
    )
}