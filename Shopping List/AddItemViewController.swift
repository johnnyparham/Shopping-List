//
//  AddItemViewController.swift
//  Shopping List
//
//  Created by Johnny Parham on 5/10/16.
//  Copyright © 2016 Johnny Parham. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    
    // MARK: -
    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK: -
    // MARK: Actions
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func save(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
