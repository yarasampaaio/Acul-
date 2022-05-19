//
//  Categoria.swift
//  Acula
//
//  Created by Yara Vitoria on 13/05/22.
//

import Foundation

struct Categoria : Identifiable {
    var id = UUID()
    var nome : String
    var imagem : String
    var lojas : [Loja]
}

