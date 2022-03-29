//
//  ViewModel.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import Foundation




func removeRows(at offsets: IndexSet) {
    MemoListDetail.remove(atOffsets: offsets)
}

var MemoListDetail: [Memo] = [
    Memo(id: "1", context: "메모내용 1", createDay: "1", modificationDay: "1"),
    Memo(id: "2", context: "메모내용 2", createDay: "2", modificationDay: "2"),
    Memo(id: "3", context: "메모내용 3", createDay: "3", modificationDay: "3"),
    Memo(id: "4", context: "메모내용 4", createDay: "4", modificationDay: "4")
]
