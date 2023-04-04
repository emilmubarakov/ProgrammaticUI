//
//  CWButton.swift
//  ProgrammaticUI
//
//  Created by e.mubarakov on 01.04.2023.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, symbol: String) {
            super.init(frame: .zero)
            
            configuration?.title = title
            configuration = .tinted()
        configuration?.cornerStyle = .medium
            configuration?.baseForegroundColor = color
            configuration?.baseBackgroundColor = color
            configuration?.image = UIImage(systemName: symbol)
            configuration?.imagePlacement = .trailing
            configuration?.imagePadding = 5
            setTitle(title, for: .normal)
            translatesAutoresizingMaskIntoConstraints = false
        }
}
