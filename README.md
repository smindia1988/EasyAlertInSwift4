# EasyAlertInSwift4

- Add single class Alert+Block.swift into your project

## How to use?


- **Show Simple Alert**

    @IBAction func showDefaultAlert(_ sender: Any) {
    
        Alert.showAlert(title:"Alert", message:"Default Alert")
    }
    
    
- **Show Alert With Action Block**

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
    
    
- **Show Alert With Action Block And Custom Title For Buttons**    

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


- **Show Alert With Action Block having more than two buttons**

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
    
       
- **Show Actionsheet**

    Note: You just need to pass boolean value as:  showAsActionSheet: true

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
