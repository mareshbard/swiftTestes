//
//  ArrayTela.swift
//  colecoesComForIt
//
//  Created by User on 19/09/23.
//

import SwiftUI
struct ErroCenario{
    let emoji: String
    let erroMensagem: String
    let id = UUID()
}



struct ArrayTela: View {
    let errosCenarios: [ErroCenario] = [
        ErroCenario(emoji: "👟", erroMensagem: "Erro: Variavel não iniciada não foi incializada"),
        ErroCenario(emoji: "🎩", erroMensagem: "Erro: Indice está fora dos limites da matriz. Provavelmente vc contou até 11 em vez de 10"),
        ErroCenario(emoji: "🕶️", erroMensagem: " Erro: Chaves não correspondentes. Lembre-se, abra chaves '{' precisa ter um '}' "),
        ErroCenario(emoji: "🌂", erroMensagem: " Erro: Esqueceu de fechar as aspas. Lembre-se de fecharpara não ficar confuso"),
        ErroCenario(emoji: "🧥", erroMensagem: " Erro: divisão por 0 não é possível, mesmo na programação"),
        ErroCenario(emoji: "🧶", erroMensagem: " Erro: loop infinito. Se está preso em um loop que nunca termina, seus personagens virtuais podem ficar tontos ")
        
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                ForEach(errosCenarios, id: \.id) {erroCenario in
                        Text(erroCenario.emoji)
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .background(Color.purple)
                            .clipShape(Circle())
                        Text(erroCenario.erroMensagem)
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                    }
                }
            }
            .frame(maxWidth: .infinity,minHeight:150)
            .background(Color.pink)
            .cornerRadius(10)
            .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 0 )
            .padding(.init(top: 5, leading: 16, bottom: 5, trailing: 16))
        }
    }


struct ArrayTela_Previews: PreviewProvider {
    static var previews: some View {
        ArrayTela()
    }
}


