import Foundation

struct Todo {
    static var nextId: Int = 0
    var id: Int = 0
    var title: String = ""
    var isComplete: Bool = false
    
    init(id: Int, title: String) {
        self.id = id
        self.title = title
        self.isComplete = false
    }
}

