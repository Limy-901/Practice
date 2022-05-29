package com.example.domain.utils

enum class ErrorType {
    // 네트워크 에러
    NETWORK,
    // 요청 시간 초과
    TIMEOUT,
    // 세션 만료
    SESSION_EXPIRED,
    // 미확인 에러
    UNKNOWN
}