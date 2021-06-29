//
//  howToView.swift
//  inkolor
//
//  Created by Felipe Leite on 29/06/21.
//

import UIKit

class howToView: UIView {
    var buttonBack: UIButton = UIButton()
    var titleLabel: UILabel = UILabel()
    var infoLabel: UILabel = UILabel()
    
    init() {
        super.init(frame: .zero)
        
        // Botões
        self.buttonBack = setbuttonBack()
        self.addSubview(self.buttonBack)
        
        
        // Labels
        self.titleLabel = self.setTitleLabel(sizeFont: self.bounds.height * 0.035, align: NSTextAlignment.center, w: .bold)
        self.addSubview(self.titleLabel)
        
        self.infoLabel = self.setLabel(sizeFont: self.bounds.height * 0.03, align: NSTextAlignment.left, w: .regular)
        self.addSubview(self.infoLabel)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setbuttonBack() -> UIButton {
        let bt: UIButton = UIButton(type: .custom)
        bt.setTitleColor(#colorLiteral(red: 1, green: 0.9844267964, blue: 0.9319559932, alpha: 1), for: .normal)
        bt.backgroundColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        bt.setImage(UIImage(named: "Back"), for: .normal)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.clipsToBounds = true
        
        return bt
    }
    
    public func setTitleLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel{
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "How to Play"
        lbl.textColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        return lbl
    }
    
    public func setLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel{
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "In this game, we have three types of medals you can win. One bronze, one silver and one gold. Each one you receive according to your performance in the stage. The better your performance the better your chance of winning the gold medal."
        lbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return lbl
    }
    
    
    public func getTitleLabel() -> UILabel {return self.titleLabel}
    
    public func getInfoLabel() -> UILabel {return self.infoLabel}
    

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let sizeBut: CGFloat = 0.08
        
        // Back button (view)
        buttonBack.layer.cornerRadius = self.bounds.height * 0.19 * 0.22
        self.buttonBack.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.070).isActive = true
        self.buttonBack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        self.buttonBack.heightAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        self.buttonBack.widthAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        
        
        // Title
        self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.20).isActive = true

        
        // Info text
        self.infoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 45).isActive = true
        self.infoLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -45).isActive = true
        self.infoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.35).isActive = true
    }
}
