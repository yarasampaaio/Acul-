//
//  ContentView.swift
//  Acula
//
//  Created by Yara Vitoria on 12/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var listacategoria = [
        Categoria(nome: "Moda", imagem: "tshirt", lojas: LojasFactory().criarLojasModa()),
        Categoria(nome: "Cosmeticos", imagem: "eyebrow", lojas: LojasFactory().criarLojasCosmeticos()),
        Categoria(nome: "Alimentação", imagem: "cart", lojas: LojasFactory().criarLojasAlimentacao()),
        Categoria(nome: "Objetos", imagem: "square.grid.2x2", lojas: LojasFactory().criarLojasObjetos())
    ]
   
    var body: some View {
        NavigationView {
            List(listacategoria) { categoria in
                NavigationLink(destination: LojasView(categoria: categoria, listacategoria: $listacategoria)){
                    Label(categoria.nome, systemImage: categoria.imagem)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Categorias")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
