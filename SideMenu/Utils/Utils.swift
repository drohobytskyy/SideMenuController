//
//  Utils.swift
//  SideMenu
//
//  Created by @rtur drohobytskyy on 26/01/2020.
//  Copyright © 2020 @rtur drohobytskyy. All rights reserved.
//

import UIKit

class Utils {
    
    static let shared: Utils = Utils()
    
    static let primaryColorInt: Int = 0x63848f
    static let primaryColor: UIColor = UIColor(rgb: primaryColorInt)
    static let navBarStyle: UIBarStyle = .blackTranslucent
    static let separatorColor: UIColor = .lightGray
    static let tableViewRowHeight: Int = 80
    
    func getMenuOptions() -> [MenuOption] {
        return [MenuOption(name: "Home", image: "home"),
                MenuOption(name: "Settings", image: "settings")]
    }
}
