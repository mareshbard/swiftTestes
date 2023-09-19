//
//  ContentView.swift
//  colecoesComForIt
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                ArrayTela()
                    .tabItem {
                            Image(systemName:"list.bullet")
                            Text("Arrays")
                    }
                DicionarioTela()
                    .tabItem{
                        Image(systemName:"book")
                        Text("Dicionários")
                    }
                TuplaTela()
                    .tabItem {
                        Image(systemName:"text.book.closed")
                        Text("Tupla")
                    }
                setTela()
                    .tabItem {
                        Image(systemName:"square.and.pencil")
                        Text("Dicionários")
                    }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
