//
//  CardLojaView.swift
//  Acula
//
//  Created by Yara Vitoria on 14/05/22.
//

import SwiftUI

struct CardLojaView: View {
    let loja: Loja
    
    var body: some View {
        HStack{
            Image(loja.imagem)
            .resizable()
            .clipShape(Circle())
            .frame(width: 100, height: 100)
            .scaledToFit()
            
            VStack(alignment: .leading) {
                Text(loja.nome)
                Text(loja.produto)
                Text(loja.contato)
            }
        }
    }
}

struct CardLojaView_Previews: PreviewProvider {
    static var previews: some View {
        CardLojaView(loja: Loja(nome: "Susclo", produto: "Brechó de roupas", contato: "Instragram: @susclo", avaliacao: 5, imagem: "cart"))
            .frame(width: 300, height: 50)
    }
}
