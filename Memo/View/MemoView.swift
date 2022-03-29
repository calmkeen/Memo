//
//  MemoView.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import SwiftUI

struct MemoView: View {
    //var Memo : String
    @State private var MemoText: String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextField("", text: $MemoText)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle("메모장", displayMode: .inline)
        }
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView()
    }
}
