//
//  ViewController.swift
//  Quiz
//
//  Created by Hektor Kastrati on 10/3/18.
//  Copyright © 2018 Hektor Kastrati. All rights reserved.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet weak var lblPyetja: UILabel!
    @IBOutlet weak var lblPozitaEPyetjes: UILabel!
    @IBOutlet weak var lblRezultati: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    var pyetjet:[Pyetja] = [Pyetja]()
    var pyetjaAktuale:Int = 0
    var pyetjetEQelluara:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        rifreskoPamjen()
    }
    
    @IBAction func btnSakte(_ sender: UIButton) {
        // tag=1 Sakte
        // tag=2 Pasakte
        
        if(pyetjaAktuale < pyetjet.count){
            
            let pergjigjaESakte:Bool = pyetjet[pyetjaAktuale].pergjigjaESakte
            
            if(sender.tag == 1){
                
                if(pergjigjaESakte == true){
                    // e qellove
                   KRProgressHUD.showSuccess()
                    pyetjetEQelluara += 1
                    rifreskoPamjen()
                }else{
                    //nuk e qellove
                    KRProgressHUD.showError()
                }
            }else{
                
                if(pergjigjaESakte == false){
                    // e qellove
                    KRProgressHUD.showSuccess()
                    pyetjetEQelluara += 1
                    rifreskoPamjen()
                }else{
                    //nuk e qellove
                    KRProgressHUD.showError()
                }
            }
            
            pyetjaAktuale += 1
            rifreskoPamjen()
        }
        
    }
    
    func rifreskoPamjen(){
       
        pyetjet = PyetjaDB.init().pyetjet
        if(pyetjaAktuale < pyetjet.count) {
        
        lblPyetja.text = pyetjet[pyetjaAktuale].tekstiIPyetjes
        lblRezultati.text = "Rezultati: \(pyetjetEQelluara)"
        lblPozitaEPyetjes.text = "\(pyetjaAktuale + 1) / \(pyetjet.count)"
        progressBar.frame.size.width = (view.frame.width * CGFloat(pyetjaAktuale + 1)) / CGFloat(pyetjet.count)
       
        }else{

            let alertController = UIAlertController.init(title: "Loja Mbaroj", message: "Keni mbaruar lojen me \(pyetjetEQelluara) pyetje te qelluara", preferredStyle: .alert)

            let alertAction = UIAlertAction.init(title: "Rifillo Lojen", style: .default) { _ in

                self.pyetjaAktuale = 0
                self.pyetjetEQelluara = 0
                self.rifreskoPamjen()

            }

            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)

         }

     }
}

