//
//  MemoModel.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import Foundation
import SwiftUI


class Memo: Identifiable,ObservableObject {

    var id: UUID
    @Published var context: String
    let createDay: Date
    var modificationDay: Date
    
    init(id: UUID = UUID(), context: String, createDay: Date = Date(), modificationDay: Date = Date()){
        self.id = id
        self.context = context
        self.createDay = createDay
        self.modificationDay = modificationDay
    }
}
extension Memo: Equatable {
    static func == (lhs: Memo, rhs: Memo) -> Bool {
        return lhs.id == rhs.id
    }
}

