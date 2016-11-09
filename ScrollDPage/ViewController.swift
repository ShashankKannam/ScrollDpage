//
//  ViewController.swift
//  ScrollDPage
//
//  Created by Shashank Kannam on 9/25/16.
//  Copyright © 2016 Shashank Kannam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(_ animated: Bool) {
       //var distanceContent:CGFloat=0.0
        var distance:CGFloat = 0.0
        scrollView.backgroundColor=UIColor.purple.withAlphaComponent(0.7)
        for x in 0...2
            
        {
            let image = UIImage(named: "icon\(x).png")
            
            images.append(UIImageView(image: image))
            
            scrollView.addSubview(images[x])
            
            
            distance = scrollView.frame.size.width/2 + scrollView.frame.size.width * CGFloat(x)
            
            //distanceContent = distance
            
            images[x].frame = CGRect(x: distance-75, y: scrollView.frame.size.height/2-75, width: 150, height: 150)
        }
        
        scrollView.contentSize=CGSize(width:distance+scrollView.frame.size.width/2, height: scrollView.frame.size.height)

    }
    
    
}

