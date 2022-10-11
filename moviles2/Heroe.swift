//
//  Heroe.swift
//  moviles2
//
//  Created by Alumno on 10/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Heroe{
    var imagen:String
    var apodo:String
    var nombre:String
    var edad: String
    var ocupacion:String
    var identidad:String
    var poder:String
    var creador:String
    var pareja:String
    var comics: [Comic]
    
    init(imagen: String, apodo: String, nombre: String, edad: String, ocupacion: String, identidad: String, poder: String, creador: String, pareja: String, comics: [Comic]) {
        self.imagen = imagen
        self.apodo = apodo
        self.nombre = nombre
        self.edad = edad
        self.ocupacion = ocupacion
        self.identidad = identidad
        self.poder = poder
        self.creador = creador
        self.pareja = pareja
        self.comics = comics
    }
}
