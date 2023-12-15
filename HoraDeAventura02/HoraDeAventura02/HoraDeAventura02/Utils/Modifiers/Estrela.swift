import Foundation
import SwiftUI

struct Estrela: ViewModifier {
    @Binding var taFavoritado: Bool
    var cor: Color
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment: .bottomTrailing) {
                Button("") {
                    
                }.buttonStyle(EstrelaStyle(taFavoritado: $taFavoritado, cor: cor ))
                 .padding(12)
            }
    }
}

extension View {
                    
    func estrela(taFavoritado: Binding<Bool>, cor: Color) -> some View {
        modifier(Estrela(taFavoritado: taFavoritado, cor: cor))
    }
}
