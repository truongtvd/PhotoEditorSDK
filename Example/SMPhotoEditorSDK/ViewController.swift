//
//  ViewController.swift
//  SMPhotoEditorSDK
//
//  Created by dongka195@live.com on 10/18/2018.
//  Copyright (c) 2018 dongka195@live.com. All rights reserved.
//

import UIKit
import SMPhotoEditorSDK
class ViewController: UIViewController {
    
    @IBOutlet weak var imv:UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        SMPhoto.test()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func changeAction(_ sender: Any) {
        
        let img = UIImage.init(named: "meow")
        self.imv.image = SMPhoto.CIBoxBlur(img!)
        print("Progress sucess")
    }
    
}

