//
//  Uppgifter.swift
//  PIA11kodtest
//
//  Created by Bill Martensson on 2022-11-20.
//

import Foundation


class Uppgifter {
    
    /*
     Gör så funktionen som tar emot en mening och printar ut ett ord per rad.
     Runt hela ska det vara ram av stjärnor som anpassas efter längst ordet.
     Exempel:
     kod1("Att programmera är skoj")
     Så printa ut följande i loggen.
     ***************
     * Att         *
     * programmera *
     * är          *
     * skoj        *
     ***************
    */
    func kod1(mening : String) {
        // Gör om mening till lista med ord
        // Hitta längsta ordet
        // Printa stjärnor som längsta ord + lite
        // Loopa igenom och printa ord + mellanslag som saknas
        
        var orden = mening.components(separatedBy: " ")
        
        var longestwordcount = 0
        for ord in orden {
            if(ord.count > longestwordcount)
            {
                longestwordcount = ord.count
            }
        }
        
        var starline = ""
        for i in 1...longestwordcount+4 {
            starline = starline + "*"
        }
        print(starline)
        
        for ord in orden {
            var ordline = ord
            ordline = "* " + ordline
            for i in ord.count...longestwordcount {
                ordline = ordline + " "
            }
            ordline = ordline + "*"
            print(ordline)
        }
        
        print(starline)
        
    }
    
    /*
     Gör så funktionen tar emot två tal och räknesätt som strings och printar ut resultatet.
     Exempel:
     kod2(tal1: "sju", tal2: "tre", calctype: "plus")
     Ska ta 7 + 3 och printa ut "10"
     Behöver bara ha stöd för tal upp till 10
     */
    func kod2(tal1 : String, tal2 : String, calctype: String) {
        // Gör om text till siffra så som tre -> 3
        // Om calctype = plus gör plus osv.
        // printa resultat
        
        let siffror = ["noll", "ett", "två", "tre", "fyra", "fem", "sex", "sju", "åtta", "nio", "tio"]
        
        let siffra1 = siffror.firstIndex(of: tal1)!
        let siffra2 = siffror.firstIndex(of: tal2)!
        
        var resultat = 0
        
        switch calctype {
        case "plus":
            resultat = siffra1 + siffra2
        case "minus":
            resultat = siffra1 - siffra2
        case "division":
            resultat = siffra1 / siffra2
        case "multiplikation":
            resultat = siffra1 * siffra2
        default:
            resultat = 0
        }
        
        print(resultat)
        
    }
    
    /*
     Gör så funktionen tar emot en array av tal. Låt den printa ut summan av högsta och lägsta siffran.
     Exempel:
     kod3(siffror: [2,5,4,6,9,2])
     Ska ta 2+9 och printa 11
     */
    func kod3(siffror: [Int]) {
        print(siffror.min()!+siffror.max()!)
        
        let highestnumber = siffror.max()!
        
        let lowestnumber = siffror.min()!
        
        print(highestnumber+lowestnumber)
    }
    
}
