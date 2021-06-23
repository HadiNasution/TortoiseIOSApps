//
//  ViewController.swift
//  TortoiseApps
//
//  Created by Hadi Nasution on 21/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Connect mainTableView dengan 2 metode dibawah
        mainTableView.dataSource = self
        
        // styling table
        mainTableView.separatorStyle = .none
        mainTableView.showsVerticalScrollIndicator = false
        mainTableView.backgroundColor = UIColor.systemGray5
        //mainTableView.frame = mainTableView.frame.inset(by: UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0))
        
        // connect berkas XIB untuk MainTableViewCell dengan MainTableView
        mainTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // set jumlah cell/baris pada table view
        return tortoise.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // connect cell dengan xib yang ber identifier "MainCell"
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell",for: indexPath) as? MainTableViewCell {
            
            // set nilai/data kedalam view cell
            let tortoiseData = tortoise[indexPath.row]
            cell.titleItem.text = tortoiseData.title
            cell.descItem.text = tortoiseData.desc
            cell.imgItem.image = tortoiseData.image
            
            // styling cell
            cell.viewItem.layer.cornerRadius = 20
            cell.backgroundColor = UIColor.systemGray5
            
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
}

