//
//  ViewController.swift
//  LearnOrientation
//
//  Created by Vien Vu  on 7/8/15.
//  Copyright (c) 2015 VienVu. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

  
    var shouldHidStatusBar = false
    @IBOutlet weak var lblStatus: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        
        coordinator.animateAlongsideTransition({ (UIViewControllerTransitionCoordinatorContext) -> Void in
            
            let orient = UIApplication.sharedApplication().statusBarOrientation
            
            switch orient {
            case .LandscapeLeft, .LandscapeRight:
                self.lblStatus.text = "LandScape"
            case .Portrait:
                self.lblStatus.text = "Portrait"
            default:
                println("Anything But Portrait")
                // Do something else
            }
            
            }, completion: { (UIViewControllerTransitionCoordinatorContext) -> Void in
                println("rotation completed")
        })
        
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    }
    
    @IBAction func presentViewButtonIsTapped(sender: AnyObject) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let presentViewController = storyBoard.instantiateViewControllerWithIdentifier(NSStringFromClass(DetailViewController).componentsSeparatedByString(".").last!) as! UIViewController
        presentViewController.view.frame = self.view.bounds
        
//        self.navigationController?.pushViewController(presentViewController, animated: true)
        self.presentViewController(presentViewController, animated: true) { () -> Void in
        }
    }
}

