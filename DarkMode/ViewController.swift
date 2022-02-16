//
//  ViewController.swift
//  DarkMode
//
//  Created by ece on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //uygulama bu controller için hep tek modda çalışsın istiyorsan tüm uygulama çalışşın istiyorsan info.plist içerisinde userInterfacesStyle da belirlersin.
        // overrideUserInterfaceStyle = .light
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
       //kullanıcı dark-light methodunu değiştirme durumuna göre bu fonk ile çöz
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            button.tintColor = UIColor.white
        } else {
            button.tintColor = UIColor.blue
        }
    }


}

