//
//  HoraDeAventuraApp.swift
//  HoraDeAventura
//
//  Created by user on 29/09/23.
//

import SwiftUI

@main
struct HoraDeAventuraApp: App {
    @State var taFavoritado: Bool = false
    var body: some Scene {
        WindowGroup {
            VStack {
                Button (""){
                    
                }
                .buttonStyle(estrelastyle(taFavoritado: $taFavoritado, cor: Color("FinnColor")))
            }
        }
    }
}
