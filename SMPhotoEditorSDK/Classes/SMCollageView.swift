//
//  SMCollageView.swift
//  CropViewController
//
//  Created by Nguyễn Đình Đông on 10/29/18.
//

import Foundation
class SMCollageView : UIView {
    var imageView :UIImageView!
    
    var cutter:UIBezierPath!
    var maskLayer:CAShapeLayer!

    override func draw(_ rect: CGRect) {
        
        imageView = UIImageView(frame: rect)
        imageView.image = UIImage.init(named: "meow")
        imageView.isUserInteractionEnabled = true
        
        self.addSubview(imageView)
    }
    
    
}
