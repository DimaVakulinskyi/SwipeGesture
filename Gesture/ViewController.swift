//
//  ViewController.swift
//  Gesture
//
//  Created by Дмитро Вакулінський on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    var imagesArray:[UIImage] = [
        UIImage(named: "gordon")!,
        UIImage(named: "grogu")!,
        UIImage(named: "helm")!,
        UIImage(named: "portal")!,
        UIImage(named: "thrall")!]
    
    var imageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "gordon")
        topView.isUserInteractionEnabled=true
            
            let left = UISwipeGestureRecognizer(target: self, action: #selector(SwipeLeft))
            left.direction = .left
            topView.addGestureRecognizer(left)

            let right = UISwipeGestureRecognizer(target: self, action: #selector(SwipeRight))
            right.direction = .right
            topView.addGestureRecognizer(right)
    }
 
    @objc func SwipeLeft(){
         if imageIndex < imagesArray.count-1{
             imageIndex += 1
             imageView.image = imagesArray[imageIndex]
         }
       }
       @objc func SwipeRight(){
         if imageIndex != 0{
             imageIndex -= 1
             imageView.image = imagesArray[imageIndex]
             }
}
}
