/*
 * Copyright (C) 2021 The Android Open Source Project.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.example.android.marsphotos.network

import com.squareup.moshi.Moshi
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import retrofit2.Retrofit
import retrofit2.converter.moshi.MoshiConverterFactory
import retrofit2.http.GET

/**
 * 앱이 MarsApi.retrofitService를 호출할 때마다
 * 호출자는 최초 액세스 시 생성된 MarsApiService를 구현하는 것과
 * 동일한 싱글톤 Retrofit 객체에 액세스합니다.
 */

// 서버와 통신할 주소
private const val BASE_URL = "https://android-kotlin-fun-mars-server.appspot.com/"

/**
 * Build the Moshi object that Retrofit will be using, making sure to add the Kotlin adapter for
 * full Kotlin compatibility.
 */
private val moshi = Moshi.Builder()
    .add(KotlinJsonAdapterFactory())
    .build()

/**
 * Use the Retrofit builder to build a retrofit object using a Moshi converter with our Moshi
 * object.
 * Retrofit 객체 구축
 */
private val retrofit = Retrofit.Builder()
/**
 * Retrofit에서는 웹 서비스의 기본 URI 및 변환기 팩토리가 있어야
// 웹 서비스 API를 빌드할 수 있습니다.
변환기는 웹 서비스에서 얻은 데이터로 해야 할 일을 Retrofit에 알립니다.
이 경우에는 Retrofit에서 웹 서비스의 JSON 응답을 가져와
String으로 반환하려고 합니다. Retrofit에는 문자열 및 기타 프리미티브 유형을
지원하는 ScalarsConverter가 있으므로 ScalarsConverterFactory의
인스턴스를 사용하여 빌더에서 addConverterFactory()를 호출합니다.
 */
.addConverterFactory(MoshiConverterFactory.create(moshi))
    .baseUrl(BASE_URL)
    .build()

/**
 * A public interface that exposes the [getPhotos] method
 * Retrofit 빌더 호출 아래에서 Retrofit이 HTTP 요청을 사용하여
 * 웹 서버와 통신하는 방법을 정의하는 MarsApiService라는 인터페이스를 정의합니다.
 */
interface MarsApiService {
    /**
     * Returns a [List] of [MarsPhoto] and this method can be called from a Coroutine.
     * The @GET annotation indicates that the "photos" endpoint will be requested with the GET
     * HTTP method
     *
     * @GET서비스를 이용할 수 있도록 GET 서비스를 제공받을 수 있습니다.
     * 이 경우 포인트 photos입니다. 이전 작업에서 /photos 를 이용 하십시오.
     *
     * JSON 배열에서 MarsPhoto 객체 목록을 반환하도록 Retrofit에 요청할 수 있습니다.
     * Retrofit이 String이 아닌 MarsPhoto 객체 목록을 반환하도록
     * MarsApiService 인터페이스를 업데이트합니다.
     */
    @GET("photos")
    suspend fun getPhotos(): List<MarsPhoto>
}

/**
 * A public Api object that exposes the lazy-initialized Retrofit service
 싱글톤 객체
MarsApiService 인터페이스 선언 외부에서 MarsApi라는 공개 객체를 정의하여 Retrofit 서비스를 초기화합니다.
이 객체는 앱의 나머지 부분에서 액세스할 수 있는 공개 싱글톤 객체입니다.
 */
object MarsApi {
    val retrofitService: MarsApiService by lazy { retrofit.create(MarsApiService::class.java) }
}
