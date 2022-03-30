//
//  MemoModel.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import Foundation
import SwiftUI


struct Memo: Identifiable,Hashable {

    var id: String
    var context: String
    var createDay: DateFormatter
    var modificationDay: DateFormatter
}

