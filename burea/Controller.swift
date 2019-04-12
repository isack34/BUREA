//
//  Controller.swift
//  burea
//
//  Created by Isaac Rosas on 09/04/19.
//  Copyright © 2019 Isaac Rosas. All rights reserved.
//

import Foundation
import MBProgressHUD

protocol DelegatesReturn: class {
    func extractReturnOk(resp: Array<Any>)
    func extractReturnError(resp: String)
}

class Controller : UIViewController{

    weak var delegate: DelegatesReturn?
    
    let list = [
        ["a":0, "x":1, "y":2, "z":3],
        ["foo":"bar","x":4,"y":5],
        ["x":-1,"y":-2,"z":11],
        ["x":-1,"y":-2,"z":["m":123]]
    ]
    
    func extract()->Array<Any>{
        print("Entro a extraer")
        var i = 0
        var items = Array<Any>()
        for (index, li) in list.enumerated() {
            if li.count == 3{
                print("La posición", index ,"tiene 3")
                var x:Int = 0
                var y:Int = 0
                var z:Int = 0
                for (key, value) in li {
                    print(key, value)
                    let val = value as? Int
                    if(key == "x"){
                        x+=1
                    }else if(key == "y"){
                        y+=1
                    }else if(key == "z" && val != nil){
                        if(val! > 10){z+=1}
                        
                    }
                }
                if((x+y+z) == 3){
                    print("Primer item con las 3 variables")
                    items.append([li])
                }
            }
            i+=1
        }
        print("Vamos a imprimir la lista que debe estar creada al iniciar el controller")
        print(list)
        return items
    }
    
    func extractInQueue(){
        DispatchQueue.global(qos: .background).async {
        print("Entro a extraer")
        var i = 0
        var items = Array<Any>()
        for (index, li) in self.list.enumerated() {
            if li.count == 3{
                print("La posición", index ,"tiene 3")
                var x:Int = 0
                var y:Int = 0
                var z:Int = 0
                for (key, value) in li {
                    print(key, value)
                    let val = value as? Int
                    if(key == "x"){
                        x+=1
                    }else if(key == "y"){
                        y+=1
                    }else if(key == "z" && val != nil){
                        if(val! > 10){z+=1}
                        
                    }
                }
                if((x+y+z) == 3){
                    print("Primer item con las 3 variables")
                    items.append([li])
                }
            }
            i+=1
        }
            DispatchQueue.main.async {
                print("Vamos a imprimir la lista que debe estar creada al iniciar el controller")
                print(self.list)
                self.delegate?.extractReturnOk(resp:items)
            }
    }
    
    }
}

