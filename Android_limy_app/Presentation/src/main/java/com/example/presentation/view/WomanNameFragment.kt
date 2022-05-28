package com.example.presentation.view

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.navigation.fragment.findNavController
import com.example.presentation.R
import com.example.presentation.base.BaseFragment
import com.example.presentation.databinding.FragmentWomanNameBinding


class WomanNameFragment : BaseFragment<FragmentWomanNameBinding>(R.layout.fragment_woman_name) {

    override fun init() {
        binding.fragment = this
    }

    fun nextBtnClick(view: View){
        this.findNavController().navigate(R.id.action_womanNameFragment_to_manNameFragment)
    }
}