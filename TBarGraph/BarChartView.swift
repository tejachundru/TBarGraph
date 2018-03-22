//
//  BarChartView.swift
//  TBarGraph
//
//  Created by Teja on 3/21/18.
//  Copyright © 2018 Teja. All rights reserved.
//

import UIKit
import CoreGraphics


class BarChartView : UIView{
    
    var valuesArray:[CGFloat]?
    var barColors:[UIColor]?
    
    func animateBarGraph(){
        UIView.animate(withDuration: 1.0) {
            self.setNeedsDisplay()
        }
    }
    
    
    private var noOfBars:CGFloat?
    private var barElementColor:UIColor?
    
    override func draw(_ rect: CGRect) {
        
        if let value = valuesArray?.max() {
            
            let eachValueX = self.bounds.width/CGFloat((valuesArray?.count)!)
            let maxValue = value
            var newValueArray:[CGFloat] = [CGFloat]()
            
            for a in valuesArray!{
                newValueArray.append(a/maxValue)
            }
            var xValue:CGFloat = eachValueX/2
            var colorControl:Int = 0
            
            for modifiedvalue in newValueArray{
                
                if (barColors?.count) != nil && (barColors?.count)! > colorControl {
                    barElementColor = barColors?[colorControl]
                }else{
                    barElementColor = UIColor.blue
                }
                
                let path = UIBezierPath()
                path.move(to: CGPoint(x: xValue, y: self.bounds.height))
                path.addLine(to: CGPoint(x: xValue, y: self.bounds.height - (self.bounds.width*modifiedvalue)))
                path.lineWidth = CGFloat(0.8*eachValueX)
                barElementColor?.setStroke()
                path.stroke()
                xValue = xValue+eachValueX
                colorControl = colorControl+1
            }
        }
    }
}
