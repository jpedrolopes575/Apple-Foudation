//
//  ContentView.swift
//  candece007
//
//  Created by user on 12/09/23.
//
 import SwiftUI

struct ContentView: View{
    var body: some View{
        
        ZStack{
            
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 35){
                Text ("HANDEBOL")
                    .font(.system(size:44))
                    .foregroundColor(.white)
                    .bold()
                HStack{
                    Image("Carinha")
                        .resizable()
                        .frame(width:150, height:150)
                        .cornerRadius(10)
                    VStack {
                        ZStack {
                            Image("Laranja")
                                .resizable()
                                .frame(width:150, height:150)
                                .cornerRadius(10)
                        }
                        ZStack{
                            Image("Verde")
                                .resizable()
                                .frame(width:150, height:150)
                                .cornerRadius(10)
                        }
                    }
                    
                            
                        
                    }
                    Text ("Vamo pra SEC ?")
                    .font(.system(size: 30))
                        .foregroundColor(.white)
                        .bold()
                        
                    Button{
                        
                    } label: {
                        Text ("vamo ou bora?")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .padding(.vertical,30)
                            .padding(.horizontal,30)
                            .background(Color.white)
                            .cornerRadius(50)
                            
                }
            }
        }
        
    }
}
