package com.example.presentation.viewModel

import android.content.Context
import androidx.lifecycle.ViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject

class MainViewModel @Inject constructor(
    // app모듈의 di에 주입해줄 모듈을 만든다.
    @ApplicationContext context: Context) : ViewModel(){
}