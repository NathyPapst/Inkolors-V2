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
    var tertiaryLabel: UILabel = UILabel()
    var colorsLabels: [UILabel] = []
    var colorsNames: [String] = ["Red", "Yellow", "Blue", "Orange", "Purple", "Green", "Blue-Violet", "Blue-Green", "Red-Orange", "Red-Violet", "Yellow-Orange", "Yellow-Green"]
    
    init() {
        super.init(frame: .zero)

        // Botões
        self.buttonBack = setbuttonBack()
        self.addSubview(self.buttonBack)
        
        // Labels
        self.titleLabel = self.setTitleLabel(sizeFont: self.bounds.height * 0.035, align: NSTextAlignment.center, w: .bold)
        self.addSubview(self.titleLabel)
        
        self.primaryLabel = self.setPrimaryLabel(sizeFont: self.bounds.height * 2, align: NSTextAlignment.center, w: .semibold)
        self.addSubview(self.primaryLabel)
        
        self.secondaryLabel = self.setSecondaryLabel(sizeFont: self.bounds.height * 2, align: NSTextAlignment.center, w: .semibold)
        self.addSubview(self.secondaryLabel)
        
        self.tertiaryLabel = self.setTertiaryLabel(sizeFont: self.bounds.height * 2, align: NSTextAlignment.center, w: .semibold)
        self.addSubview(self.tertiaryLabel)
        
        for i in 0..<colorsNames.count {
            var tituloCor = setColorsLabel(sizeFont: self.bounds.height * 2, align: NSTextAlignment.center, w: .regular)
            tituloCor.text = colorsNames[i]
            colorsLabels.append(tituloCor)
            addSubview(colorsLabels[i])
        }
        
        
        
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
    
    public func setTertiaryLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel{
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Tertiary Colors"
        lbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return lbl
    }
    
    public func setColorsLabel(sizeFont:CGFloat, align:NSTextAlignment, w:UIFont.Weight) -> UILabel {
        let lbl:UILabel = UILabel()
        lbl.textAlignment = align
        lbl.font = .systemFont(ofSize: sizeFont, weight: w)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return lbl
    }


    
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
        self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.165).isActive = true
        
        // Primary Colors
        self.primaryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.primaryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -210).isActive = true
        self.primaryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.25).isActive = true
        
        // Secondary Colors
        self.secondaryLabel.leadingAnchor.constraint(equalTo: primaryLabel.trailingAnchor, constant: -10).isActive = true
        self.secondaryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.secondaryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.25).isActive = true
        
        // Tertiary Colors
        self.tertiaryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.tertiaryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -210).isActive = true
        self.tertiaryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.6).isActive = true
        
        self.colorsLabels[0].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[0].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -190).isActive = true
        self.colorsLabels[0].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.325).isActive = true
        
        self.colorsLabels[1].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[1].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -180).isActive = true
        self.colorsLabels[1].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.41).isActive = true
        
        self.colorsLabels[2].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[2].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -190).isActive = true
        self.colorsLabels[2].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.495).isActive = true
        
        self.colorsLabels[3].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 190).isActive = true
        self.colorsLabels[3].trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.colorsLabels[3].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.325).isActive = true
        
        self.colorsLabels[4].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[4].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 190).isActive = true
        self.colorsLabels[4].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.41).isActive = true
        
        self.colorsLabels[5].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[5].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 190).isActive = true
        self.colorsLabels[5].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.495).isActive = true
        
        self.colorsLabels[6].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[6].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -260).isActive = true
        self.colorsLabels[6].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.73).isActive = true
        
        self.colorsLabels[7].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[7].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        self.colorsLabels[7].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.73).isActive = true
        
        self.colorsLabels[8].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 230).isActive = true
        self.colorsLabels[8].trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.colorsLabels[8].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.73).isActive = true
        
        self.colorsLabels[9].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[9].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -260).isActive = true
        self.colorsLabels[9].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.875).isActive = true
        
        self.colorsLabels[10].leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.colorsLabels[10].trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        self.colorsLabels[10].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.875).isActive = true
        
        self.colorsLabels[11].leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 230).isActive = true
        self.colorsLabels[11].trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.colorsLabels[11].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.875).isActive = true

      }
}
