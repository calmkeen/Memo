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





