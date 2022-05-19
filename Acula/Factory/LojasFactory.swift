//
//  LojasModaFactory.swift
//  Acula
//
//  Created by Yara Vitoria on 14/05/22.
//

import Foundation

struct LojasFactory {
    func criarLojasModa(novasLojasModa: [Loja]? = nil) -> [Loja] {
        var lojasModa : [Loja] = [Loja(nome: "Susclo", produto: "Brechó de roupas", contato: "@susclo", avaliacao: 5, imagem: "susclo"),
                                 Loja(nome: "Lindimais", produto: "Moda praia", contato: "@lindimais", avaliacao: 5, imagem: "lindimais")]
        
        if novasLojasModa != nil {
            lojasModa.append(contentsOf: novasLojasModa!)
        }
        
        return lojasModa
    }

    func criarLojasCosmeticos(novasLojasCosmeticos: [Loja]? = nil) -> [Loja] {
        var lojasCosmeticos : [Loja] = [Loja(nome: "Cosmetico", produto: "Cosmetico", contato: "Cosmetico", avaliacao: 5, imagem: "bordado")]
       
        if novasLojasCosmeticos != nil{
            lojasCosmeticos.append(contentsOf: novasLojasCosmeticos!)
        }
        
        return lojasCosmeticos
    }

    func criarLojasAlimentacao(novasLojasAlimentacao: [Loja]? = nil) -> [Loja] {
        var lojasAlimentacao : [Loja] = [Loja(nome: "Sonha Mania", produto: "Doceria", contato: "@sonhomaniadoceria", avaliacao: 5, imagem: "sonhomania")]
        
        if novasLojasAlimentacao != nil{
            lojasAlimentacao.append(contentsOf: novasLojasAlimentacao!)
        }
        return lojasAlimentacao
    }

        func criarLojasObjetos(novasLojasObjetos: [Loja]? = nil) -> [Loja] {
            var lojasObjetos : [Loja] = [Loja(nome: "Objetos", produto: "Objetos", contato: "Objetos", avaliacao: 5, imagem: "bordado")]
            
            if novasLojasObjetos != nil{
                lojasObjetos.append(contentsOf: novasLojasObjetos!)
            }
            return lojasObjetos
    }
}

