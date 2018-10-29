//
//  CollageView.swift
//  SMPhotoEditorSDK_Example
//
//  Created by Nguyễn Đình Đông on 10/26/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class CollageView : UIView {
    var imageView : UIImageView!
    
//    var imageView1:UIImageView!
    
    var cutter:UIBezierPath!
    var maskLayer:CAShapeLayer!
    
    
    override func draw(_ rect: CGRect) {
        imageView = UIImageView(frame: rect)
        imageView.image = UIImage.init(named: "meow")
        imageView.isUserInteractionEnabled = true
        
        self.addSubview(imageView)
        self.setMask(view: imageView)
        self.setMask1(view: imageView)
        
//        imageView1 = UIImageView(frame: rect)
//        imageView1.image = UIImage.init(named: "yasuo")
//        imageView1.isUserInteractionEnabled = true
//
//
//
//        self.addSubview(imageView1)
//        self.setMask1(view: imageView1)
//        print("Draw")
    }
    
    func setMask(view:UIView) {
        maskLayer = CAShapeLayer()
        cutter = UIBezierPath()
        
        
        //trước tiên phải move đến điểm bắt đầu
        //Điểm góc trên trái
        cutter.move(to: CGPoint.init(x: 0, y: 0))
        
        //Điểm góc trên phải
        cutter.addLine(to: CGPoint.init(x: view.bounds.width, y: 0))
        
        //Điểm góc dưới phải
        cutter.addLine(to: CGPoint.init(x: view.bounds.width, y: 200 ))
        
        //Điểm góc dưới trái
        cutter.addLine(to: CGPoint.init(x: 0, y: 200))
        
        //Điểm kết thúc
        cutter.addLine(to: CGPoint.init(x: 0, y: 0))
        

        
        //Đóng cutter
        cutter.close()
        
        //Gán layer path
        maskLayer.path = cutter.cgPath
        
        //Lấy bên trong hoặc bên ngoài path = cách gán các key kCAFillRuleEvenOdd cho kernel biết được người dùng muốn lấy phần nào
        maskLayer.fillRule = kCAFillRuleEvenOdd
        
        //Path color
        maskLayer.fillColor = UIColor.red.cgColor
        
        //Layer của view được gán bằng layer đã định nghĩa
        view.layer.mask = maskLayer
        
    }
    
    
    
    
    
    func setMask1(view:UIView) {
        maskLayer = CAShapeLayer()
        cutter = UIBezierPath()
        
        let with = view.bounds.width / 10
//        let height = 50
        cutter.move(to: CGPoint.init(x: 0, y: 150))

        for i in 1 ... 10 {
                cutter.addLine(to: CGPoint.init(x: (with / 2 ) + CGFloat(i - 1) * with, y: 100))
                cutter.addLine(to: CGPoint.init(x: with * CGFloat(i), y: 150))
        }


        cutter.close()

        
        
        //Gán layer path
        maskLayer.path = cutter.cgPath
        
        //Lấy bên trong hoặc bên ngoài path = cách gán các key kCAFillRuleEvenOdd cho kernel biết được người dùng muốn lấy phần nào
        maskLayer.fillRule = kCAFillRuleEvenOdd
        
        //Path color
        maskLayer.fillColor = UIColor.red.cgColor
        
        //Layer của view được gán bằng layer đã định nghĩa
        view.layer.mask = maskLayer
        
    }

    
}
