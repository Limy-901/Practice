package com.plcoding.cleanarchitecturenoteapp.feature_note.presentation.notes.components

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.NoteOrder
import com.plcoding.cleanarchitecturenoteapp.feature_note.domain.util.OrderType

@Composable
fun OrderSection(
    modifier: Modifier = Modifier,
    noteOrder: NoteOrder = NoteOrder.Date(OrderType.Descending),
    onOrderChange: (NoteOrder) -> Unit
) {
    Column(
        modifier = Modifier
    ) {
        Row (
            modifier = Modifier.fillMaxWidth()
        ) {
            DefaultRadioButton(
                text = "Title",
                selected = noteOrder is NoteOrder.Title,
                onSelect = {
                    onOrderChange(NoteOrder.Title(noteOrder.orderType)) 
                })
            Spacer(modifier = Modifier.width(8.dp))

            DefaultRadioButton(
                text = "Date",
                selected = noteOrder is NoteOrder.Date,
                onSelect = {
                    onOrderChange(NoteOrder.Date(noteOrder.orderType))
                })
            Spacer(modifier = Modifier.width(8.dp))

            DefaultRadioButton(
                text = "Color",
                selected = noteOrder is NoteOrder.Color,
                onSelect = {
                    onOrderChange(NoteOrder.Color(noteOrder.orderType))
                })
            Spacer(modifier = Modifier.width(8.dp))
        }
        Spacer(modifier = Modifier.height(16.dp))
        //
        Row(
            modifier =Modifier.fillMaxWidth()
        ) {
            DefaultRadioButton(
                text = "오름차순",
                selected = noteOrder.orderType is OrderType.Ascending,
                onSelect = {
                    // 기존 설정을 가져온 뒤, 오름차순으로만 바꿔줌
                    onOrderChange(noteOrder.copy(OrderType.Ascending))
                }
            )
            Spacer(modifier = Modifier.width(8.dp))

            DefaultRadioButton(
                text = "내림차순",
                selected = noteOrder.orderType is OrderType.Descending,
                onSelect = {
                    // 기존 설정을 가져온 뒤, 내림차순으로만 바꿔줌
                    onOrderChange(noteOrder.copy(OrderType.Descending))
                }
            )
        }
    }
}