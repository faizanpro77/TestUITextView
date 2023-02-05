//
//  ViewController.swift
//  TestUITextView
//
//  Created by MD Faizan on 04/02/23.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var textVeiwSecond: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.delegate = self
    }
    
}

/**
 
 class ViewController: UIViewController,UITextViewDelegate {

     @IBOutlet weak var textView: UITextView!
     
     @IBOutlet weak var textVeiwSecond: UITextView!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         textView.delegate = self
         
         textView.text = "Placeholder"
         textView.textColor = UIColor.lightGray
         
         textVeiwSecond.text = "Placeholder"
         textVeiwSecond.textColor = UIColor.lightGray

         textVeiwSecond.becomeFirstResponder()

         textView.selectedTextRange = textView.textRange(from: textView.beginningOfDocument, to: textView.beginningOfDocument)
         
         textVeiwSecond.selectedTextRange = textView.textRange(from: textView.beginningOfDocument, to: textView.beginningOfDocument)
 //
     }
     
     func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
         
         print("================> shouldChangeTextInllll\(text)")

         // Combine the textView text and the replacement text to
         // create the updated text string
         let currentText:String = textView.text
         let updatedText = (currentText as NSString).replacingCharacters(in: range, with: text)

         // If updated text view will be empty, add the placeholder
         // and set the cursor to the beginning of the text view
         if updatedText.isEmpty {

             textView.text = "Placeholder"
             textView.textColor = UIColor.lightGray

             textView.selectedTextRange = textView.textRange(from: textView.beginningOfDocument, to: textView.beginningOfDocument)
         }

         // Else if the text view's placeholder is showing and the
         // length of the replacement string is greater than 0, set
         // the text color to black then set its text to the
         // replacement string
          else if textView.textColor == UIColor.lightGray && !text.isEmpty {
             textView.textColor = UIColor.black
             textView.text = text
         }

         // For every other case, the text should change with the usual
         // behavior...
         else {
             return true
         }
         
         //=====================
         
         let currentText1:String = textVeiwSecond.text
         let updatedText1 = (currentText1 as NSString).replacingCharacters(in: range, with: text)

         
         if updatedText1.isEmpty {

             textVeiwSecond.text = "Placeholder"
             textVeiwSecond.textColor = UIColor.lightGray

             textVeiwSecond.selectedTextRange = textVeiwSecond.textRange(from: textVeiwSecond.beginningOfDocument, to: textVeiwSecond.beginningOfDocument)
         }

         
          else if textVeiwSecond.textColor == UIColor.lightGray && !text.isEmpty {
              textVeiwSecond.textColor = UIColor.black
              textVeiwSecond.text = text
         }

         else {
             return true
         }

         return false
     }
     //==============================
     
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         textView.endEditing(true)
         textVeiwSecond.endEditing(true)
     }
     
     func textViewDidChangeSelection(_ textView: UITextView) {
         if self.view.window != nil {
             if textView.textColor == UIColor.lightGray {
                 textView.selectedTextRange = textView.textRange(from: textView.beginningOfDocument, to: textView.beginningOfDocument)
             }
             
             if textVeiwSecond.textColor == UIColor.lightGray {
                 textVeiwSecond.selectedTextRange = textVeiwSecond.textRange(from: textVeiwSecond.beginningOfDocument, to: textVeiwSecond.beginningOfDocument)
             }
         }
     }


 }
 
 
 */
