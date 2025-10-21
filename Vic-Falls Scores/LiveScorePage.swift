//
//  LiveScorePage.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 21/10/2025.
//
import SwiftUI

struct Match: Identifiable {
    let id = UUID()
    let homeTeam: String
    let homeLogo: String
    let awayTeam: String
    let awayLogo: String
    let week: String
    let score: String
    let extraTime: String
}

struct LiveScorePage: View {
    let matches: [Match] = [
        Match(homeTeam: "Liverpool", homeLogo: "Liverpool", awayTeam: "Manchester United", awayLogo: "Manchester",week: "Week 10", score: "1 : 2", extraTime: "90+5"),
        Match(homeTeam: "Chelsea", homeLogo: "Chelsea", awayTeam: "Arsenal", awayLogo: "Arsenal", week: "Week 10", score: "2 : 2", extraTime: "FT"),
        Match(homeTeam: "Barcelona", homeLogo: "Barcelona", awayTeam: "Real Madrid", awayLogo: "real madrid",week: "Week 9", score: "3 : 1", extraTime: "90+2"),
        Match(homeTeam: "Mancity", homeLogo: "Mancity", awayTeam: "Everton", awayLogo: "Everton", week: "Week 8", score: "2 : 0", extraTime: "90+5"),
        Match(homeTeam: "Wolves", homeLogo: "Wolves", awayTeam: "Brighton", awayLogo: "Brighton", week: "Week 5", score: "1 : 1", extraTime: "FT"),
        Match(homeTeam: "Everton", homeLogo: "Everton", awayTeam: "C Palace", awayLogo: "Crystal", week: "Week 1", score: "2 : 1", extraTime: "FT"),
        Match(homeTeam: "Chelsea", homeLogo: "Chelsea", awayTeam: "Liverpool", awayLogo: "Liverpool", week: "Week 2", score: "2 : 1", extraTime: "90+3")
    ]
    
    var body: some View {
        ZStack{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(matches) { match in
                        MatchCard(match: match)
                    }
                    Link(destination: URL(string: "https://www.flashscore.com")!) {
                                        Text("See Live Scores")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(12)
                                            .shadow(radius: 5)
                                    }
                                    .padding(.top, 30)
                }
                .padding()
            }
           
            Image("cup")
            
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 607, height: 680)
                .opacity(0.2)
            
           Text("Match Scores")
                .font(.title2)
                .bold()
                .offset(x: 120, y: -383)
               
        }
    }
    
    struct MatchCard: View {
        let match: Match
        
        var body: some View {
            VStack(spacing: 10) {
                
                Text(match.week)
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                HStack(alignment: .center, spacing: 16) {
                    Image(match.homeLogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                    
                    Text(match.score)
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.black)
                        
                    
                    Image(match.awayLogo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                }
                
                Text(match.extraTime)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(Color.green.opacity(1.9))
                    .cornerRadius(10)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6).opacity(8.15))
            .cornerRadius(20)
            .shadow(color: .gray.opacity(5.0), radius: 5, x: 0, y: 2)
            
            
            
        }
    }
    
}
#Preview {
    LiveScorePage()
}
