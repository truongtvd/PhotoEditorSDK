//
//  ViewController.swift
//  SMPhotoEditorSDK
//
//  Created by dongka195@live.com on 10/18/2018.
//  Copyright (c) 2018 dongka195@live.com. All rights reserved.
//

import UIKit
import SMPhotoEditorSDK
import CropViewController

class ViewController: UIViewController, CropViewControllerDelegate {
    
    @IBOutlet weak var imv:UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        SMPhoto.test()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let maskView = UIImageView()

    @IBAction func changeAction(_ sender: Any) {
        
        let img = UIImage.init(named: "meow")
        self.imv.image = SMPhoto.CIPhotoEffectChrome(img!).image
        
        maskView.image = UIImage.init(named: "8800")
        maskView.contentMode = .scaleAspectFit
        self.imv.mask = maskView
        
        print("Progress sucess")
        
//        self.presentCropViewController()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        maskView.frame = imv.bounds
    }
    
    func presentCropViewController() {
        let image: UIImage = UIImage.init(named: "meow")!
        
        let cropViewController = CropViewController(image: image)
        cropViewController.delegate = self
        present(cropViewController, animated: true, completion: nil)
    }
    
    func cropViewController(_ cropViewController: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
        // 'image' is the newly cropped version of the original image
    }
    
}

