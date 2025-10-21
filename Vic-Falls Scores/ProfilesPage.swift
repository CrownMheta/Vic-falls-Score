//
//  ProfilesPage.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 21/10/2025.
//

import SwiftUI

import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
}

struct ProfilesPage: View {
    let players: [Profile] = [
        Profile(
            name: "Bellingham",
            imageName: "bellingham",
            description: " A dynamic midfielder known for his vision, passing, and leadership at a young age.. "
        ),
        Profile(
            name: "Haaland",
            imageName: "haland",
            description: "A powerful striker with incredible speed, strength, and finishing ability."
        ),
        Profile(
            name: "Messi",
            imageName: "Messi",
            description: " One of the greatest footballers of all time, known for his dribbling and playmaking genius."
        ),
        Profile(
            name: "Neymar",
            imageName: "Neymar",
            description: "A creative forward famous for his flair, skill moves, and goal-scoring ability."
        ),
        Profile(name: "Ronaldo", imageName: "ronaldo", description: "A creative forward famous for his flair, skill moves, and goal-scoring ability."),
        
        Profile(name: "Sauraz", imageName: "Sauraz", description: "Suárez is known for his prolific goal-scoring ability and clever movement as a striker"),
        Profile(name: "Dembele", imageName: "dembele", description: "Dembélé, a forward for Paris Saint-Germain and the France national team, known for his speed and ability to play with both feet."),
        Profile(name: "Kelvin", imageName: "kelvin", description: "Kelvin is known for his creativity, technique, and goal-creating ability, and has won numerous trophies throughout his career. "),
        Profile(name: "Salah", imageName: "lah", description: "Mohamed Salah, is known for being a prolific and fast goal-scoring forward who plays for Liverpool and the Egyptian national team. He is celebrated for his speed, dribbling, and ability to score crucial goals. "),
        Profile(name: "Vinicius", imageName: "vinnie", description: "Vinicius is known for his exceptional dribbling, pace, and stamina as a winger for Spanish club Real Madrid and the Brazil national team"),
        Profile(name: "Virgil", imageName: "virgil1", description: "Virgil van Dijk is known for being a dominant, world-class center-back, widely considered one of the best defenders of his generation."),
        Profile(name: "Yamal", imageName: "yamal", description: "Lamine Yamal is known for being a prodigious Spanish footballer for FC Barcelona, celebrated for his exceptional dribbling, creativity, and flair.")
        
    ]
    
        
    @State private var currentIndex: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomLeading) {
                
                Image("cup")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .opacity(0.4)
                
                VStack(alignment: .leading, spacing: 15) {
                    let player = players[currentIndex]
                    
                   
                    Image(player.imageName)
                        .resizable()
                        .frame(width: 400,height: 300)
                        .clipShape(Circle())
                        .offset(x: 55, y: -219)
                       
                        

                    Text(player.name)
                        .font(.title2)
                        .bold()
                        .foregroundColor(.black)
                        .offset(x: 199, y: -215)
                    
                   
                    Text(player.description)
                        .bold()
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(.horizontal, 99)
                        .offset(x: 11, y: -170)
                    
                    
                    HStack(spacing: 20) {
                        
                        
                        Button(action: {
                            if currentIndex > 0 {
                                currentIndex -= 1
                            }
                        }) {
                            Text("Previous")
                                .padding()
                                .frame(width: 120)
                                .background(Color.black)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        }
                        .disabled(currentIndex == 0)
                        
                        Button(action: {
                            if currentIndex < players.count - 1 {
                                currentIndex += 1
                            }
                            
                        }) {
                            Text("Next")
                                .padding()
                                .frame(width: 120)
                                .background(Color.black)
                                .foregroundColor(.purple)
                                .cornerRadius(10)
                        }
                        .disabled(currentIndex == players.count - 1)
                    }
                    .offset(x: 140, y: -20)
                }
            }
        }
    }
}

#Preview {
    ProfilesPage()
}


