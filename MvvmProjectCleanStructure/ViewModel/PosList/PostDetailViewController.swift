//
//  PostDetailViewController.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import UIKit

class PostDetailViewController: UIViewController {

    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    var postData : Post?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titlelabel.text = postData?.title
        self.bodyLabel.text = postData?.body
        // Do any additional setup after loading the view.
    }

}
