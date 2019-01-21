//
//  ViewController.swift
//  game
//  15041412
//  Copyright © 2019 ua16aaa. All rights reserved.
//

import UIKit
protocol subviewDelegate {
    func einz()
}

class ViewController: UIViewController, subviewDelegate {
    
    let BHeight = UIScreen.main.bounds.height //screen measurment in height x width
    let BWidth = UIScreen.main.bounds.width
    
    func einz() {
        finalscore.text = "Points: \(Points)"
        collisionBehaviour.removeAllBoundaries()
        collisionBehaviour.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: plane1ImageView.frame))
        
    }
    
    var dynamicBehavior: UIDynamicItemBehavior!
    var collisionBehaviour: UICollisionBehavior! //variable for collision boundaries
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehaviour: UIDynamicItemBehavior!
    var gravityBehavior: UIGravityBehavior!
    
    let  Crows = [0, 1, 2, 5, 7, 9, 11, 12, 14]
    let  theCoins = [0, 3, 4, 6, 8, 10, 13, 14, 15]
    

    @IBOutlet weak var plane1ImageView: draggedimage! //code for bject drag and move object
    
    @IBOutlet weak var treeImage: UIImageView?
    
    @IBOutlet weak var cloudImage: UIImageView?
    
    @IBOutlet weak var cloud2Image: UIImageView?
    
    @IBOutlet weak var roadImage: UIImageView?
    
    @IBOutlet weak var gameover: UIView!
    
    @IBOutlet weak var finalscore: UILabel!
    
    @IBOutlet weak var replaybutton: UIButton!
    
    @IBAction func replay1(_ sender: Any) {
        self.viewDidLoad()
        self.gameover.alpha = 0
        Points = 0
    }
    
    var Secs = 25
    var Points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plane1ImageView?.myDelegate = self
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicBehavior = UIDynamicItemBehavior(items: [])
        dynamicAnimator.addBehavior(dynamicBehavior)
        
        gravityBehavior = UIGravityBehavior(items: [])
        collisionBehaviour = UICollisionBehavior(items: [])
        dynamicAnimator.addBehavior(collisionBehaviour)
        collisionBehaviour.addBoundary(withIdentifier: "barrier" as NSCopying, for: UIBezierPath(rect: plane1ImageView.frame))
        
        gameover.frame = CGRect (x:0, y:0, width: BWidth*1, height: BHeight*1)
        replaybutton.frame = CGRect (x:0, y:0, width: BWidth*1, height: BHeight*1)
        
        
    
        //Create Tree animation
        
        var TreeArray: [UIImage]?
        
        TreeArray =  [UIImage(named: "tree1.png")!,
                      UIImage(named: "tree2.png")!,
                      UIImage(named: "tree3.png")!,
                      UIImage(named: "tree4.png")!,
                      UIImage(named: "tree5.png")!,
                      UIImage(named: "tree6.png")!,
                      UIImage(named: "tree7.png")!,
                      UIImage(named: "tree8.png")!,
                      UIImage(named: "tree9.png")!,
                      UIImage(named: "tree10.png")!,
                      UIImage(named: "tree11.png")!,
                      UIImage(named: "tree12.png")!,
                      UIImage(named: "tree13.png")!,
                      UIImage(named: "tree14.png")!,
                      UIImage(named: "tree15.png")!,
                      UIImage(named: "tree16.png")!,
                      UIImage(named: "tree17.png")!]
        
        treeImage?.image = UIImage.animatedImage(with: TreeArray!, duration: 1.4)
        treeImage?.frame = CGRect(x:0, y:BHeight*(-0.2), width: BWidth*1, height: BHeight*1)
       
        
        
        //Create Cloud1 animation
        
        var Cloud1Array: [UIImage]?
        
        Cloud1Array = [UIImage(named: "cloud.png")!,
                       UIImage(named: "cloud2.png")!]
        
        cloudImage?.image = UIImage.animatedImage(with: Cloud1Array!, duration: 1.3)
        
        
        //Create Cloud2 animation
        
        var Cloud2Array: [UIImage]?
        
        Cloud2Array = [UIImage(named: "cloud2.png")!,
                       UIImage(named: "cloud.png")!]
        
        cloud2Image?.image = UIImage.animatedImage(with: Cloud2Array!, duration: 1.3)
        
        
            
        //Create Road animation
        
        var RoadArray: [UIImage]?
        
        RoadArray = [UIImage(named: "road1.png")!,
                     UIImage(named: "road2.png")!,
                     UIImage(named: "road3.png")!,
                     UIImage(named: "road4.png")!,
                     UIImage(named: "road5.png")!,
                     UIImage(named: "road6.png")!,
                     UIImage(named: "road7.png")!,
                     UIImage(named: "road8.png")!,
                     UIImage(named: "road9.png")!,
                     UIImage(named: "road10.png")!,
                     UIImage(named: "road11.png")!,
                     UIImage(named: "road12.png")!,
                     UIImage(named: "road13.png")!,
                     UIImage(named: "road14.png")!,
                     UIImage(named: "road15.png")!,
                     UIImage(named: "road16.png")!,
                     UIImage(named: "road17.png")!,
                     UIImage(named: "road18.png")!,
                     UIImage(named: "road19.png")!]
        
        roadImage?.image = UIImage.animatedImage(with: RoadArray!, duration: 1)
        roadImage?.frame = CGRect(x:0, y:0, width: BWidth*1, height: BHeight*1)
            
        
        
        //Create Plane animation
        
        var PlaneArray: [UIImage]?
        
        PlaneArray = [UIImage (named: "plane1.png")!,
                      UIImage(named: "plane2.png")!,
                      UIImage(named: "plane3.png")!,
                      UIImage(named: "plane4.png")!,
                      UIImage(named: "plane5.png")!,
                      UIImage(named: "plane6.png")!,
                      UIImage(named: "plane7.png")!,
                      UIImage(named: "plane8.png")!,
                      UIImage(named: "plane9.png")!,
                      UIImage(named: "plane10.png")!,
                      UIImage(named: "plane11.png")!,
                      UIImage(named: "plane12.png")!,
                      UIImage(named: "plane13.png")!,
                      UIImage(named: "plane14.png")!,
                      UIImage(named: "plane15.png")!]
        
        plane1ImageView.image = UIImage.animatedImage(with: PlaneArray!, duration: 0.5)
        plane1ImageView.frame = CGRect(x:0, y:BHeight*(0.3), width: BWidth*(0.15), height: BHeight*(0.15))
        
        
        //Create Bird animation
        
        for theCrows in 0...8{
        let theDelay = Double(self.Crows[theCrows])
        let Timing_ = DispatchTime.now() + theDelay
        
        DispatchQueue.main.asyncAfter(deadline: Timing_){
            let CrowView = UIImageView(image: nil)
            var BirdsArray: [UIImage]
            BirdsArray = [UIImage(named: "bird1.png")!,
                          UIImage(named: "bird2.png")!,
                          UIImage(named: "bird3.png")!,
                          UIImage(named: "bird4.png")!,
                          UIImage(named: "bird5.png")!,
                          UIImage(named: "bird6.png")!,
                          UIImage(named: "bird7.png")!,
                          UIImage(named: "bird8.png")!,
                          UIImage(named: "bird9.png")!,
                          UIImage(named: "bird10.png")!,
                          UIImage(named: "bird1.png")!,
                          UIImage(named: "bird2.png")!,
                          UIImage(named: "bird3.png")!,
                          UIImage(named: "bird4.png")!,
                          UIImage(named: "bird5.png")!,
                          UIImage(named: "bird6.png")!,
                          UIImage(named: "bird7.png")!,
                          UIImage(named: "bird8.png")!,
                          UIImage(named: "bird9.png")!,
                          UIImage(named: "bird10.png")!]
            
            CrowView.image = UIImage.animatedImage(with: BirdsArray, duration: 1)
            CrowView.frame = CGRect(x:self.BWidth, y: CGFloat(arc4random_uniform(UInt32(self.BHeight))), width: self.BWidth*(0.13), height: self.BHeight*(0.13))
            
            self.view.addSubview(CrowView)
            
            self.view.bringSubview(toFront: CrowView)
            
            self.dynamicBehavior.addItem(CrowView)
            self.dynamicBehavior.addLinearVelocity(CGPoint(x: -200, y:0), for: CrowView)
            self.collisionBehaviour.addItem(CrowView)
            self.collisionBehaviour.action = {
                if(self.plane1ImageView.frame.intersects(CrowView.frame)){
                    self.Points -= 50
                }
                
            }
        }
            
        }
        
        //Create Coin animation
        for CoinIndex in 0...8{
            let theDelay = Double(self.theCoins[CoinIndex])
            
// time, and the delay of seconds
            let Timing_ = DispatchTime.now() + theDelay
            
            DispatchQueue.main.asyncAfter(deadline: Timing_){
                let coinsView = UIImageView(image:nil)
                var CoinArray: [UIImage]
                CoinArray = [UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,
                              UIImage(named: "coin.png")!,]
                
                //Position and Size of the coins
                coinsView.image = UIImage.animatedImage(with: CoinArray, duration: 5)
                coinsView.frame = CGRect(x:self.BWidth, y: CGFloat(arc4random_uniform(UInt32(self.BHeight)-60)), width: self.BWidth*(0.03), height: self.BHeight*(0.09))
                
      
                //the image view is added to the main view
                self.view.addSubview(coinsView)
                self.view.bringSubview(toFront: coinsView)
                
                self.dynamicBehavior.addItem(coinsView)
                self.dynamicBehavior.addLinearVelocity(CGPoint(x: -300, y:25), for: coinsView)
                self.collisionBehaviour.addItem(coinsView)
                //collisionBehaviour.action = coinArray.removeFromSuperview()
                
                self.collisionBehaviour.action = {
                    if(self.plane1ImageView.frame.intersects(coinsView.frame)){
                        self.Points += 100
                        coinsView.removeFromSuperview()

                    }
                }
            }
        }
    
        let GameTime = DispatchTime.now() + 25 //gametime
        DispatchQueue.main.asyncAfter(deadline: GameTime){
            self.view.bringSubview(toFront: self.gameover)
            self.gameover.alpha = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

