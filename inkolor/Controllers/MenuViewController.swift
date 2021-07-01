//
//  Menu.swift
//  inkolors

import UIKit

class MenuViewController: UIViewController {
    let myView = MenuView()
    let medals:[UIImage] = [#imageLiteral(resourceName: "medalha-pequena-bronze"), #imageLiteral(resourceName: "medalha-pequena-prata"), #imageLiteral(resourceName: "medalha-pequena-ouro")]
    
    let defaults = UserDefaults.standard
    var currentLevel:Int = 0
    var completedLevels:Int = 0
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.view.backgroundColor = #colorLiteral(red: 0.9313784838, green: 0.9179487824, blue: 0.8697045445, alpha: 1)
        self.view = self.myView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // self.resetGame()
        
        // Definindo os levels
        self.currentLevel = self.defaults.integer(forKey: "level")
        self.completedLevels = self.defaults.integer(forKey: "completedLevels")
        
        myView.buttonBack.addTarget(self, action: #selector(actBack), for: .touchDown)
        
        self.myView.setCompletedLevels(level: self.completedLevels)
        
        
        myView.titleLabel.font = UIFont.boldSystemFont(ofSize: self.view.bounds.height * 0.03)
        
        // Botões
        let buttons = self.myView.getButtons()
        for x in 0..<3 {
            buttons[x].tag = x
            buttons[x].setTitle(String(x+1), for: .normal)
            buttons[x].addTarget(self, action: #selector(actLevel(sender:)), for: .touchDown)
            
            buttons[x].titleLabel?.font = UIFont.boldSystemFont(ofSize: self.view.bounds.height * 0.14)
            buttons[x].layer.cornerRadius = self.view.bounds.height * 0.045
            
            if (x <= self.completedLevels) {
                buttons[x].isEnabled = true
                buttons[x].backgroundColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
            }
        }
        
        // Medalhas
        let medals = self.myView.getMedals()
        for x in 0..<self.completedLevels {
            medals[x].image = self.medals[x]
        }
    }
    

    @IBAction func actLevel(sender:UIButton) -> Void{
        self.defaults.set(sender.tag, forKey: "level")
        guard let vc = storyboard?.instantiateViewController(identifier: "idIntro") as? IntroViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
    
    
    private func resetGame() -> Void {
        self.defaults.set(0, forKey: "level")
        self.defaults.set(0, forKey: "completedLevels")
        self.defaults.set(true, forKey: "soundOn")
    }
    
    @IBAction func actBack() -> Void{
        guard let vc = storyboard?.instantiateViewController(identifier: "idPlay") as? PlayViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }
}
