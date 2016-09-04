//
//  ViewController.swift
//  TheWalkingDead
//
//  Created by Sibrian on 9/2/16.
//  Copyright © 2016 Sibrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    //the height and width of the image view where the characters will be placed
    let WIDTH: CGFloat = UIScreen.mainScreen().fixedCoordinateSpace.bounds.width
    let HEIGHT: CGFloat = 397
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...5 {
            let img = UIImage(named: "\(i)")
            let imgView = UIImageView(image: img)
            
            //picture has been added to the view. 
            //Positioning and size need fixing
            scrollView.addSubview(imgView)
            imgView.contentMode = UIViewContentMode.ScaleAspectFit
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(i)), 185, WIDTH, HEIGHT)
        }
        
        //5 characters so the scroll view size is WIDTH * 5, and keep the same height
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height - 35)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

