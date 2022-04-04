//
//  MemoView.swift
//  Memo
//
//  Created by calmkeen on 2022/03/29.
//

import SwiftUI

struct MemoView: View{
    //@ObservedObject var MemoData: MemoData
    @State var MemoText = ""
    @Binding var showNew: Bool
    @EnvironmentObject var store: MemoFunc
    
    var body: some View {
        NavigationView{
            VStack{
                
                TextField("", text: $MemoText)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle("메모장", displayMode: .inline)
        }
        .toolbar{
            ToolbarItem(placement: .bottomBar){
                Save(show: $showNew, MemoText: $MemoText)
                    
                Button{
                    self.showNew = true
                }label: {
                    Image(systemName: "pencil.and.outline")
                }
            }
        }
    }
}

fileprivate struct Save: View{
    @Binding var show : Bool
    
    @EnvironmentObject var store : MemoFunc
    @Binding var MemoText: String
    
    var body : some View{
        Button {
            self.store.insert(memo: self.MemoText)
            show.self = false
        } label: {
            Image(systemName: "pencil")
        }

    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView(showNew: .constant(false))
            .environmentObject(MemoFunc())
            
    }
}
