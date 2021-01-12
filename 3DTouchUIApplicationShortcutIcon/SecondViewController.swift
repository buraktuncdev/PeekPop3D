//
//  SecondViewController.swift
//  3DTouchUIApplicationShortcutIcon
//
//  Created by Burak Tunc on 12.01.21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIApplication.shared.keyWindow?.traitCollection.forceTouchCapability == UIForceTouchCapability.available
        {
            registerForPreviewing(with: self, sourceView: view)
        }
    }
    
    

}

extension SecondViewController: UIViewControllerPreviewingDelegate {
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        let convertedLocation = view.convert(location, to: imageView)
        
        if imageView.bounds.contains(convertedLocation) {
            let popVC = storyboard?.instantiateViewController(withIdentifier: "popVC") as! ThirdViewController
            popVC.popImage = imageView.image!
            popVC.preferredContentSize = .zero
            previewingContext.sourceRect = imageView.frame
            
            return popVC
        }
        
        return nil
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        if let ViewController = viewControllerToCommit as? ThirdViewController{
            ViewController.back.isHidden = false
        }
        show(viewControllerToCommit, sender: self)
    }
}
