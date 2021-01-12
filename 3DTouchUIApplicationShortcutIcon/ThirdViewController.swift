//
//  ThirdViewController.swift
//  3DTouchUIApplicationShortcutIcon
//
//  Created by Burak Tunc on 12.01.21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var photo: UIImageView!
    var popImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = popImage
        self.back.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
