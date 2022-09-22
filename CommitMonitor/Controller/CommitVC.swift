//
//  ViewController.swift
//  CommitMonitor
//
//  Created by Muhammad Mudassar Yasin on 22/09/2022.
//

import UIKit

class CommitVC: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    // MARK: - Variables

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Commit Monitor"
        tableView.addShadow(color: .darkGray, offSet: CGSize(width: 3, height: 5))
        
    }
}
    // MARK: - UITableView Protocols

extension CommitVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommitCell", for: indexPath) as! CommitCell
        cell.imgAvatar.image = UIImage (named: "github")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailCommitVC") as! DetailCommitVC
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
        
    }

