//
//  ViewController.swift
//  Infinity loop
//
//  Created by Nima Akbarzade on 10/6/18.
//  Copyright © 2018 Nima Akbarzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cloud1: UIImageView!
    @IBOutlet var cloud2: UIImageView!
    @IBOutlet var cloud3: UIImageView!
    @IBOutlet var cloud4: UIImageView!
    @IBOutlet var cloud5: UIImageView!


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //Call Function for moving the clouds
        moveIt(cloud1,10)
        moveIt(cloud2,4)
        moveIt(cloud3,13)
        moveIt(cloud4,20)
        moveIt(cloud5,30)
        
    }
    
    func moveIt(_ imageView: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        let imageSpeed = speeds / view.frame.size.width
        let averageSpeed = (view.frame.size.width - imageView.frame.origin.x) * imageSpeed
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            imageView.frame.origin.x = self.view.frame.size.width
        }, completion: { (_) in
            imageView.frame.origin.x = -imageView.frame.size.width
            self.moveIt(imageView,speeds)
        })
    }


}

