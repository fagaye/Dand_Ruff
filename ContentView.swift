//
//  ContentView.swift
//  CoZone
//
//  Created by Adam, Eunice on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let blue = Color("blue")
        let lavender = Color("lavender")
        NavigationStack {
            ZStack{
                Image("decorations")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 273, height: 381)
                    .offset(x: 40, y: -150)
                
                VStack {
                    Text("Welcome to")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("Outfit-Regular", size: 48))
                        .padding(.bottom, -35.0)
                    
                    Text("CoZone!")
                        .padding(.bottom, 1.0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(blue)
                        .font(.custom("Outfit-Medium", size: 60))
                    
                    
                    Text("Finding a partner for class has never been easier.")
                        .frame(maxWidth: 350, alignment: .leading)
                        .font(.system(size: 16))
                        .padding(.bottom, 30.0)
                    
                    Button (action: {}){
                        Text("Register")
                            .font(.custom("Outfit-Medium", size: 16))
                            .frame(width: 350)
                            .padding(.vertical, 12)
                            .foregroundColor(.white)
                            .background(lavender)
                            .cornerRadius(6)
                    }
                    .padding(.bottom, 10)
                    
                    Button(action: {}) {
                        Text("Register")
                            .font(.custom("Outfit-Medium", size: 16))
                            .frame(width: 350)
                            .padding(.vertical, 12)
                            .foregroundColor(lavender) // Set text color to your desired color
                            .background(Color.white) // Set the background color to white
                            .cornerRadius(6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(lavender, lineWidth: 1.5) // Set the border color and width
                            )
                    }

                    Spacer()
                    
                }
                .padding()
                Image("shapes")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 367, height: 390)
                    .offset(x: -10, y: 180)

                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
