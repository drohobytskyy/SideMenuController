//
//  HomeController.swift
//  SideMenu
//
//  Created by @rtur drohobytskyy on 26/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureNavigationBar()
        configureSwipeRecognizer()
    }
    
    // MARK: - Handlers
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        
        navigationController?.navigationBar.barTintColor = Utils.primaryColor
        navigationController?.navigationBar.barStyle = Utils.navBarStyle
        
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    @objc func handleGesture(_ sender: UIPanGestureRecognizer) {
        
        switch sender.state {
        case .began: break
        case .changed: break
        case .cancelled: break
        case .ended:
            handleMenuToggle()
            break
        default:
            break
        }
    }
    
    func configureSwipeRecognizer() {
        
        let panGesture = UIPanGestureRecognizer(target: self, action:(#selector(self.handleGesture(_:))))
        self.view.addGestureRecognizer(panGesture)
    }
}
