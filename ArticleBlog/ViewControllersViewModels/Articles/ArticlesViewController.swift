//
//  ArticlesViewController.swift
//  ArticleBlog
//
//  Created by Umer Farooq on 3/1/21.
//  Copyright © 2021 Umer Farooq. All rights reserved.
//

import UIKit

class ArticlesViewController: UIViewController {
    
    //MARK:- IBoutlets & Variables
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: ArticleViewModel! {
        didSet {
            viewModel.delegate = self
        }
    }
    
    //MARK:- UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllerUI()
    }
    
    //MARK:- UIViewController Helper Methods
    
    func setupViewControllerUI() {
        self.setNavigationBarStyle()
        self.title = "NY Times Most Popular "
        tableView.register(UINib(nibName: "ArticleTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "ArticleTableViewCell")
        viewModel = ArticleViewModel()
        viewModel.loadSections()
        
    }
}

extension ArticlesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.dataSource?.results?.count ?? 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as! ArticleTableViewCell
        
        if let record = viewModel?.dataSource?.results?[indexPath.row]{
            cell.setValues(imageURL: record.uri ?? "", headline: record.title ?? "", byLabel: record.byLine ?? "")
        } else {
           cell.setValues(imageURL: "", headline: "", byLabel: "")
        }
        return cell
    }
    
    //MARK:- UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ArticlesViewController: ArticleViewModelDelegate {
    
    func showData() {
        tableView.reloadData()
    }
    
    func showError(message: String) {
        Alert.showAlert(self, message: message, defaultButtonTitle: "Retry", cancelable: true, completionHandler: { (alertAction) in
            if alertAction == Alert.AlertAction.primary {
                self.viewModel.loadSections()
            }
        })

    }
}

