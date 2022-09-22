//
//  CommitCell.swift
//  CommitMonitor
//
//  Created by Muhammad Mudassar Yasin on 22/09/2022.
//

import UIKit

class CommitCell: UITableViewCell {
 // MARK: -
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblRepoName: UILabel!
    @IBOutlet weak var lblCommit_1: UILabel!
    @IBOutlet weak var lblCommit_2: UILabel!
    @IBOutlet weak var lblCommit_3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .lightGray.withAlphaComponent(0.6)
        self.layer.borderWidth = 10
        self.layer.borderColor = UIColor.systemBackground.cgColor
        self.imgAvatar.backgroundColor = .gray
        self.imgAvatar.layer.cornerRadius = self.layer.frame.height/2
        self.imgAvatar.layer.borderWidth = 1
        self.imgAvatar.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
