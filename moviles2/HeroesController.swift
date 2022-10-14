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
        var comic3: [Comic] = []
        var comic4: [Comic] = []
        var comic5: [Comic] = []
        var comic6: [Comic] = []
        var comic7: [Comic] = []
        var comic8: [Comic] = []
        var comic9: [Comic] = []
        var comic10: [Comic] = []
        var comic11: [Comic] = []
        var comic12: [Comic] = []
        var comic13: [Comic] = []
        var comic14: [Comic] = []
        var comic15: [Comic] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            comic1.append(Comic(nombre: "West Coast Avengers", numero: "# 51-52"))
            comic1.append(Comic(nombre: "Avengers: Children's Crusade", numero: "# 7"))
            comic1.append(Comic(nombre: "Avengers vol. 1", numero: "# 500-503"))
            comic1.append(Comic(nombre: "Excalibur vol. 2", numero: "# 11-12"))
            comic1.append(Comic(nombre: "House of M", numero: "# 1-8"))
            
            comic2.append(Comic(nombre: "Friendly Neighborhood Spider-Man", numero: "# 1-10"))
            comic2.append(Comic(nombre: "Marvel Team-Up", numero: "# 12"))
            comic2.append(Comic(nombre: "Peter Parker: Spider-Man", numero: "# 5-13"))
            comic2.append(Comic(nombre: "The Amazing Spider-Man Family", numero: "# 102-109"))
            comic2.append(Comic(nombre: "The Sensational Spider-Man", numero: "# 1-8"))
            
            comic3.append(Comic(nombre: "Tales to Astonish", numero: "# 35-48"))
            comic3.append(Comic(nombre: "Marvel Feature", numero: "# 4-10"))
            comic3.append(Comic(nombre: "Ant-Man's Big Christmas", numero: "# 1"))
            comic3.append(Comic(nombre: "Avengers Origins: Ant-Man & the Wasp", numero: "# 1"))
            comic3.append(Comic(nombre: "Marvel Premiere Vol 1", numero: "# 47-48"))
            
            comic4.append(Comic(nombre: "Captain America Comics", numero: "# 1-10"))
            comic4.append(Comic(nombre: "All-New Captain America", numero: "# 1-6"))
            comic4.append(Comic(nombre: "Captain America: Steve Rogers", numero: "# 1-19"))
            comic4.append(Comic(nombre: "Tales of Suspense", numero: "# 82-99"))
            comic4.append(Comic(nombre: "material from F.O.O.M.", numero: "# 8"))
            
            comic5.append(Comic(nombre: "The Variants", numero: "# 2"))
            comic5.append(Comic(nombre: "Devil's Reign: Omega", numero: "# 1"))
            comic5.append(Comic(nombre: "Devil's Reign", numero: "# 6"))
            comic5.append(Comic(nombre: "Marvel Masterworks", numero: "# 16"))
            comic5.append(Comic(nombre: "Devil's Reign", numero: "# 2"))
            
            comic6.append(Comic(nombre: "Black Widow", numero: "# 15"))
            comic6.append(Comic(nombre: "Wastelanders: Hawkeye", numero: "# 1"))
            comic6.append(Comic(nombre: "Heroes Reborn: Siege Society", numero: "# 1"))
            comic6.append(Comic(nombre: "Hawkeye: Freefall", numero: "# 6"))
            comic6.append(Comic(nombre: "West Coast Avengers", numero: "# 10"))
            
            comic7.append(Comic(nombre: "Hulk", numero: "# 1"))
            comic7.append(Comic(nombre: "Hulk", numero: "# 2"))
            comic7.append(Comic(nombre: "Immortal Hulk", numero: "# 10"))
            comic7.append(Comic(nombre: "Immortal Hulk", numero: "# 4"))
            comic7.append(Comic(nombre: "Hulk: Grand Design - Madness", numero: "# 1"))
            
            comic8.append(Comic(nombre: "The Darkhold: Iron Man", numero: "# 1"))
            comic8.append(Comic(nombre: "Dark Ages", numero: "# 1-2"))
            comic8.append(Comic(nombre: "Avengers Annual", numero: "# 1"))
            comic8.append(Comic(nombre: "Marvel Action Chillers", numero: "# 1"))
            comic8.append(Comic(nombre: "Avengers: Marvels Snapshots", numero: "# 11-40"))
            
            comic9.append(Comic(nombre: "The Trials Of Loki", numero: "# 1"))
            comic9.append(Comic(nombre: "The Mighty Valkyries", numero: "# 2"))
            comic9.append(Comic(nombre: "Thor & Loki: Double Trouble", numero: "# 3"))
            comic9.append(Comic(nombre: "Thor Epic Collection: Into The Dark Nebula", numero: "# 15-19"))
            comic9.append(Comic(nombre: "King Thor", numero: "# 2"))
            
            comic10.append(Comic(nombre: "Moon Knight", numero: "# 2"))
            comic10.append(Comic(nombre: "Moon Knight: Black, White & Blood", numero: "# 4"))
            comic10.append(Comic(nombre: "Ms. Marvel & Moon Knight", numero: "# 1"))
            comic10.append(Comic(nombre: "Moon Knight: Legacy", numero: "# 11-15"))
            comic10.append(Comic(nombre: "Devil's Reign: Moon Knight", numero: "# 1"))
            
            comic11.append(Comic(nombre: "Wakanda", numero: "# 1-14"))
            comic11.append(Comic(nombre: "The Long Shadow", numero: "# 15"))
            comic11.append(Comic(nombre: "Black Panther Legends", numero: "# 4"))
            comic11.append(Comic(nombre: "Avengers", numero: "# 53"))
            comic11.append(Comic(nombre: "Dark Ages", numero: "# 4"))
            
            comic12.append(Comic(nombre: "Savage She-Hulk", numero: "# 1-25"))
            comic12.append(Comic(nombre: "Red She-Hulk", numero: "# 58-67"))
            comic12.append(Comic(nombre: "The Immortal She-Hulk", numero: "# 1"))
            comic12.append(Comic(nombre: "Hulk", numero: "# 4"))
            comic12.append(Comic(nombre: "She-Hulk: Cosmic Collision", numero: "# 1"))
            
            comic13.append(Comic(nombre: "Strange: I Belong To Death", numero: "# 1"))
            comic13.append(Comic(nombre: "X-Cellent", numero: "# 3"))
            comic13.append(Comic(nombre: "Death of Doctor Strange", numero: "# 4"))
            comic13.append(Comic(nombre: "Defenders", numero: "# 4"))
            comic13.append(Comic(nombre: "Symbiote Spider-Man", numero: "# 3"))
            
            comic14.append(Comic(nombre: "Unworthy Thor", numero: "# 1-5"))
            comic14.append(Comic(nombre: "The War Thor", numero: "# 20-23"))
            comic14.append(Comic(nombre: "Journey Into Mystery", numero: "# 1-19"))
            comic14.append(Comic(nombre: "Thor: The Mighty Avenger", numero: "# 1-8"))
            comic14.append(Comic(nombre: "The Rage of Thor", numero: "# 10"))
            
            comic15.append(Comic(nombre: "Women of Marvel", numero: "# 1"))
            comic15.append(Comic(nombre: "Amazing Fantasy", numero: "# 4"))
            comic15.append(Comic(nombre: "Wastelanders: Black Widow", numero: "# 1"))
            comic15.append(Comic(nombre: "Demon Days: Mariko", numero: "# 1"))
            comic15.append(Comic(nombre: "Marvel-Verse: Black Widow", numero: "# 15"))
            
            heroes.append(Heroe (imagen: "scarlet2", apodo: "Bruja Escarlata", nombre: "Wanda Maximoff Lehnsherr", edad: "29", ocupacion: "Aventurera profesional, ama de casa", identidad: "Conocida públicamente", poder: "Magia del Caos, proyección de energía, telepatía, manipulación de las probabilidades, alteración y distorsión de la realidad.", creador: "Stan Lee, Jack Kirby", pareja: "Vision", comics: comic1, foto: "scarlet1"))
            heroes.append(Heroe (imagen: "spiderman2", apodo: "Spiderman", nombre: "Peter Benjamin Parker", edad: "18", ocupacion: "Fotógrafo", identidad: "Secreta", poder: "Fuerza, reflejos y equilibrio sobrehumanos, la capacidad de adherirse a las superficies.", creador: "Stan Lee, Steve Ditko", pareja: "Mary Jane Watson, Gwen Stacy, Gata Negra", comics: comic2, foto: "spiderman1"))
            heroes.append(Heroe (imagen: "antman2", apodo: "Antman", nombre: "Hank Pym Scott Lang", edad: "35", ocupacion: "Técnico en electrónica y propietario de Electrolang, Inc.", identidad: "Conocida públicamente", poder: "Cambios de tamaño desde casi microscópico a ~ 100 pies gigantescos.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Janet Van Dyne", comics: comic3, foto: "antman1"))
            heroes.append(Heroe (imagen: "capitan2", apodo: "Capitán América", nombre: "Steven \"Steve\" Rogers", edad: "104", ocupacion: "Ex soldado, funcionario federal, operativo de inteligencia.", identidad: "Conocida públicamente", poder: "Suero del Super-Soldado, Fuerza, Velocidad, Máxima Resistencia Humana.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Peggy Carter", comics: comic4, foto: "capitan1"))
            heroes.append(Heroe (imagen: "daredevil2", apodo: "Daredevil", nombre: "Matthew Michael \"Matt\" Murdock", edad: "32", ocupacion: "Abogado, justiciero ficticio y superhéroe.", identidad: "Secreta", poder: "Ecolocalización, Acróbata experto, Maestro en artes marciales", creador: "Stan Lee, Bill Everett", pareja: "Milla Donovan, Viuda Negra, Karen Page", comics: comic5, foto: "daredevil1"))
            heroes.append(Heroe (imagen: "hawkeye2", apodo: "Hawkeye", nombre: "Clinton Francis \"Clint\" Barton", edad: "52", ocupacion: "Consultor de seguridad.", identidad: "Secreta", poder: "No posee poderes sobrehumanos, tiene un arco especial", creador: "Stan Lee, Don Heck", pareja: "Pájaro Burlón (exesposa)", comics: comic6, foto: "hawkeye1"))
            heroes.append(Heroe (imagen: "hulk2", apodo: "Hulk", nombre: "Robert Bruce Banner", edad: "45", ocupacion: "Físico nuclear.", identidad: "Conocida públicamente", poder: "Transformación, Fuerza Ilimitada, Salto Sobrehumano, Resistencia Sobrehumana", creador: "Stan Lee, Jack Kirby", pareja: "Betty Ross", comics: comic7, foto: "hulk1"))
            heroes.append(Heroe (imagen: "ironman2", apodo: "Iron Man", nombre: "Anthony Edward \"Tony\" Stark", edad: "46", ocupacion: "Filantropo, millonario, playboy", identidad: "Conocida públicamente", poder: "Inteligencia de Supergenio, Hábil Combatiente, Maestro Táctico", creador: "Stan Lee, Larry Lieber, Don Heck, Jack Kirby", pareja: "Pepper Potts, Emma Frost, Madame Máscara", comics: comic8, foto: "ironman1"))
            heroes.append(Heroe (imagen: "loki2", apodo: "Loki", nombre: "Loki Laufeyson", edad: "46", ocupacion: "Príncipe y hechicero de Asgard.", identidad: "Conocida públicamente", poder: "Magia de proyecciones astrales, descargas de energía, vuelo, teleportación dimensional.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Sylvie", comics: comic9, foto: "loki1"))
            heroes.append(Heroe (imagen: "moon2", apodo: "Moonknight", nombre: "Marc Spector", edad: "46", ocupacion: "Justiciero, detective", identidad: "Conocida públicamente", poder: "Fuerza física, curación, visión nocturna, rápidos reflejos y la guía del propio dios.", creador: "Doug Moench, Don Perlin", pareja: "Marlene Alraune", comics: comic10, foto: "moon1"))
            heroes.append(Heroe (imagen: "panther2", apodo: "Black Panther", nombre: "T'Challa", edad: "46", ocupacion: "Superhéroe", identidad: "Conocida públicamente", poder: "Fuerza sobrehumana, velocidad, reflejos, agilidad, resistencia, durabilidad y sentidos.", creador: "Stan Lee, Jack Kirby", pareja: "Ororo Munroe/Tormenta (exesposa)", comics: comic11, foto: "panther1"))
            heroes.append(Heroe (imagen: "shehulk2", apodo: "She Hulk", nombre: "Jennifer Walters", edad: "46", ocupacion: "Abogada y superhéroe.", identidad: "Conocida públicamente", poder: "Transformacion, fuerza, Velocidad, Agilidad, Reflejos, Resistencia Sobrehumanas.", creador: "Stan Lee, John Buscema", pareja: "Starfox, Hércules, Iron Man, Clay Quartermain", comics: comic12, foto: "shehulk1"))
            heroes.append(Heroe (imagen: "strange2", apodo: "Doctor Strange", nombre: "Stephen Vincent Strange", edad: "46", ocupacion: "Neurocirujano y mago", identidad: "Conocida públicamente", poder: "Poderes místicos (teletransportación, generación de ilusiones, proyección de energía)", creador: "Stan Lee, Steve Ditko", pareja: "Clea", comics: comic13, foto: "strange1"))
            heroes.append(Heroe (imagen: "thor2", apodo: "Thor", nombre: "Thor Odinson", edad: "46", ocupacion: "NPríncipe de Asgard, protector de los 9 reinos", identidad: "Conocida públicamente", poder: "Capacidad para controlar las fuerzas de la naturaleza, especialmente los rayos y los truenos", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Jane Foster", comics: comic14, foto: "thor1"))
            heroes.append(Heroe (imagen: "widow2", apodo: "Black Widow", nombre: "Natalia Alianovna \"Natasha\" Romanoff", edad: "34", ocupacion: "Agente de campo de S.H.I.E.L.D", identidad: "Conocida públicamente", poder: "Velocidad, fuerza.", creador: "Stan Lee, Larry Lieber, Jack Kirby", pareja: "Daredevil, Ojo de Halcón, Bucky Barnes", comics: comic15, foto: "widow1"))
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destino = segue.destination as! DetallesHeroeController
            destino.heroe = heroes[tvHeroes.indexPathForSelectedRow!.row]
        }
        
        
}

