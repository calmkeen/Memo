//
//  MemoStore.swift
//  Memo
//
//  Created by calmkeen on 2022/03/31.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list : [Memo]
    //dateformate으로 변경해 에러중  실행시 Model의 creatDay, modificationday string으로 변경 후 실행
    init() {
        list = [
            Memo(context: "메모내용 1"),
            Memo(context: "5글자 테스트"),
            Memo(context: "짤리면 5글자"),
            Memo(context: "메모내용 4")
        ]
    }
    func insert(memo: String){
        list.insert(Memo(context: memo),at: 0)
    }
    func update(memo: Memo?, context: String){
        guard let memo = memo else { return }
        memo.context = context
    }
    func del(memo: Memo){
        self.list.removeAll{ $0 == memo }
    }
    
    func delete(set: IndexSet){
        for index in set{
            self.list.remove(at: index)
        }
    }
}
