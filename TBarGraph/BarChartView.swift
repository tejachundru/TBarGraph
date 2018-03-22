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
    
    //User Controlled
    var valuesArray:[CGFloat]?
    var barColors:[UIColor]?
    var barlabelColor = UIColor.black
    var defaultBarColor:UIColor = UIColor.blue
   
    
    private var barElementColor:UIColor?
    
    override func draw(_ rect: CGRect) {
        
        if let value = valuesArray?.max() {
            
            let eachValueX = self.bounds.width/CGFloat((valuesArray?.count)!)
            let maxValue = value
            var newValueArray:[CGFloat] = [CGFloat]()
            
            //Converting Values into 0-1 With Respect To Max Value
            for a in valuesArray!{
                newValueArray.append(a/maxValue)
            }
            
            var xValue:CGFloat = eachValueX/2
            var colorControl:Int = 0

            for subView in self.subviews{
                subView.removeFromSuperview()
            }
            
            for modifiedvalue in newValueArray{
                
                //Value Label
                
                let valueLabel = UILabel()
                
                //Color Handling
                if (barColors?.count) != nil && (barColors?.count)! > colorControl {
                    barElementColor = barColors?[colorControl]
                }else{
                    barElementColor = UIColor.blue
                }
                
                //Drawing path
                let path = UIBezierPath()
                path.move(to: CGPoint(x: xValue, y: self.bounds.height))
                path.addLine(to: CGPoint(x: xValue, y: self.bounds.height - (self.bounds.width*modifiedvalue)))
                path.lineWidth = CGFloat(0.8*eachValueX)
                barElementColor?.setStroke()
                path.stroke()
                // Value for label
                valueLabel.frame = CGRect(x: xValue - eachValueX/2, y: self.bounds.height - (self.bounds.width*modifiedvalue) - 25, width: eachValueX, height: 30)
                valueLabel.text = "\(modifiedvalue*maxValue)"
                valueLabel.textColor = barlabelColor
                valueLabel.textAlignment = NSTextAlignment.center
                valueLabel.adjustsFontSizeToFitWidth = true
                self.addSubview(valueLabel)
                
                xValue = xValue+eachValueX
                colorControl = colorControl+1
            }
        }
    }
}
