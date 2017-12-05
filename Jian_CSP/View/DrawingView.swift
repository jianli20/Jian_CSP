//
//  DrawingView.swift
//  Jian_CSP
//
//  Created by Li, Jian Hong on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView {

    override public func draw(_rect: CGRect)
    
    {
        drawStickFigure().stroke()
    }
    
    private func drawstickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.blue.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y:200),
                           radius: CGFloat(20),
            startAngle: CGFloat(0),
            endAngle: CGFloat(2) * CGFloat.pi,
            clockwise: true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 180, y: 240))
        stickFigure.move(to:CGPoint(x: 220, y:270))
        stickFigure.addLine(to: CGPoint(x: 200, y:270))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y:270))
        stickFigure.addLine(to: CGPoint(x: 220, y:300 ))
        
        return stickFigure
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
