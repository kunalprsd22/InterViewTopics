
import Foundation


class LinkList{
    
    var data:Int
    var next:LinkList?
    
    init(_ data:Int,_ next:LinkList?) {
        self.data = data
        self.next = next
    }
}



class UseDataStructure{
    
    init() {
        
    }
    
    func createLinkList(){
        let node1 = LinkList(12,nil)
        let node2 = LinkList(13,node1)
        let node3 = LinkList(14,node2)
        let node4 = LinkList(14,node3)
        let node5 = LinkList(14,node4)
        
        var head:LinkList? = nil
        head = node5
        
        while head != nil {
        print(head?.data)
        head = head?.next
    }
    
    }
    

}
