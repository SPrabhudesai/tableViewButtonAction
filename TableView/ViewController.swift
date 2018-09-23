//
//  ViewController.swift
//  TableView
//
//  Created by shailesh on 23/09/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var formTableView: UITableView!
    @IBOutlet var saveButton: UIButton!
    
    private var form = Form()
    private var formDictionary = [String: Any]()
    
    private var placeholderArray = ["FirstName", "LastName"]
    
    enum CellTag: Int {
        case firstName = 0
        case lastname
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
    }
    


    @IBAction func onClickOfSaveButton(_ sender: UIButton) {
        

        
        switch false {
        case form.firstName != nil:
            print("firstName")

        case form.lastName != nil:
            print("last")

        default:
            print("default")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeholderArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FormTableViewCell") as? FormTableViewCell
        cell?.titleTextField.placeholder = placeholderArray[indexPath.row]
        cell?.titleTextField.tag = indexPath.row
        cell?.titleTextField.delegate = self
        return cell!
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
       
        switch textField.tag {
        case CellTag.firstName.rawValue:
            form.firstName = textField.text

        case CellTag.lastname.rawValue:
            form.lastName = textField.text

        default:
            break
        }
    }
}

