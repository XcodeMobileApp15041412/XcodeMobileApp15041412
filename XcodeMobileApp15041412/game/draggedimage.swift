//
//  draggedimage.swift
//  15041412
//


import UIKit

class draggedimage: UIImageView {

    var myDelegate: subviewDelegate?

    var startLocation: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        startLocation = touches.first?.location(in: self)
    }
    
        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
            let currentLocation = touches.first?.location(in: self)
            let dx = currentLocation!.x - startLocation!.x
            let dy = currentLocation!.y - startLocation!.y
        
            self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
            let xx = self.bounds.midX
            center.x = max(xx, center.x)
            center.x = min(self.superview!.bounds.size.width - xx,  center.x)
        
            let yy = self.bounds.midX
            center.y = max(yy, center.y)
            center.y = min(self.superview!.bounds.size.width - yy,  center.y)
        
            self.center = center
        
            self.myDelegate?.einz()
        }
    

}  
