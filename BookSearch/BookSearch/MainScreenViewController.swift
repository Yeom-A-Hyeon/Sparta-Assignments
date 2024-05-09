//
//  MainScreenViewController.swift
//  BookSearch
//
//  Created by A Hyeon on 5/7/24.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    
    let searchBar = UISearchBar()
    let recentlySearchedBookLabel = UILabel()
    let recentlySearchedBookCollectionVC = UICollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(searchBar)
        view.addSubview(recentlySearchedBookLabel)
        view.addSubview(recentlySearchedBookCollectionVC)
        customSearchBarUI()
        customLabels()
    }
    
    
}
extension MainScreenViewController: UISearchBarDelegate {
    
    func customSearchBarUI() {
        
        searchBar.backgroundImage = UIImage()
        searchBar.searchTextField.backgroundColor = UIColor.white
        searchBar.layer.cornerRadius = 0
        searchBar.layer.masksToBounds = true
        searchBar.layer.shadowColor = UIColor.systemBlue.cgColor
        searchBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        searchBar.layer.shadowOpacity = 1
        searchBar.layer.shadowRadius = 2
        searchBar.placeholder = "책 이름을 검색해 주세요."
        searchBar.searchTextField.font = .systemFont(ofSize: 13)
        
        
        if let textField = searchBar.value(forKey: "searchField") as? UITextField {
            if let iconView = textField.leftView as? UIImageView {
                
                textField.clipsToBounds = true
                
                iconView.image = iconView.image?.withRenderingMode(.alwaysTemplate)
                iconView.tintColor = UIColor.systemBlue
            }
        }
        
        searchBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(95)
            make.leading.equalToSuperview().offset(27.5)
            make.trailing.equalToSuperview().inset(27.5)
            make.height.equalTo(43)
        }
    }
    
}
extension MainScreenViewController {
    func customLabels() {
        recentlySearchedBookLabel.text  = "검색 결과"
        recentlySearchedBookLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        recentlySearchedBookLabel.textColor = .systemBlue
        
        recentlySearchedBookLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(202)
            make.leading.equalToSuperview().offset(40)
            
        }
        
    }
    
}




#Preview {
    MainScreenViewController()  // 해당 컨트롤러
    // 화면 업데이트: command+option+p
}
