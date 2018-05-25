//
//  ViewController.swift
//  AlertDemo
//
//  Created by bviadmin on 25/05/18.
//  Copyright © 2018 BV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDefaultAlert(_ sender: Any) {
        Alert.showAlert(title:"Alert", message:"Default Alert")
    }
    
    @IBAction func showDefaultAlertWithActionBlock(_ sender: Any) {
        Alert.showAlertWithHandler(title:"Alert", message:"Alert with ActionBlock") { (index) in
            switch(index){
            case AlertAction.Ok:
                print("Ok button pressed")
            case AlertAction.Cancel:
                print("Cancel button pressed")
            }
        }
    }
    
    @IBAction func showAlertWithCustomTitle(_ sender: Any) {
        
        Alert.showAlertWithHandler(title: "Alert", message: "Alert with custom button text and ActionBlock", okButtonTitle: "YES", cancelButtionTitle: "NO") { (index) in
            switch(index){
            case AlertAction.Ok:
                print("YES button pressed")
            case AlertAction.Cancel:
                print("NO button pressed")
            }
        }                
    }
    
    @IBAction func showAlertWithMoreButtons(_ sender: Any) {
        let buttons = ["First Button", "Second Button", "Third Button", "Forth Button"]
                        
        Alert.showAlertWithHandler(title: "Alert", message: "Alert with four buttons", buttonsTitles: buttons, showAsActionSheet: false) { (index) in
            switch(index){
            case 0:
                print("First button pressed")
            case 1:
                print("Second button pressed")
            case 2:
            print("Third button pressed")
            case 3:
                print("Forth button pressed")
            default:
                print("Nothing")
            }
        }
    }
    
    @IBAction func showAlertAsActionSheet(_ sender: Any) {
        let buttons = ["First Button", "Second Button", "Third Button", "Cancel"]
        
        Alert.showAlertWithHandler(title: "Alert", message: "Actionsheet with four buttons", buttonsTitles: buttons, showAsActionSheet: true) { (index) in
            switch(index){
            case 0:
                print("First button pressed")
            case 1:
                print("Second button pressed")
            case 2:
                print("Third button pressed")
            case 3:
                print("Cancel button pressed")
            default:
                print("Nothing")
            }
        }
    }
}

