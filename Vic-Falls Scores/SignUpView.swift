//
//  SignUpView.swift
//  Vic-Falls Scores
//
//  Created by Crown Sipho on 16/10/2025.
//

import SwiftUI

struct SignUpView: View {
    
    
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var message = ""
    
    var body: some View {
        ZStack{
            
            
            VStack(spacing: 15) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 450)
                    .clipShape(Circle())
                    .offset(x: -10 , y: -190)
                
                Text("Create Account")
                    .font(.largeTitle)
                    .bold()
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 380, height: .infinity)
                    .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1.5)
                        )
                
                SecureField("Enter password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 380, height: .infinity)
                    .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1.5)
                        )
                
                SecureField("Confirm password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 380, height: .infinity)
                    .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1.5)
                        )
                
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
           
            Image("cup")
            
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
              
                .opacity(0.2)
                .ignoresSafeArea()
            
        }
    }
    
}



