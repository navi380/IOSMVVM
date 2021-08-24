//
//  ViewController.swift
//  MvvmProjectCleanStructure
//
//  Created by Naveed Tahir on 10/08/2021.
//

import UIKit

class PostListViewController: UIViewController {
    @IBOutlet weak var PostListTableView: UITableView!
    
    var postData = [Post]()
    var  postList = ProtocolInjection.provide.postApiProtocol()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayAnimatedActivityIndicatorView()
        postList.getPostListData { posts in
            self.postData = posts
            DispatchQueue.main.async {
                self.hideAnimatedActivityIndicatorView()
                self.PostListTableView.reloadData()
            }
        }
        // Do any additional setup after loading the view.
        
    }
}

extension PostListViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostListCell", for: indexPath) as! PostListTableViewCell
        cell.assignData = postData[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc =  storyboard?.instantiateViewController(identifier: "PostDetailViewController") as! PostDetailViewController
        detailVc.postData = postData[indexPath.row]
        self.navigationController?.pushViewController(detailVc, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
}
