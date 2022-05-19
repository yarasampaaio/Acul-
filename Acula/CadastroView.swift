//
//  CadastroView.swift
//  Acula
//
//  Created by Yara Vitoria on 18/05/22.
//

import SwiftUI


struct CadastroView: View {
    @Binding var listaCategorias : [Categoria]
    let categoria : Categoria
    
    @State var nomecadastro: String = ""
    @State var produtocadastro: String = ""
    @State var instagramcadastro: String = ""

    var body: some View {
        List{
            Section(
                header: Text("Dados da loja"),
                content: {
                    TextField("Nome", text: $nomecadastro)
                    TextField("Produto", text: $produtocadastro)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .navigationTitle("Nova Loja")
                })
                Section(
                header: Text("Contatos da loja"),
                content: {
                    TextField("Instagram", text: $instagramcadastro)
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .navigationTitle("Nova Loja")
                        .toolbar{
                            Button("Registrar") {
                                let lojaAdicionada = Loja(
                                    nome: nomecadastro,
                                    produto: produtocadastro,
                                    contato: instagramcadastro)
                                
                                if let index = listaCategorias.firstIndex(where: { $0.nome == categoria.nome }) {
                                    listaCategorias[index].lojas.append(lojaAdicionada)
                                }
    
                                
//                                [categoria] = LojasFactory().criarLojasModa(novasLojasModa: [lojaAdicionada])
                                
                                
                                
//                                lojasModa.append(lojaAdicionada)
                            }
                        }
                }
            )
        }
}
}
//
//struct CadastroView_Previews: PreviewProvider {
//    static var previews: some View {
//        CadastroView(lojasPorCategoria: .constant([:]), categoria: "Moda")
//            }
//        }
//    }
