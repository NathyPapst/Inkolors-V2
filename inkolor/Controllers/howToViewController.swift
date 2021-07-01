//
//  howToViewController.swift
//  inkolor
//
//  Created by Felipe Leite on 29/06/21.
//

import UIKit

class howToViewController: UIViewController {
    let myView = howToView()
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.view = self.myView
        self.view.backgroundColor = #colorLiteral(red: 0.9313784838, green: 0.9179487824, blue: 0.8697045445, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Botões */
        
        myView.buttonBack.addTarget(self, action: #selector(actBack), for: .touchDown)
        
        // Labels
        let titleLabel:UILabel = self.myView.titleLabel
        titleLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.06, weight: .bold)
        
        let infoLabel:UILabel = self.myView.getInfoLabel()
        infoLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.030, weight: .regular)
    }
    
    
    @IBAction func actBack() -> Void{
        guard let vc = storyboard?.instantiateViewController(identifier: "idPlay") as? PlayViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
}
