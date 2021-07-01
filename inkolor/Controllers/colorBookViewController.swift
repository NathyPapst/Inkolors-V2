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
        primaryLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.025, weight: .semibold)
        
        //Secondary Colors
        let secondaryLabel:UILabel = self.myView.secondaryLabel
        secondaryLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.025, weight: .semibold)

        //Tertiary Colors
        let tertiaryLabel:UILabel = self.myView.tertiaryLabel
        tertiaryLabel.font = .systemFont(ofSize: self.view.bounds.height * 0.025, weight: .semibold)
        
        for i in 0..<myView.colorsLabels.count {
            myView.colorsLabels[i].font = .systemFont(ofSize: self.view.bounds.height * 0.02, weight: .regular)
        }
        
       
        
        //bookzinho
        let image: UIImage = UIImage(systemName: "text.book.closed.fill")!
        bgImage = UIImageView(image: image)
        bgImage?.tintColor = #colorLiteral(red: 0.6227829456, green: 0.3547682166, blue: 0.8711426854, alpha: 1)
        bgImage!.frame = CGRect(x: 35,y: 140,width: 50,height: 50)
        self.myView.addSubview(bgImage!)
        
        //Linha
        let linha: UIImage = UIImage(named: "Linha Vertical")!
        linhaImage = UIImageView(image: linha)
        linhaImage!.frame = CGRect(x: 180,y: 210,width: 2, height: 260)
        self.myView.addSubview(linhaImage!)
        
        //Vermelho
        let vermelho: UIImage = UIImage(named: "Vermelho")!
        linhaImage = UIImageView(image: vermelho)
        linhaImage!.frame = CGRect(x: 20,y: 260,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        //Amarelo
        let amarelo: UIImage = UIImage(named: "Amarelo")!
        linhaImage = UIImageView(image: amarelo)
        linhaImage!.frame = CGRect(x: 20,y: 330,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        //Azul
        let azul: UIImage = UIImage(named: "Azul")!
        linhaImage = UIImageView(image: azul)
        linhaImage!.frame = CGRect(x: 20,y: 400,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        //Linha
        let linha2: UIImage = UIImage(named: "Linha Horizontal")!
        linhaImage = UIImageView(image: linha2)
        linhaImage!.frame = CGRect(x: 25,y: 470,width: 340,height: 3)
        self.myView.addSubview(linhaImage!)
        
        let laranja: UIImage = UIImage(named: "Laranja")!
        linhaImage = UIImageView(image: laranja)
        linhaImage!.frame = CGRect(x: 200,y: 260,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let roxo: UIImage = UIImage(named: "Roxo")!
        linhaImage = UIImageView(image: roxo)
        linhaImage!.frame = CGRect(x: 200,y: 330,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let verde: UIImage = UIImage(named: "Verde")!
        linhaImage = UIImageView(image: verde)
        linhaImage!.frame = CGRect(x: 200,y: 400,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let azulRoxo: UIImage = UIImage(named: "Azul Violeta")!
        linhaImage = UIImageView(image: azulRoxo)
        linhaImage!.frame = CGRect(x: 40,y: 560,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let azulVerde: UIImage = UIImage(named: "Azul Esverdeado")!
        linhaImage = UIImageView(image: azulVerde)
        linhaImage!.frame = CGRect(x: 162,y: 560,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let vermelhoLaranja: UIImage = UIImage(named: "Vermelho Alaranjado")!
        linhaImage = UIImageView(image: vermelhoLaranja)
        linhaImage!.frame = CGRect(x: 284,y: 560,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let vermelhoRoxo: UIImage = UIImage(named: "Vermelho Violeta")!
        linhaImage = UIImageView(image: vermelhoRoxo)
        linhaImage!.frame = CGRect(x: 40,y: 680,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let amareloLaranja: UIImage = UIImage(named: "Amarelo Alaranjado")!
        linhaImage = UIImageView(image: amareloLaranja)
        linhaImage!.frame = CGRect(x: 162,y: 680,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)
        
        let amareloVerde: UIImage = UIImage(named: "Amarelo Esverdeado")!
        linhaImage = UIImageView(image: amareloVerde)
        linhaImage!.frame = CGRect(x: 284,y: 680,width: 50,height: 50)
        self.myView.addSubview(linhaImage!)

    }
    
    @IBAction func actBack() -> Void{
        guard let vc = storyboard?.instantiateViewController(identifier: "idPlay") as? PlayViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
    }

}
