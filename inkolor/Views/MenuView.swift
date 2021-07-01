//
//  MenuView.swift
//  inkolor
//
//  Created by Gui Reis on 16/06/21.
//

import UIKit

class MenuView: UIView {
    var labels:[UILabel] = []
    var buttons:[UIButton] = []
    var medals:[UIImageView] = []
    var completedLevels:Int = 0
    var titleLabel: UILabel = UILabel()
    var buttonBack: UIButton = UIButton()
    
    init() {
        super.init(frame: .zero)
        
        self.buttonBack = setbuttonBack()
        self.addSubview(self.buttonBack)
        
        // Criando as labels (letras)
        for i in 0..<8 {
            self.labels.append(self.newLabel())
            self.addSubview(self.labels[i])
        }
        
        // Criando os botões e as medalhas
        for i in 0..<3 {
            self.buttons.append(self.newButton())
            self.addSubview(self.buttons[i])
            
            self.medals.append(self.newImgView())
            self.addSubview(self.medals[i])
        }
        
        self.titleLabel = setTitleLabel(sizeFont: 0, align: .center, w: .semibold)
        self.addSubview(self.titleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func getLabels() -> [UILabel] {return self.labels}
    
    public func getButtons() -> [UIButton] {return self.buttons}
    
    public func getMedals() -> [UIImageView] {return self.medals}
    
    public func setCompletedLevels(level:Int) -> Void {self.completedLevels = level}
    
    
    private func newButton() -> UIButton {
        let bt:UIButton = UIButton(type: .custom)
        bt.setTitleColor(#colorLiteral(red: 1, green: 0.9845215678, blue: 0.9319496751, alpha: 1), for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: self.bounds.height * 0.14)
        bt.backgroundColor = #colorLiteral(red: 0.8631923199, green: 0.8599755168, blue: 0.8393679261, alpha: 1)
        bt.layer.cornerRadius = self.bounds.height * 0.045
        bt.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .highlighted)
        bt.isEnabled = false
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }
    
    private func newLabel() -> UILabel {
        let lbl:UILabel = UILabel()
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: self.bounds.height * 0.065, weight: .bold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    private func newImgView() -> UIImageView {
        let imgView:UIImageView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }
    
    public func setTitleLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel{
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Choose the stage you want to play!"
        lbl.textColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        return lbl
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
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        /* MARK: Constraints - Buttons */
        
    
        let sizeBut: CGFloat = 0.19
        
        // Button 1
        self.buttons[0].centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.buttons[0].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.25).isActive = true
        self.buttons[0].heightAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        self.buttons[0].widthAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true

        
        // Button 2
        self.buttons[1].centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.buttons[1].topAnchor.constraint(equalTo: self.buttons[0].bottomAnchor, constant: 30).isActive = true
        self.buttons[1].heightAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        self.buttons[1].widthAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true

        
        // Button 3
        self.buttons[2].centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.buttons[2].topAnchor.constraint(equalTo: self.buttons[1].bottomAnchor, constant: 30).isActive = true
        self.buttons[2].heightAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        self.buttons[2].widthAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        
        
        /* MARK: Constraints - Medals */
        
        
        // Bronze
        if (self.completedLevels > 0){
            self.medals[0].centerYAnchor.constraint(equalTo: self.buttons[0].bottomAnchor).isActive = true
            self.medals[0].centerXAnchor.constraint(equalTo: self.buttons[0].trailingAnchor, constant: -10).isActive = true
            self.medals[0].heightAnchor.constraint(equalToConstant: 62).isActive = true
            self.medals[0].widthAnchor.constraint(equalToConstant: 60).isActive = true
        }

        // Prata
        if (completedLevels > 1){
            self.medals[1].centerYAnchor.constraint(equalTo: self.buttons[1].bottomAnchor).isActive = true
            self.medals[1].centerXAnchor.constraint(equalTo: self.buttons[1].trailingAnchor, constant: -10).isActive = true
            self.medals[1].heightAnchor.constraint(equalToConstant: 62).isActive = true
            self.medals[1].widthAnchor.constraint(equalToConstant: 60).isActive = true
        }


        // Ouro
        if (completedLevels > 2){
            self.medals[2].centerYAnchor.constraint(equalTo: self.buttons[2].bottomAnchor).isActive = true
            self.medals[2].centerXAnchor.constraint(equalTo: self.buttons[2].trailingAnchor, constant: -10).isActive = true
            self.medals[2].heightAnchor.constraint(equalToConstant: 62).isActive = true
            self.medals[2].widthAnchor.constraint(equalToConstant: 60).isActive = true
            
            
        }
        
        self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.155).isActive = true
        
        buttonBack.layer.cornerRadius = self.bounds.height * 0.19 * 0.22
        self.buttonBack.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.070).isActive = true
        self.buttonBack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        self.buttonBack.heightAnchor.constraint(equalToConstant: self.bounds.height * 0.08).isActive = true
        self.buttonBack.widthAnchor.constraint(equalToConstant: self.bounds.height * 0.08).isActive = true
    }
}
