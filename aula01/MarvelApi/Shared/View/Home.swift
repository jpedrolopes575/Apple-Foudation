//
//  HomeView.swift
//  MarvelApi
//
//  Created by user on 06/10/23.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData = HomeViewModel()
    var body: some View {
        
        TabView{
            CharactersView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text ("Characters")
                    
                }
                .environmentObject(homeData)
            ComicsView()
                .tabItem{
                    Image(systemName:"books.vertical.fill")
                    Text ("Comics")
                }
                .environmentObject(homeData)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
