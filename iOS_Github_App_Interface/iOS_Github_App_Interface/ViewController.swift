//
//  ViewController.swift
//  iOS_Github_App_Interface
//
//  Created by Ahmet Erkut on 21.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var repoTableView: UITableView!
    @IBOutlet weak var repoCollectionView: UICollectionView!
    
    // Sections data
    private let sectionImages = ["repo", "star", "organization", "project"]
    private let sectionNames = ["Repositories", "Starred", "Organizations", "Projects"]
    private let sectionAmounts = ["30", "18", "0", "1"]
    
    // Repos data
    private let repoTitles = ["Basic-Calculator", "Films-App", "Persons-App", "Products-App"]
    private let repoSubtitles = ["Swift Basic Calculator (Summation, Subtraction, Multiply, Divide)", "Swift Films App (Collection View)", "Swift Persons Guide App (You can save, update, delete Peoples Name, Surname and Number) with SQLite Database", "Swift Product App (Table View)"]
    private let repoLanguges = ["Swift", "Swift", "Objective-C", "Swift"]
    private let repoLanguagesColors = [UIColor.red, UIColor.red, UIColor.systemIndigo, UIColor.red]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        repoTableView.delegate = self
        repoTableView.dataSource = self
        repoCollectionView.dataSource = self
        repoCollectionView.delegate = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = repoTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath) as! ProfileRepoSectionsTableViewCell
        
        cell.sectionImageView.image = UIImage(named: sectionImages[indexPath.row])
        cell.sectionName.text = sectionNames[indexPath.row]
        cell.sectionAmount.text = sectionAmounts[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return repoTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = repoCollectionView.dequeueReusableCell(withReuseIdentifier: "repoCell", for: indexPath) as! RepoCollectionViewCell
        
        cell.repoTitleLabel.text = repoTitles[indexPath.row]
        cell.repoSubtitleLabel.text = repoSubtitles[indexPath.row]
        cell.repoLanguageLabel.text = repoLanguges[indexPath.row]
        cell.repoLanguageColorImageView.tintColor = repoLanguagesColors[indexPath.row]
        
        cell.layer.backgroundColor = UIColor.systemGray5.cgColor
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    
}
