//
//  FormTableViewCell.swift
//  TableView
//
//  Created by shailesh on 23/09/18.
//  Copyright © 2018 Shailesh. All rights reserved.
//

import UIKit

class FormTableViewCell: UITableViewCell {

    @IBOutlet var titleTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
