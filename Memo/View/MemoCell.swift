//
//  MemoCell.swift
//  Memo
//
//  Created by calmkeen on 2022/03/31.
//

import SwiftUI

struct MemoCell: View {
    
    @ObservedObject var memo: Memo
    @EnvironmentObject var dateFormatter: DateFormatter
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.context.prefix(5))
                .font(.body)
                .lineLimit(1)
            Text("\(memo.createDay, formatter: dateFormatter)")
                .font(.caption)
                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
}


struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(context: "test"))
            .environmentObject(DateFormatter.MemoDateFormatter)
    }
}
