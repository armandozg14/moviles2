    //
//  heroesController.swift
//  moviles2
//
//  Created by Alumno on 10/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit
    
    class HeroesController : UIViewController, UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 127
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return heroes.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda = tableView.dequeueReusableCell(withIdentifier: "celdaHeroe") as! CeldaHeroeController
            celda.imgImagen.image = UIImage(named: heroes[indexPath.row].imagen)
            celda.lblApodo.text = heroes[indexPath.row].apodo
            celda.lblNombre.text = heroes[indexPath.row].nombre
            celda.lblIdentidad.text = heroes[indexPath.row].identidad
            
            return celda
        }
        @IBOutlet weak var tvHeroes: UITableView!
        
        var heroes: [Heroe] = []
        
        var comic1: [Comic] = []
        var comic2: [Comic] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            comic1.append(Comic(nombre: "West Coast Avengers", numero: "# 51-52"))
            comic1.append(Comic(nombre: "Avengers: Children's Crusade", numero: "# 7"))
            comic1.append(Comic(nombre: "Avengers vol. 1 ", numero: "# 500-503"))
            comic1.append(Comic(nombre: "Excalibur vol. 2", numero: "# 11-12"))
            comic1.append(Comic(nombre: "House of M", numero: "# 1-8"))
            
            comic2.append(Comic(nombre: "West Coast Avengers", numero: "# 51-52"))
            comic2.append(Comic(nombre: "Avengers: Children's Crusade", numero: "# 7"))
            comic2.append(Comic(nombre: "Avengers vol. 1 ", numero: "# 500-503"))
            comic2.append(Comic(nombre: "Excalibur vol. 2", numero: "# 11-12"))
            comic2.append(Comic(nombre: "House of M", numero: "# 1-8"))
            
            heroes.append(Heroe (imagen: "scarlet1", apodo: "Bruja Escarlata", nombre: "Wanda Maximoff Lehnsherr", edad: "29", ocupacion: "Aventurera profesional, ama de casa", identidad: "Conocida públicamente", poder: "Magia del Caos, proyección de energía, telepatía, manipulación de las probabilidades, alteración y distorsión de la realidad.", creador: "Stan Lee, Jack Kirby", pareja: "Vision", comics: comic1))
            heroes.append(Heroe (imagen: "scarlet1", apodo: "Bruja Escarlata", nombre: "Wanda Maximoff Lehnsherr", edad: "29", ocupacion: "Aventurera profesional, ama de casa", identidad: "Conocida públicamente", poder: "Magia del Caos, proyección de energía, telepatía, manipulación de las probabilidades, alteración y distorsión de la realidad.", creador: "Stan Lee, Jack Kirby", pareja: "Vision", comics: comic2))
        }
        
        
}

