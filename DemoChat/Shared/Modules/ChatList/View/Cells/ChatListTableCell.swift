//
//  ChatListTableCell.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ChatListTableCellDelegate: AnyObject {}

class ChatListTableCell: BaseTableViewCell {
    
    static let height: CGFloat = 50
    @IBOutlet weak var baseView: UIView!
    weak var delegate: ChatListTableCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell() {
        setupUI()
    }
}

//MARK: Cell Configuration
extension ChatListTableCell {
    
    func setupUI(){}
    
}
