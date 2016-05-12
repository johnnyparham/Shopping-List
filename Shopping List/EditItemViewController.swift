//
//  EditItemViewController.swift
//  Shopping List
//
//  Created by Johnny Parham on 5/11/16.
//  Copyright © 2016 Johnny Parham. All rights reserved.
//

import UIKit

protocol EditItemViewControllerDelegate {
    func controller(controller: EditItemViewController, didUpdateItem item: Item)
}

class EditItemViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    
    var item: Item!
    
    var delegate: EditItemViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create Save Button
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: #selector(EditItemViewController.save(_:)))
        
        // Populate Text Fields
        nameTextField.text = item.name
        priceTextField.text = "\(item.price)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: -
    // MARK: Actions
    func save(sender: UIBarButtonItem) {
        if let name = nameTextField.text, let priceAsString = priceTextField.text, let price = Float(priceAsString) {
            // Update Item
            item.name = name
            item.price = price
            
            // Notify Delegate
            delegate?.controller(self, didUpdateItem: item)
            
            // Pop View Controller
            navigationController?.popViewControllerAnimated(true)
        }
    }
    

}
