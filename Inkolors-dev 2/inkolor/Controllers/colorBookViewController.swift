//
//  colorBookViewController.swift
//  inkolor
//
//  Created by Felipe Leite on 29/06/21.
//

import UIKit

class colorBookViewController: UIViewController {
    let myView = colorBookView()
    var bgImage: UIImageView?
    var linhaImage: UIImageView?
    
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
        
        //Primary Colors
        let primaryLabel:UILabel = self.myView.primaryLabel
        primaryLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.03, weight: .semibold)
        
        //Secondary Colors
        let secondaryLabel:UILabel = self.myView.secondaryLabel
        secondaryLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.03, weight: .semibold)

        
        //bookzinho
        let image: UIImage = UIImage(systemName: "text.book.closed.fill")!
        bgImage = UIImageView(image: image)
        bgImage?.tintColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        bgImage!.frame = CGRect(x: 35,y: 165,width: 50,height: 50)
        self.myView.addSubview(bgImage!)
        
        //Linha
        let linha: UIImage = UIImage(named: "Linha")!
        linhaImage = UIImageView(image: linha)
        linhaImage!.frame = CGRect(x: 35,y: 285,width: 320,height: 2)
        self.myView.addSubview(linhaImage!)
        
        //Vermelho
        let vermelho: UIImage = UIImage(named: "Vermelho")!
        linhaImage = UIImageView(image: vermelho)
        linhaImage!.frame = CGRect(x: 45,y: 307,width: 60,height: 60)
        self.myView.addSubview(linhaImage!)
        
        //Amarelo
        let amarelo: UIImage = UIImage(named: "Amarelo")!
        linhaImage = UIImageView(image: amarelo)
        linhaImage!.frame = CGRect(x: 45,y: 387,width: 60,height: 60)
        self.myView.addSubview(linhaImage!)
        
        //Azul
        let azul: UIImage = UIImage(named: "Azul")!
        linhaImage = UIImageView(image: azul)
        linhaImage!.frame = CGRect(x: 45,y: 467,width: 60,height: 60)
        self.myView.addSubview(linhaImage!)
        
        //Linha
        let linha2: UIImage = UIImage(named: "Linha")!
        linhaImage = UIImageView(image: linha2)
        linhaImage!.frame = CGRect(x: 35,y: 600,width: 320,height: 2)
        self.myView.addSubview(linhaImage!)

    }
    
    @IBAction func actBack() -> Void{
        guard let vc = storyboard?.instantiateViewController(identifier: "idPlay") as? PlayViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }

}
