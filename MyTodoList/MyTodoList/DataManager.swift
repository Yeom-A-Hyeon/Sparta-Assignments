import Foundation

struct DataManager {
    private var items = [Todo]()
    
    
    mutating func setItems(todo:Todo){
        items.append(todo)
        Todo.nextId += 1
    }
    
    func getItems() -> [Todo]{
        return items
    }

    mutating func removeItems(_ indexPath:Int) {
        items.remove(at: indexPath)
    }
    
}



