//
//  PlayView.swift
//  inkolor
//
//  Created by Felipe Leite on 25/06/21.
//

import UIKit

class PlayView: UIView {
    
    var playButton: UIButton = UIButton(type:.custom)
    var colorBook: UIButton = UIButton(type:.custom)
    var howToPlay: UIButton = UIButton(type:.custom)
    var labels: [UILabel] = []
    
    init() {
        super.init(frame: .zero)
        playButton = setPlay()
        colorBook = setColorBook()
        howToPlay = setHowTo()
        self.addSubview(self.playButton)
        self.addSubview(self.colorBook)
        self.addSubview(self.howToPlay)
        
        for i in 0..<8 {
            self.labels.append(self.newLabel())
            self.addSubview(self.labels[i])
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setPlay() -> UIButton {
        let bt: UIButton = UIButton(type: .custom)
        
        bt.setTitleColor(#colorLiteral(red: 1, green: 0.9844267964, blue: 0.9319559932, alpha: 1), for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: self.bounds.height * 1)
        bt.backgroundColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        bt.imageEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 10)
        bt.setImage(UIImage(named: "Play"), for: .normal)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.clipsToBounds = true
        
        return bt
    }
    
    private func setColorBook() -> UIButton {
        let bt: UIButton = UIButton(type: .custom)
        
        bt.setTitleColor(#colorLiteral(red: 1, green: 0.9844267964, blue: 0.9319559932, alpha: 1), for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        bt.backgroundColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        bt.layer.cornerRadius = 30
        bt.setTitle("Color Book", for: .normal)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.clipsToBounds = true
        
        return bt
    }
    
    private func setHowTo() -> UIButton {
        let bt: UIButton = UIButton(type: .custom)
        
        bt.setTitleColor(#colorLiteral(red: 1, green: 0.9844267964, blue: 0.9319559932, alpha: 1), for: .normal)
        bt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        bt.backgroundColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        bt.layer.cornerRadius = 30
        bt.setTitle("How to Play", for: .normal)
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.clipsToBounds = true
        
        return bt
    }
    
    private func newLabel() -> UILabel {
        let lbl:UILabel = UILabel()
        lbl.textAlignment = .center
        lbl.font = .systemFont(ofSize: self.bounds.height * 0.065, weight: .bold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let sizeBut: CGFloat = 0.19
        
        playButton.layer.cornerRadius = self.bounds.height * 0.19 * 0.5
        
        /* MARK: Constraints - Letters */
        
        // Letra I
        self.labels[0].trailingAnchor.constraint(equalTo: self.labels[1].leadingAnchor, constant: 1).isActive = true
        self.labels[0].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true


        // Letra N
        self.labels[1].trailingAnchor.constraint(equalTo: self.labels[2].leadingAnchor, constant: 1).isActive = true
        self.labels[1].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true
        

        // Letra K
        self.labels[2].trailingAnchor.constraint(equalTo: self.labels[3].leadingAnchor, constant: 1).isActive = true
        self.labels[2].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true


        // Letra O (primeira)
        self.labels[3].trailingAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.labels[3].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true


        // Letra L
        self.labels[4].leadingAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.labels[4].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true


        // Letra O (segunda)
        self.labels[5].leadingAnchor.constraint(equalTo: self.labels[4].trailingAnchor, constant: -1).isActive = true
        self.labels[5].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true


        // Letra R
        self.labels[6].leadingAnchor.constraint(equalTo: self.labels[5].trailingAnchor, constant: -1).isActive = true
        self.labels[6].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true


        // Letra S
        self.labels[7].leadingAnchor.constraint(equalTo: self.labels[6].trailingAnchor, constant: -1).isActive = true
        self.labels[7].topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.2).isActive = true

        
        
        
        // Button 1
        self.playButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.playButton.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.4).isActive = true
        self.playButton.heightAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        self.playButton.widthAnchor.constraint(equalToConstant: self.bounds.height * sizeBut).isActive = true
        
        // Button 2
        self.colorBook.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.colorBook.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.65).isActive = true
        self.colorBook.heightAnchor.constraint(equalToConstant: self.bounds.height * 0.08).isActive = true
        self.colorBook.widthAnchor.constraint(equalToConstant: self.bounds.height * 0.3).isActive = true
        
        // Button 3
        self.howToPlay.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.howToPlay.topAnchor.constraint(equalTo: self.topAnchor, constant: self.bounds.height * 0.75).isActive = true
        self.howToPlay.heightAnchor.constraint(equalToConstant: self.bounds.height * 0.08).isActive = true
        self.howToPlay.widthAnchor.constraint(equalToConstant: self.bounds.height * 0.3).isActive = true

    }
    public func getLabels() -> [UILabel] {return self.labels}
}
