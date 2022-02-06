//
//  ViewController.swift
//  Messenger
//
//  Created by Aung Ko Min on 7/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = {
        $0.setTitle("GO GO", for: .normal)
        $0.setTitleColor(.link, for: .normal)
        return $0
    }(UIButton())
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Messenger"
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.sizeToFit()
        view.addSubview(button)
        button.center = view.center
    }
    @objc
    private func didTapButton() {
        let dataSource = DemoChatDataSource(count: 10000, pageSize: 50)
        let viewController = AddRandomMessagesChatViewController()
        viewController.dataSource = dataSource
        viewController.shouldUseAlternativePresenter = true
        navigationController?.pushViewController(viewController, animated: true)
    }
}


