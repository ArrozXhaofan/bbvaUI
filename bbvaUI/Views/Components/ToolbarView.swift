//
//  ToolbarView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 5/10/24.
//

import SwiftUI

struct ToolbarView: ToolbarContent {
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            imageProfile
                .padding(.leading, 20)
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                
            } label: {
                Image(systemName: "list.bullet")
                    .foregroundStyle(.white)
                    .font(.system(size: 15, weight: .bold))
                    .padding(.trailing, 20)

            }

        }
    }
    
    var imageProfile: some View {
        HStack(spacing: 20) {
            Image("profile-image")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
                .overlay(alignment: .topTrailing) {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(.color3)
                        .offset(x: -2, y: -1)
                }
            
            Text("Hola,  ")
                .foregroundStyle(.white)
                .fontDesign(.rounded)

            +
            Text("Jeanpiere")
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .fontDesign(.rounded)
        }
    }
}

