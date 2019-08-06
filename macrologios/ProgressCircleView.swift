//
//  ProgressCircleView.swift
//  macrologios
//
//  Created by Carmen Scholte Lubberink on 06/08/2019.
//  Copyright © 2019 Carmen Scholte Lubberink. All rights reserved.
//

import UIKit

class ProgressCircleView: UIView {

    var path: UIBezierPath!
    var shapeLayer: CAShapeLayer!
    var progressLayer: CAShapeLayer!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        path = UIBezierPath()
        path.addArc(withCenter: center, radius: CGFloat(50.0), startAngle: CGFloat(Double.pi * 3 / 2), endAngle: CGFloat(Double.pi * 3 / 2 + Double.pi + Double.pi), clockwise: true)
        path.close()

        shapeLayer = CAShapeLayer();
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = nil
        shapeLayer.strokeColor = UIColor.init(red: CGFloat(255), green: CGFloat(255), blue: CGFloat(255), alpha: CGFloat(0.05)).cgColor

        progressLayer = CAShapeLayer();
        progressLayer.path = path.cgPath
        progressLayer.lineWidth = 5
        progressLayer.fillColor = nil
        progressLayer.strokeColor = UIColor.orange.cgColor
        progressLayer.strokeEnd = 0.75

        self.layer.addSublayer(shapeLayer);
        self.layer.addSublayer(progressLayer);
    }
    

}
