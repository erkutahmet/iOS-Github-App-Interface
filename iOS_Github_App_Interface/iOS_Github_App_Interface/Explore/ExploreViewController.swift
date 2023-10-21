//
//  ExploreViewController.swift
//  iOS_Github_App_Interface
//
//  Created by Ahmet Erkut on 22.10.2023.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var discoverTableView: UITableView!
    
    private let discoverImages = ["trendRepo", "awsomeList"]
    private let discoverName = ["Trending Repositories", "Awsome Lists"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        discoverTableView.delegate = self
        discoverTableView.dataSource = self
    }
}

extension ExploreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return discoverName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = discoverTableView.dequeueReusableCell(withIdentifier: "discoverCell", for: indexPath) as! DiscoverTableViewCell
        
        cell.discoverLabel.text = discoverName[indexPath.row]
        cell.discoverImageView.image = UIImage(named: discoverImages[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
}
