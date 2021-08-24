//
//  PostListTableViewCell.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import UIKit

class PostListTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    var assignData: Post? {
        didSet{
            titleLabel.text = assignData?.title
            bodyLabel.text = assignData?.body
        }
    }
}
