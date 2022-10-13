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
            celda.imgImagen.image = UIImage(named: heroes[indexPath.row].foto)
            celda.lblApodo.text = heroes[indexPath.row].apodo
            celda.lblNombre.text = heroes[indexPath.row].nombre
            celda.lblIdentidad.text = heroes[indexPath.row].identidad
            
            celda.imgImagen.layer.cornerRadius = celda.imgImagen.frame.size.width / 12
            celda.imgImagen.clipsToBounds = true
            
            
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
            
            heroes.append(Heroe (imagen: "scarlet2", apodo: "Bruja Escarlata", nombre: "Wanda Maximoff Lehnsherr", edad: "29", ocupacion: "Aventurera profesional, ama de casa", identidad: "Conocida públicamente", poder: "Magia del Caos, proyección de energía, telepatía, manipulación de las probabilidades, alteración y distorsión de la realidad.", creador: "Stan Lee, Jack Kirby", pareja: "Vision", comics: comic1, foto: "scarlet1"))
            heroes.append(Heroe (imagen: "spiderman2", apodo: "Spiderman", nombre: "Peter Benjamin Parker", edad: "18", ocupacion: "Fotógrafo", identidad: "Secreta", poder: "Fuerza, reflejos y equilibrio sobrehumanos, la capacidad de adherirse a las superficies.", creador: "Stan Lee, Steve Ditko", pareja: "Mary Jane Watson, Gwen Stacy, Gata Negra", comics: comic2, foto: "spiderman1"))
            heroes.append(Heroe (imagen: "antman2", apodo: "Antman", nombre: "Hank Pym Scott Lang", edad: "35", ocupacion: "Técnico en electrónica y propietario de Electrolang, Inc.", identidad: "Conocida públicamente", poder: "Cambios de tamaño desde casi microscópico a ~ 100 pies gigantescos.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Janet Van Dyne", comics: comic2, foto: "antman1"))
            heroes.append(Heroe (imagen: "capitan2", apodo: "Capitán América", nombre: "Steven \"Steve\" Rogers", edad: "104", ocupacion: "Ex soldado, funcionario federal, operativo de inteligencia.", identidad: "Conocida públicamente", poder: "Suero del Super-Soldado, Fuerza, Velocidad, Máxima Resistencia Humana.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Peggy Carter", comics: comic2, foto: "capitan1"))
            heroes.append(Heroe (imagen: "daredevil2", apodo: "Daredevil", nombre: "Matthew Michael \"Matt\" Murdock", edad: "32", ocupacion: "Abogado, justiciero ficticio y superhéroe.", identidad: "Secreta", poder: "Ecolocalización, Acróbata experto, Maestro en artes marciales", creador: "Stan Lee, Bill Everett", pareja: "Milla Donovan, Viuda Negra, Karen Page", comics: comic2, foto: "daredevil1"))
            heroes.append(Heroe (imagen: "hawkeye2", apodo: "Hawkeye", nombre: "Clinton Francis \"Clint\" Barton", edad: "52", ocupacion: "Consultor de seguridad.", identidad: "Secreta", poder: "No posee poderes sobrehumanos, tiene un arco especial", creador: "Stan Lee, Don Heck", pareja: "Pájaro Burlón (exesposa)", comics: comic2, foto: "hawkeye1"))
            heroes.append(Heroe (imagen: "hulk2", apodo: "Hulk", nombre: "Robert Bruce Banner", edad: "45", ocupacion: "Físico nuclear.", identidad: "Conocida públicamente", poder: "Transformación, Fuerza Ilimitada, Salto Sobrehumano, Resistencia Sobrehumana", creador: "Stan Lee, Jack Kirby", pareja: "Betty Ross", comics: comic2, foto: "hulk1"))
            heroes.append(Heroe (imagen: "ironman2", apodo: "Iron Man", nombre: "Anthony Edward \"Tony\" Stark", edad: "46", ocupacion: "Filantropo, millonario, playboy", identidad: "Conocida públicamente", poder: "Inteligencia de Supergenio, Hábil Combatiente, Maestro Táctico", creador: "Stan Lee, Larry Lieber, Don Heck, Jack Kirby", pareja: "Pepper Potts, Emma Frost, Madame Máscara", comics: comic2, foto: "ironman1"))
            heroes.append(Heroe (imagen: "loki2", apodo: "Loki", nombre: "Loki Laufeyson", edad: "46", ocupacion: "Príncipe y hechicero de Asgard.", identidad: "Conocida públicamente", poder: "Magia de proyecciones astrales, descargas de energía, vuelo, teleportación dimensional.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Sylvie", comics: comic2, foto: "loki1"))
            heroes.append(Heroe (imagen: "moon2", apodo: "Moonknight", nombre: "Marc Spector", edad: "46", ocupacion: "Justiciero, detective", identidad: "Conocida públicamente", poder: "Fuerza física, curación, visión nocturna, rápidos reflejos y la guía del propio dios.", creador: "Doug Moench, Don Perlin", pareja: "Marlene Alraune", comics: comic2, foto: "moon1"))
            heroes.append(Heroe (imagen: "panther2", apodo: "Black Panther", nombre: "T'Challa", edad: "46", ocupacion: "Superhéroe", identidad: "Conocida públicamente", poder: "Fuerza sobrehumana, velocidad, reflejos, agilidad, resistencia, durabilidad y sentidos.", creador: "Stan Lee, Jack Kirby", pareja: "Ororo Munroe/Tormenta (exesposa)", comics: comic2, foto: "panther1"))
            heroes.append(Heroe (imagen: "shehulk2", apodo: "She Hulk", nombre: "Jennifer Walters", edad: "46", ocupacion: "Abogada y superhéroe.", identidad: "Conocida públicamente", poder: "Transformacion, fuerza, Velocidad, Agilidad, Reflejos, Resistencia Sobrehumanas.", creador: "Stan Lee, John Buscema", pareja: "Starfox, Hércules, Iron Man, Clay Quartermain", comics: comic2, foto: "shehulk1"))
            heroes.append(Heroe (imagen: "strange2", apodo: "Doctor Strange", nombre: "Stephen Vincent Strange", edad: "46", ocupacion: "Neurocirujano y mago", identidad: "Conocida públicamente", poder: "Poderes místicos (teletransportación, generación de ilusiones, proyección de energía)", creador: "Stan Lee, Steve Ditko", pareja: "Clea", comics: comic2, foto: "strange1"))
            heroes.append(Heroe (imagen: "thor2", apodo: "Thor", nombre: "Thor Odinson", edad: "46", ocupacion: "NPríncipe de Asgard, protector de los 9 reinos", identidad: "Conocida públicamente", poder: "Capacidad para controlar las fuerzas de la naturaleza, especialmente los rayos y los truenos", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Jane Foster", comics: comic2, foto: "thor1"))
            heroes.append(Heroe (imagen: "widow2", apodo: "Black Widow", nombre: "Natalia Alianovna \"Natasha\" Romanoff", edad: "34", ocupacion: "Agente de campo de S.H.I.E.L.D", identidad: "Conocida públicamente", poder: "Velocidad, fuerza.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Daredevil, Ojo de Halcón, Bucky Barnes", comics: comic2, foto: "widow1"))
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destino = segue.destination as! DetallesHeroeController
            destino.heroe = heroes[tvHeroes.indexPathForSelectedRow!.row]
        }
        
        
}

