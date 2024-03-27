import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataManager = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        dataManager.setItems(todo: Todo(id:0, title:"exercising"))
        dataManager.setItems(todo: Todo(id:1, title:"studying Swift grammar"))
        dataManager.setItems(todo: Todo(id:2, title:"reviewing own code"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.getItems().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath) as! TableViewCell
        cell.list_label.text = dataManager.getItems()[indexPath.row].title
           
        return cell
    }
    
   
    @IBAction func addListBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "할 일 추가", message: nil, preferredStyle:UIAlertController.Style.alert)
        
        
        let add = UIAlertAction(title: "추가", style: .default) { [self] (_) in
            if let newItem = alert.textFields?.first?.text, !newItem.isEmpty {
                // 텍스트 필드에 첫번째
                dataManager.setItems(todo:Todo(id: Todo.nextId, title: newItem))
                
              tableView.insertRows(at: [IndexPath(row: dataManager.getItems().count-1, section: 0)], with: .automatic)
                print(dataManager.getItems())
            }
            
        }
            let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
            
            alert.addTextField{ (UITextField) in UITextField.placeholder = "할 일을 입력하세요" }
            
            alert.addAction(cancel)
            alert.addAction(add)
            present(alert, animated: true, completion: nil)
        }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete { //사용자가 리스트를 삭제하는게 참이면 아래 코드 실행
            dataManager.removeItems(indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}














