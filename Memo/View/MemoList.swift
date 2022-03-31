//
//  ContentView.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import SwiftUI

struct MemoList: View {
    @EnvironmentObject var MemoList: MemoStore
    @EnvironmentObject var dateFormatter: DateFormatter
    //뷰 이동
    @State private var showNew = false

    var body: some View {
        NavigationView{
                List{
                    ForEach(MemoList.list){ memo in
                        MemoCell(memo: memo)
                    }
                    //.onDelete(perform: delete)
                }
                //.navigationBarItems(leading: EditButton())
            .navigationTitle("메모")
            .background(
                NavigationLink(destination:  MemoView(showNew: self.$showNew)
                               , isActive: $showNew) { EmptyView()
                }
            )
            .toolbar {
                ToolbarItem(placement: .bottomBar){
                    Button{
                        self.showNew = true
                    }label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
                
            }
            .environmentObject(self.MemoList)
        }
    }
}

//다른 방식 navigationitem 같은걸로 할경우
//fileprivate struct ModalButoon: View{
//    @Binding var show: Bool
//
//
//    var body: some View{
//        Button {
//            self.show = true
//        } label: {
//            Image(systemName: "plus")
//        }
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemoList()
            .environmentObject(MemoStore())
            .environmentObject(DateFormatter.MemoDateFormatter)
//
    }
}
