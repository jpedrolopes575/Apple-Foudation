//
//  HoraDeAventura02App.swift
//  HoraDeAventura02
//
//  Created by user on 29/09/23.
//

import SwiftUI

@main 
struct HoraDeAventuraApp: App {
    @State var taFavoritado: Bool = true
    @State var taFavoritadoEmBaixo: Bool = true
    var body: some Scene {
        WindowGroup {
            Rectangle()
                .frame(width: 300, height: 500)
                .cornerRadius(50)
                .foregroundColor(Color.black)
                .background(Color("BackgroundColor"))
                .background(Color("FinnColor"))
                .estrela(taFavoritado: $taFavoritado, cor: Color("FinnColor") )
                .background(Color("BackgroundColor"))
        }
    }
}

