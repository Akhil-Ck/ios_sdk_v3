//
//  MainViewController.swift
//  MobileConnectSDK
//
//  Created by Mircea Grecu on 02/09/2016.
//  Copyright © 2016 GSMA. All rights reserved.
//

import UIKit
//import MobileConnectSDK
class MainWithoutDiscoveryViewController : UIViewController {
    @IBOutlet weak var tableView : UITableView!
    
    let availablSections = ["SignUpWithoutMetadata", "SignUpWithMetadata"]
    
    let availableSegue = ["showAuthe", "showIdentitySignUp"]
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        super.viewWillAppear(animated)
    }
    
}

extension MainWithoutDiscoveryViewController : UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return availablSections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = availablSections[indexPath.row]
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: availableSegue[indexPath.row], sender: nil)
    }
    
}
