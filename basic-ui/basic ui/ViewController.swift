//
//  ViewController.swift
//  basic ui
//
//  Created by 최철동 on 2016. 7. 7..
//  Copyright © 2016년 Burke Choi. All rights reserved.
//

//https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/index.html#//apple_ref/doc/uid/TP40015214-CH2-SW1

// photo area 에 tag gesture 를 동작 시키기 위해서는 반드시 
// Attribute inspector 에서 User Interaction enabled 를 활성화 시켜야
// 한다.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var edit: UITextField!
    @IBOutlet weak var photo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // handle the text field's user input through delegate callbacks.
        edit.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // hide keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        edit.text = textField.text
    }

    @IBAction func button(sender: UIButton) {
//        label.text = "HELLO WORLD"
        NSLog("clicked test button")
       
        let text = edit.text
        label.text = text
    }
    
    // MARK: Actions
    @IBAction func selectPhoto(sender: UITapGestureRecognizer) {
        NSLog("select photo")
        
        // hide the keyboard.
        edit.resignFirstResponder()
        
        // ui image picker controller is a view controller 
        // that lets a user pick media from their photo libarary.
        let imgController = UIImagePickerController()
        
        // only allow photos to be picked, not taken.
        imgController.sourceType = .PhotoLibrary
     
        // make sure view controller is notified when the user
        // picks an image
        imgController.delegate = self
        
        presentViewController(imgController, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info ditionary contains multiple representations of the image,
        // and this uses the original.
        let selectedImg = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // set photo image view to display the selected image
        photo.image = selectedImg;
        
        // dismiss the picker
        dismissViewControllerAnimated(true, completion: nil)
    }
}

