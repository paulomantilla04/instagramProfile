//
//  ContentView.swift
//  profileInstagram
//
//  Created by Paulo Mantilla on 01/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            HStack {
                Text("leomessi")
                    .foregroundStyle(.white)
                    .font(.system(size: 26, weight: .black))
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(.blue)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, minHeight: 70, alignment: .leading)
            .background(Color(hex: "#0F1012"))
            
            ScrollView {
                VStack{
                    HStack (spacing: 20) {
                        Image("messiWC")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 110, height: 110)
                            .background(
                                ZStack {
                                    Circle()
                                        .fill(
                                            LinearGradient(colors: [Color(hex:"#f9ce34"), Color(hex: "#ee2a7b"), Color(hex: "#6228d7")], startPoint: .leading, endPoint: .trailing)
                                        )
                                        .frame(width: 100, height: 100)
                                    
                                    Circle()
                                        .fill(Color(hex: "#0F1012"))
                                        .frame(width: 90, height: 90)
                                    
                                }
                            )
                        
                        VStack (alignment: .leading, spacing: 15) {
                            Text("Leo Messi")
                                .foregroundStyle(.white)
                                .font(.system(size: 16, weight: .bold))
                            
                            HStack (spacing: 30) {
                                StatsView(value: 1463, label: "posts", colorLabel: .white)
                                StatsView(value: 511000000, label: "followers", colorLabel: .white)
                                StatsView(value: 356, label: "following", colorLabel: .white)
                            }
                            
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.all, 10)
                .background(Color(hex: "#0F1012"))
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
