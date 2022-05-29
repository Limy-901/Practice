package com.example.limyapp.DI

import android.app.Application
import dagger.hilt.android.HiltAndroidApp

/**
 * 의존성 주입을 위한 클래스
 *
 */

@HiltAndroidApp
class App : Application() {
    companion object {
        private lateinit var application: App
        fun getInstance() : App = application
    }

    override fun onCreate() {
        super.onCreate()
        application = this
    }
}