//
//  ViewModel.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import Foundation
import SwiftUI


class MemoData: ObservableObject{
    var itemArray: [String] = []
    @Published var MemoText: String = ""
    
    func saveText(){
        itemArray.append(MemoText)
        MemoText = ""
    }
}


func removeRows(at offsets: IndexSet) {
    MemoListDetail.remove(atOffsets: offsets)
}

//dateformate으로 변경해 에러중  실행시 Model의 creatDay, modificationday string으로 변경 후 실행
var MemoListDetail: [Memo] = [
    Memo(id: "1", context: "메모내용 1", createDay: "1", modificationDay: "1"),
    Memo(id: "2", context: "5글자 테스트", createDay: "2", modificationDay: "2"),
    Memo(id: "3", context: "짤리면 5글자", createDay: "3", modificationDay: "3"),
    Memo(id: "4", context: "메모내용 4", createDay: "4", modificationDay: "4")
]


