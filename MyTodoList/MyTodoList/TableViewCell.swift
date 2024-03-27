
import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var list_label: UILabel!
    @IBOutlet weak var list_switch: UISwitch!
    
    var items = [Todo]()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print(items)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    // Configure the view for the selected state
    
    @IBAction func list_switch(_ sender: UISwitch) {
        if !sender.isOn {
            let attributedString = NSAttributedString(string: list_label.text ?? "", attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
                    list_label.attributedText = attributedString
                }else {
                    // 스위치가 on 상태일 때 기존의 문자열로 설정
                    list_label.attributedText = NSAttributedString(string: list_label.text ?? "")
                }
        }
    }

