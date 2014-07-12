//
//  AddDestViewController.swift
//  RunOrNot
//
//  Created by Neil Lobo on 7/11/14.
//  Copyright (c) 2014 Neil. All rights reserved.
//

import UIKit

class AddDestViewController: UIViewController {

    var destItem : DestItem?
    
    @IBOutlet var textField: UITextField
//    @IBOutlet var textField: UIView
    @IBOutlet var doneButton: UIBarButtonItem
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if sender as? NSObject != self.doneButton {
            return
        }
        
        if self.textField.text.utf16count > 0 {
            self.destItem = DestItem(name: self.textField.text)
        }
    }


}
