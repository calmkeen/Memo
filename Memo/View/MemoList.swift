//
//  ContentView.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import SwiftUI

struct MemoList: View {
    @State var MemoListData = MemoListDetail
    //뷰 이동
    @State private var showNew = false
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(MemoListData, id: \.self){ memo in
                        HStack{
                            Text(memo.id)
                            Text(memo.context)
                            Text(memo.createDay)
                            Text(memo.modificationDay)
                        }
                    }
                    .onDelete(perform: removeRows)
                }
                //.navigationBarItems(leading: EditButton())
                
            }
            .navigationTitle("메모")
            .background(
                NavigationLink(destination:  MemoView(), isActive: $showNew) { EmptyView()
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
            //                ToolbarItem(placement: .bottomBar){
            //                    Button{
            //                        EditButton(MemoListData)
            //                    }label: {
            //                        Image(systemName: "pencil").foregroundColor(.yellow)
            //                    }
            //                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MemoList()
    }
}
