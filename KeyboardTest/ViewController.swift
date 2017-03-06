//
//  ViewController.swift
//  KeyboardTest
//
//  Created by Andrews, Christopher P. on 3/6/17.
//  Copyright © 2017 Andrews, Christopher P. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  // note that we made our view controller a UITextFieldDelegate, which basically means it implements a collection of functions our text field might call
  
  
  @IBOutlet weak var textOutput: UILabel!
  @IBOutlet weak var textInput: UITextField!
  
  
  // I added a Tap Gesture Recognizer to the view
  // this action is fired by tapping on the view 
  // the effect is that when the keyboard is showing, tapping outside of the keyboard makes it go away
  @IBAction func tapToDismissKeyboard(_ sender: UITapGestureRecognizer) {
    textInput.resignFirstResponder() //hide the keyboard

  }
  
  @IBAction func textChanged(_ sender: UITextField) {
    textOutput.text = textInput.text
  }
  
  // This is a delegate method
  // The text field will call this when the done/return/etc button is typed
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder() //hide the keyboard
    return true
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // make sure that this view controller is a delegate for the text field
    textInput.delegate = self
  }

 

}

