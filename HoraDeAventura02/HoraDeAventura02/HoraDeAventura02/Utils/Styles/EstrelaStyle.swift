import Foundation
import SwiftUI

struct EstrelaStyle: ButtonStyle {
    
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
