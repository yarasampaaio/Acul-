//
//  LojasView.swift
//  Acula
//
//  Created by Yara Vitoria on 13/05/22.
//

import SwiftUI

struct LojasView: View {
    var categoria: Categoria
    @Binding var listacategoria: [Categoria]
    
    var body: some View {
        List {
            ForEach(categoria.lojas) {
                loja in
                CardLojaView(loja: loja)
            }.onDelete(perform: delete)
        }
        .listStyle(.insetGrouped)
        .navigationTitle(categoria.nome)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            NavigationLink(destination: CadastroView(listaCategorias: $listacategoria, categoria: categoria))
             {
            Image(systemName: "plus")
            .imageScale(.medium)
            .foregroundColor(.accentColor)}
        }
    }
    
    func delete(at offsets: IndexSet) {
        guard let index = listacategoria.firstIndex(where: { $0.nome == categoria.nome }) else {return}
        listacategoria[index].lojas.remove(atOffsets: offsets)
//            .lojas.remove(atOffsets: offsets)
    }
}

//struct LojasView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            LojasView(categoria: "moda")
//        }
//    }
//}
