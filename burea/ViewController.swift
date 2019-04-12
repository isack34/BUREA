//
//  ViewController.swift
//  burea
//
//  Created by Isaac Rosas on 09/04/19.
//  Copyright © 2019 Isaac Rosas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DelegatesReturn{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func exerciseOne(_ sender: Any) {
        showProgress()
        let control = Controller.init()
        let arrayExtract  = control.extract()
        hideProgress()
        let alertController = UIAlertController(title: "El arreglo extraído es:", message:
            arrayExtract.description, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func exerciseTwo(_ sender: Any) {
        showProgress()
        let control = Controller.init()
        control.delegate=self
        control.extractInQueue()
    }
    
    func extractReturnOk(resp: Array<Any>){
        hideProgress()
        let alertController = UIAlertController(title: "El arreglo extraído es:", message:
                    resp.description, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Cerrar", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    func extractReturnError(resp: String) {
        print(resp)
    }
    
    @IBAction func exercisethreeOne(_ sender: Any) {
        let alertController = UIAlertController(title: "Una de las pantallas del app es un mapa geográfico de Google Earth en donde se enseñarán las diferentes tiendas / lugares que contengan el Producto con ID = `12345`. Utilizando SQL, ¿cómo sería un posible Query para obtener sólamente la data que se requiere en esta pantalla", message:
            "Select p.id, p.nombre, s.name, s.address, s.lat, s.lon FROM Product p JOIN Store s ON p.soldAt = s.id WHERE p.id = '12345';", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func exerciseThreeTwo(_ sender: Any) {
        let alertController = UIAlertController(title: "Durante picos de utilización, hemos notado que la pantalla de información del Producto, donde se enseñan todos los detalles del mismo incluyendo su nombre, descripción, tags y tiendas (con sus detalles) se tarda más de lo normal en cargar. Incluso, en muchas ocasiones la pantalla hace timeout. Asuma que la única razón para esta tardanza es la búsqueda y carga de esta data. Mencione 2 posibles soluciones a este problema", message:
            "1.- El ID del producto indexarlo y paginarlo 2.- Agregar índices a las columnas de la base, para así eliminar el TAF (table access full)", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func exerciseThreeThree(_ sender: Any) {
        let alertController = UIAlertController(title: "Por consiguiente, se añaden nuevas propiedades a los productos regularmente. Asumiendo que usted sabe de dicha posibilidad previo a diseñar la arquitectura de la base de datos y seleccionar la tecnología que va a usar para ésta: Qué tecnología (tipo, marca, etc.) utilizaría para esta base de datos? Cómo estructuraría el esquema de la base de datos para que dichos cambios se puedan hacer fácilmente?", message: "Utilizaría una base de datos ORM como RealM Eso mappea columnas a la base y se hace desde el lenguaje de programación, no en la base y crear tablas generales y de ahí agregar tablas detalle", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
   
}


