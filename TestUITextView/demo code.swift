//
//  demo code.swift
//  TestUITextView
//
//  Created by MD Faizan on 04/02/23.
//

import Foundation

/**
 
 viewDidLoad() {
     super.viewDidLoad()
     titleTextView.text = "Title"
     titleTextView.textColor = UIColor.lightGray
     
     descriptionTextView.text = "Note"
     descriptionTextView.textColor = UIColor.lightGray
 }

 //call before updating data
 // after text change it call and after click on enter hide keyboard
 func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
     print("==================> shouldChangeTextIn")
     
    
     //to manage placeholder of textView
     if titleTextView.textColor == UIColor.lightGray && titleTextView.text == "Title" {
         titleTextView.text = nil
         titleTextView.textColor = UIColor.black
        
     }
 
 
     
     //to manage placehoder of textVeiw
     if descriptionTextView.textColor == UIColor.lightGray && descriptionTextView.text == "Note"  {
         descriptionTextView.text = nil
         descriptionTextView.textColor = UIColor.black
     }
 //if enter is press hide keyboard
 if text == "\n" {
     descriptionTextView.becomeFirstResponder()
     return false
 }
     
 return true
}

 
 //it call when we start typing in textview
 func textViewDidBeginEditing(_ textView: UITextView) {
     print("===================> textViewDidBeginEditing")
     
     
     //        guard note == nil else {
     //            return
     //        }
     
     //        if titleTextView.textColor == UIColor.lightGray && titleTextView.text != nil {
     //            titleTextView.text = nil
     //            titleTextView.textColor = UIColor.black
     //        }
     ////        print("====================> nil \(titleTextView.text!)")
     //        if descriptionTextView.textColor == UIColor.lightGray && descriptionTextView.text != nil  {
     //            descriptionTextView.text = nil
     //            descriptionTextView.textColor = UIColor.black
     //        }
     
     //        textView.becomeFirstResponder()
     
 }
 
 
 
 */
