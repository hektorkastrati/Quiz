//
//  PyetjaDB.swift
//  Quiz
//
//  Created by Hektor Kastrati on 10/3/18.
//  Copyright © 2018 Hektor Kastrati. All rights reserved.
//

import Foundation

class PyetjaDB{
    
    var pyetjet:[Pyetja] = [Pyetja]()
    
    init() {
        
        let pyetja1:Pyetja = Pyetja.init(tekstiIPyetjes: "Lumi eshte me i madh se perrocka?", pergjigjaESakte: true)
        
        pyetjet.append(pyetja1)
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Akropolisi gjendet ne Rome?", pergjigjaESakte: false))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Stambolli eshte kryeqyteti i Turqise?", pergjigjaESakte: false))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Area e siperfaqes se dy mushkrive te njeriut eshte afersisht 70 km katrore?", pergjigjaESakte: true))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Tokyo eshte qyteti urban me i madh ne bote?", pergjigjaESakte: true))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Lumi Sena kalon neper Bruksel dhe Paris?", pergjigjaESakte: false))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Google fillimisht eshte quajtur WebSearch?", pergjigjaESakte: false))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Asnje leter nuk mund te palohet me shume se 7 here?", pergjigjaESakte: false))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Un i njeh 197 shtete te botes?", pergjigjaESakte: true))
        
        pyetjet.append(Pyetja.init(tekstiIPyetjes: "Me 1970 popullsia e botes ishte sa gjysma e sotme", pergjigjaESakte: true))
    }
}
