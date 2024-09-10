//
//  OTDynamicButton.swift
//  Saturdays
//
//  Created by Supertal on 01/04/22.
//  Copyright © 2022 Saturdays Inc. All rights reserved.
//

import UIKit

class OTDynamicTextField: BaseView {
    
    @IBOutlet private weak var vwBase: UIView!
    

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet private weak var textFieldBackgroundView: UIView!
    @IBOutlet weak var warningLabel: UILabel!
    
    var viewModel: OTDynamicTextFieldViewModel?
    
    override func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        loadUI()
    }
    
    private func loadUI() {}
    
    func configureView(viewModel: OTDynamicTextFieldViewModel?) {
        self.viewModel = viewModel
        if let viewModel = viewModel {
            
            
            if let validColor = viewModel.textFieldPlaceholderColor, let validFont = viewModel.textFieldPlaceholderFont {
                textField.attributedPlaceholder = NSAttributedString(
                    string: viewModel.textFieldPlaceholder,
                    attributes: [NSAttributedString.Key.foregroundColor: validColor,
                                 NSAttributedString.Key.font: validFont]
                )
            } else {
                textField.placeholder = viewModel.textFieldPlaceholder
            }
            
            codeTextField.setRightViewIcon(icon: UIImage(named: "Chevron_Down")! )
            textField.text = viewModel.textFieldText
            textField.font = viewModel.textFieldTextFont
            textField.textColor = viewModel.textFieldTextColor
            textField.isSecureTextEntry = viewModel.textFieldIsSecureEntry
            textField.keyboardType = .numberPad
            textFieldBackgroundView.backgroundColor = viewModel.textFieldBackgroundColor
            textFieldBackgroundView.addBorder(color: viewModel.textFieldBorderColor, width: 0.5, radius: viewModel.textFieldCornerRadius)
            
            
            codeTextField.text = viewModel.codeTitle
            codeTextField.font = viewModel.codeTextFont
            codeTextField.textColor = viewModel.codeTitleColor
            
            warningLabel.text = viewModel.warningTitle
            warningLabel.font = viewModel.warningTitleFont
            warningLabel.textColor = viewModel.warningTitleColor
            warningLabel.text = viewModel.isWarningTitleHidden ? "" : warningLabel.text
           
            vwBase.backgroundColor = viewModel.backgroundColor
            vwBase.isHidden = viewModel.isHidden
        }
    }
    
}

extension OTDynamicTextField {
    
    private func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: OTDynamicTextField.nameId, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}

struct OTDynamicTextFieldViewModel{
    let textFieldPlaceholder: String
    let textFieldPlaceholderFont: UIFont?
    let textFieldPlaceholderColor: UIColor?
    
    let textFieldText: String
    let textFieldTextFont: UIFont?
    let textFieldTextColor: UIColor?
    let textFieldIsSecureEntry: Bool
    let textFieldBackgroundColor: UIColor?
    let textFieldBorderColor: UIColor?
    let textFieldCornerRadius: CGFloat
    
    var codeTitle : String
    var codeTextFont: UIFont?
    var codeTitleColor : UIColor?
    
    var warningTitle: String
    let warningTitleFont: UIFont?
    var warningTitleColor: UIColor?
    var isWarningTitleHidden: Bool
    
    let backgroundColor: UIColor?
    let isHidden: Bool
}

