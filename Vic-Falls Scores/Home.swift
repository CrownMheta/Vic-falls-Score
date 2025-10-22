//
//  Home.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 17/10/2025.
//

import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct Home: View {
    let players: [Player] = [
        Player(name: "     Aston Villa Vs Chelsea", imageName: "chelsea vs Aston villa"),
        Player(name: "       Liverpool vs Man-U", imageName: "liverpool vs Man-U"),
        Player(name: "   Man-City Vs Real Madrid", imageName: "Salah"),
        Player(name: "      Newcastle Vs Arsenal", imageName: "newcastle-united-vs-arsenal"),
        Player(name: "Real Madrid Vs Barcellona", imageName: "real madrid vs barcellona"),
        
    ]
    
    @State private var currentIndex: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                ZStack(alignment: .bottomLeading) {
                    
                    
                    
                    Image("cup")
                    
                        .resizable()
                    
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                        .opacity(0.8)
                        .ignoresSafeArea()
                    
                    
                    
                    
                    
                    
                    
                    VStack(alignment: .leading, spacing: 15) {
                        let player = players[currentIndex]
                        
                        Image(player.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 350, height: 150)
                            .background(.gray)
                            .cornerRadius(18)
                            .offset(x: 70, y: -60)
                        
                        
                        
                        Text(player.name)
                            .font(.title2)
                            .foregroundColor(.white)
                            .fontDesign(.serif)
                            .offset(x: 100, y: -65 )
                        
                        HStack(spacing: -6) {
                            Button(action: {
                                if currentIndex > 0 {
                                    currentIndex -= 1
                                }
                            }) {
                                Text("Previous")
                                    .padding(8)
                                    .foregroundColor(.blue)
                                    .background(.black)
                                    .cornerRadius(10)
                                
                                
                            }
                            .disabled(currentIndex == 0)
                            .offset(x: 60,y: -80 )
                            
                            Button(action: {
                                if currentIndex < players.count - 1 {
                                    currentIndex += 1
                                }
                            }) {
                                Text("  Next  ")
                                    .padding(8)
                                    .foregroundColor(.purple)
                                    .bold()
                                    .background(.black)
                                    .cornerRadius(10)
                                
                                
                                
                            }
                            .disabled(currentIndex == players.count - 1)
                            .offset(x: 255,y: -80 )
                        }
                    }
                    .padding()
                    
                }
                
                
                Text ("     Upcoming Matches ")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                    .offset(x: -80, y: 40)
                
                Text ("Vic-falls Score Board")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.white)
                    .offset(x: -85, y: -355)
                
                
                Image("ronaldo7")
                    .resizable()
                
                    .frame(width: 390, height: 260)
                    .cornerRadius(20)
                    .offset(x: -1, y: -205)
                
                
                NavigationLink(destination: LiveScorePage()){
                    Image(systemName: "tablecells")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black)
                }
                
                .offset(x: -110, y: 399)
                
                
                NavigationLink(destination: ProfilesPage()) {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black)
                    
                    
                }
                .offset(x: 100, y: 399)
                
                
            }
            .navigationBarBackButtonHidden()
        }
    }
}
#Preview {
    Home()
}
