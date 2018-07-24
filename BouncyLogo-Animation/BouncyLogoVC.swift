//
//  BouncyLogoVC.swift
//  BouncyLogo-Animation
//
//  Created by Shashank Panwar on 11/07/18.
//  Copyright © 2018 Rahul Chopra. All rights reserved.
//

import UIKit

class BouncyLogoVC: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var logoWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var logoHeightCosntraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIView.animate(withDuration: 2.0, delay: 0, options: .allowUserInteraction, animations: {
            self.logoImage.frame.size.width = self.logoImage.frame.size.width + 80
        }) { (true) in
            UIView.animate(withDuration: 2.0, delay: 0, options: .autoreverse, animations: {
                self.logoImage.frame.size.width = self.logoImage.frame.size.width - 80
            }, completion: { (true) in
                
            })
        }
    }

}
