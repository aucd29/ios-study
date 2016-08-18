//
//  ViewController.swift
//  day_02_04_scrollview_swift
//
//  Created by 최철동 on 2016. 8. 18..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

import UIKit

// option + shift 를 선택 하면 
// 창을 나눌 수 있음

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var mSv: ScaleView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cx = self.view.bounds.size.width - 10;
        let cy = self.view.bounds.size.height;
        
        let frame = CGRectMake(5, cy-cx-5, cx, cx);
        
        mSv = ScaleView(frame: frame)
        mSv?.backgroundColor = UIColor.orangeColor()

        self.view.addSubview(mSv!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("============ touch")
        
        let pc = UIImagePickerController();
        pc.delegate = self;
        
        self.presentViewController(pc, animated:true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print(info)
        
        // 캐스팅은 'as !Type' 식으로 진행 
        mSv?.setImage(info["UIImagePickerControllerOriginalImage"] as! UIImage)
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        picker.dismissViewControllerAnimated(true, completion: nil)
    }

}

