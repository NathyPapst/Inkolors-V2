//
//  PlayViewController.swift
//  inkolor
//
//  Created by Felipe Leite on 25/06/21.
//

import UIKit

class PlayViewController: UIViewController {
    let myView = PlayView()

    let letters:[String] = ["I", "N", "K", "O", "L", "O", "R", "S"]
    let colors:[UIColor] = [#colorLiteral(red: 0, green: 0.6439785361, blue: 0, alpha: 1) ,  #colorLiteral(red: 0.7766265869, green: 0, blue: 0.6352015734, alpha: 1),  #colorLiteral(red: 0, green: 0.6153349876, blue: 0.5963861346, alpha: 1),  #colorLiteral(red: 1, green: 0.4701431394, blue: 0, alpha: 1),  #colorLiteral(red: 0.7766265869, green: 0, blue: 0.6352015734, alpha: 1),  #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1),  #colorLiteral(red: 0.3140003979, green: 0.8086813688, blue: 0.6361778378, alpha: 1),  #colorLiteral(red: 0.6979225278, green: 0.7649332881, blue: 0, alpha: 1)]
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.view.backgroundColor = #colorLiteral(red: 0.9950116277, green: 0.9765254855, blue: 0.9284539819, alpha: 1)
        self.view = self.myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.playButton.layer.cornerRadius = self.view.bounds.height * 0.19 * 0.5
        myView.playButton.addTarget(self, action: #selector(PlayButton), for: .touchUpInside)
        myView.colorBook.addTarget(self, action: #selector(setColorBook), for: .touchUpInside)
        myView.howToPlay.addTarget(self, action: #selector(setHowTo), for: .touchUpInside)
        
         // Letras
        let labels = self.myView.getLabels()
        for x in 0..<self.colors.count {
            labels[x].text = self.letters[x]
            labels[x].textColor = self.colors[x]

            labels[x].font = .systemFont(ofSize: self.view.bounds.height * 0.065, weight: .bold)
        }
        

    }
    @objc func PlayButton() {
        
    }
    @objc func setColorBook() {
        
    }
    @objc func setHowTo() {
        
    }

}
