//
//  estrelastyle.swift
//  HoraDeAventura
//
//  Created by user on 29/09/23.
//

import Foundation
import SwiftUI

struct estrelastyle: ButtonStyle {
    
    @Binding var taFavoritado: Bool
    var cor: Color
    
    func makeBody (configuration: Configuration) -> some View {
        Image(systemName:taFavoritado ? "star.fill": "star")
            .resizable()
            .fontWeight(.thin)
            .foregroundStyle(cor)
            .frame(width: 45, height: 45)
            .onTapGesture {
                taFavoritado.toggle()
            }
    }
}
