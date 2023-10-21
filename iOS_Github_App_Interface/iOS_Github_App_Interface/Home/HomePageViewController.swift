//
//  HomePageViewController.swift
//  iOS_Github_App_Interface
//
//  Created by Ahmet Erkut on 21.10.2023.
//

import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var myWorkTableView: UITableView!
    
    private var myWorkNames = ["Issues", "Pull Requests", "Discussions", "Projects", "Repositories", "Organizations", "Starred"]
    private var myWorkImages = ["issue", "pr", "discussion", "project", "repo", "organization", "star"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        myWorkTableView.dataSource = self
        myWorkTableView.delegate = self
    }
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myWorkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myWorkTableView.dequeueReusableCell(withIdentifier: "myWorkCell", for: indexPath) as! MyWorkTableViewCell
        
        cell.myWorkNameLabel.text = myWorkNames[indexPath.row]
        cell.myWorkImageView.image = UIImage(named: myWorkImages[indexPath.row])
        
        cell.layer.backgroundColor = UIColor.systemGray6.cgColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
        
    }
    
    
}
