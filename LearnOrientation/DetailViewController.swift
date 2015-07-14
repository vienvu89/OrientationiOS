//
//  DetailViewController.swift
//  LearnOrientation
//
//  Created by Vien Vu  on 7/8/15.
//  Copyright (c) 2015 VienVu. All rights reserved.
//

import UIKit

class DetailViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return false
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Landscape.rawValue)
    }
    
//    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
//        return UIInterfaceOrientation.Portrait
//    }

    @IBAction func dismissButtonIsTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
   
    @IBAction func presentButtonIsTapped(sender: AnyObject) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let presentViewController = storyBoard.instantiateViewControllerWithIdentifier(NSStringFromClass(DetailViewController2).componentsSeparatedByString(".").last!) as! UIViewController
        presentViewController.view.frame = self.view.bounds
        
        self.presentViewController(presentViewController, animated: true) { () -> Void in
        }
    }

}
