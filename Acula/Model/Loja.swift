//
//  Loja.swift
//  Acula
//
//  Created by Yara Vitoria on 14/05/22.
//

import Foundation

struct Loja : Identifiable {
    var id = UUID()
    var nome: String
    var produto: String
    var contato: String
    var avaliacao: Int = 0
    var imagem: String = ""
}


