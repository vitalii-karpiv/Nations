//
//  FlagsTableViewController.swift
//  Nations
//
//  Created by newbie on 02.08.2022.
//

import UIKit

class FlagsTableViewController: UITableViewController {

    private let flags = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "spain", "uk", "us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Nations"
        
        tableView.register(UINib(nibName: FlagTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: FlagTableViewCell.identifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FlagTableViewCell.identifier, for: indexPath) as? FlagTableViewCell else { return UITableViewCell() }
        
        cell.configure(with: flags[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.country = flags[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
