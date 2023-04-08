//
//  ViewController.swift
//  W 1 month 4
//
//  Created by Рауль on 8/4/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var Details: [Detail] = [Detail(title: "dsa", image: "ava", description: "adsf"), Detail(title: "", image: "", description: "")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTV()
        
    }
    
    func configureTV() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: TableViewCell.id, bundle: nil), forCellReuseIdentifier: TableViewCell.id)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Details.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.id, for: indexPath) as! TableViewCell
        let model = Details[indexPath.row]
        cell.display(item: model)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "w") as! SecondViewController
        secondVC.imageDetails = Details[indexPath.row].image
        secondVC.name = Details[indexPath.row].title
        secondVC.info = Details[indexPath.row].description
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
}
