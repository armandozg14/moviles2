//
//  DetallesHeroeController.swift
//  moviles2
//
//  Created by Alumno on 10/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesHeroeController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (heroe?.comics.count)!
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaComic") as! CeldaComicController
        celda.lblNombre.text = heroe!.comics[indexPath.row].nombre
        celda.lblNumero.text = heroe!.comics[indexPath.row].numero
        return celda
    }
    
    var heroe: Heroe?
    
    @IBOutlet weak var imgImagen: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblOcupacion: UILabel!
    @IBOutlet weak var lblIdentidad: UILabel!
    @IBOutlet weak var lblPoderes: UILabel!
    @IBOutlet weak var lblCreadores: UILabel!
    @IBOutlet weak var lblParejas: UILabel!
    
    @IBOutlet weak var tvComics: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if heroe != nil {
            self.title = heroe?.nombre
            imgImagen.image = UIImage(named: heroe!.imagen)
            imgImagen.layer.cornerRadius = 15
            imgImagen.clipsToBounds = true
            lblNombre.text = heroe?.nombre
            lblEdad.text = heroe?.edad
            lblOcupacion.text = heroe?.ocupacion
            lblIdentidad.text = heroe?.identidad
            lblPoderes.text = heroe?.poder
            lblCreadores.text = heroe?.creador
            lblParejas.text = heroe?.pareja
        
        }else{
            self.title = "Detalles"
        }
    }
}
