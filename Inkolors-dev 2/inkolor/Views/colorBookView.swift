//
//  colorBookView.swift
//  inkolor
//
//  Created by Felipe Leite on 29/06/21.
//

import UIKit

class colorBookView: UIView {
    
    var buttonBack: UIButton = UIButton(type: .custom)
    var titleLabel: UILabel = UILabel()
    var bookzinho = UIImage (systemName: "text.book.closed.fill")
    var primaryLabel: UILabel = UILabel()
    var secondaryLabel: UILabel = UILabel()
    let scrollView: UIScrollView = UIScrollView(frame: .zero)
    
    init() {
        super.init(frame: .zero)
        
        //Scroll
        self.addSubview(self.scrollView)
        
        // Botões
        self.buttonBack = setbuttonBack()
        scrollView.addSubview(self.buttonBack)
        
        // Labels
        self.titleLabel = self.setTitleLabel(sizeFont: self.bounds.height * 0.035, align: NSTextAlignment.center, w: .bold)
        scrollView.addSubview(self.titleLabel)
        
        self.primaryLabel = self.setPrimaryLabel(sizeFont: self.bounds.height * 2, align: NSTextAlignment.center, w: .semibold)
        scrollView.addSubview(self.primaryLabel)
        
        self.secondaryLabel = self.setSecondaryLabel(sizeFont: self.bounds.height * 2, align: NSTextAlignment.center, w: .semibold)
        scrollView.addSubview(self.secondaryLabel)
        
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
        lbl.text = "Color Book"
        lbl.textColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        
        return lbl
    }
    
    public func setPrimaryLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel{
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Primary Colors"
        lbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return lbl
    }
    
    public func setSecondaryLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel{
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Secondary Colors"
        lbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return lbl
    }


    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let sizeBut: CGFloat = 0.08
        self.scrollView.topAnchor.constraint(equalTo: self.topAnchor)
        self.scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        self.scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        self.scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
    
      // Back button (view)
      buttonBack.layer.cornerRadius = self.bounds.height * 0.19 * 0.22
      self.buttonBack.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.070).isActive = true
      self.buttonBack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
      self.buttonBack.heightAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
      self.buttonBack.widthAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        
      // Title
      self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70).isActive = true
      self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
      self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.19).isActive = true
        
        // Primary Colors
        self.primaryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        self.primaryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -160).isActive = true
        self.primaryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.3).isActive = true
        
        // Secondary Colors
        self.secondaryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        self.secondaryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -110).isActive = true
        self.secondaryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.67).isActive = true

      }
}
