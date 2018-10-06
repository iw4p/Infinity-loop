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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animateCloud(cloud1,10)
        animateCloud(cloud2,4)
        animateCloud(cloud3,13)
        animateCloud(cloud4,1)
        animateCloud(cloud5,30)

        
    }
    
    func animateCloud(_ cloud: UIImageView,_ speed:CGFloat) {
        let speeds = speed
        let cloudSpeed = speeds / view.frame.size.width
        let averageSpeed = (view.frame.size.width - cloud.frame.origin.x) * cloudSpeed
        UIView.animate(withDuration: TimeInterval(averageSpeed), delay: 0.0, options: .curveLinear, animations: {
            cloud.frame.origin.x = self.view.frame.size.width
        }, completion: { (_) in
            cloud.frame.origin.x = -cloud.frame.size.width
            self.animateCloud(cloud,speeds)
        })
    }


}

