//
//  AddItemViewController.swift
//  Shopping List
//
//  Created by Johnny Parham on 5/10/16.
//  Copyright © 2016 Johnny Parham. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate {
    func controller(controller: AddItemViewController, didSaveItemWithName name: String, andPrice price: Float)
}

class AddItemViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    
    var delegate: AddItemViewControllerDelegate?
    
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
        if let name = nameTextField.text, let priceAsString = priceTextField.text, let price = Float(priceAsString) {
            // Notify Delegate
            delegate?.controller(self, didSaveItemWithName: name, andPrice: price)
            
            // Dismiss View Controller
            dismissViewControllerAnimated(true, completion: nil)
    }
}
}