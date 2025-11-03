//
//  Password.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 16/10/2025.
//

import SwiftUI
  
struct Password: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var message = ""
    
    var body: some View {
        ZStack {
            
            Image("cup")
            
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 607, height: 680)
                .opacity(0.9)
            
            VStack{
                
                Text("Reset your password")
                    .font(.largeTitle)
                    .padding()
                
                SecureField("Enter password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 380, height: .infinity)
                
                SecureField("Confirm password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 380, height: .infinity)
                
                Button("Set Password") {
                    if password == confirmPassword && !password.isEmpty {
                        
                        message = " Password set successfully!"
                    } else {
                        message = "Passwords do not match."
                    }
                    
                    
                    
                }
                
                .cornerRadius(10)
                
                Text(message)
                    .foregroundColor(password == confirmPassword ? .green : .red)
            }
        }
        
    }
}
#Preview {
    Password()
}
