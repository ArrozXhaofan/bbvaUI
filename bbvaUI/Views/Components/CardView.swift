//
//  CardView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 6/10/24.
//

import SwiftUI

struct CardView: View {
    
    var cardColor1: [Color] = [.color1, .color3, .color2]

    var body: some View {
        NavigationLink(destination: DetailsView()) {
            VStack() {
                HStack {
                    Image(systemName: "esim")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Disponible")
                            .font(.system(size: 11))
                        Text("$ 3,079.21")
                            .font(.system(size: 17, weight: .bold))
                        
                    }
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Image("visa-image")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Spacer()
                    Text("*** 9001")
                        .font(.system(size: 12, weight: .bold))
                    
                }
                    
            }
            
            .foregroundStyle(.white)
            .padding(17)
            .frame(width: 190, height: 270)
            .background (
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(
                        LinearGradient(
                            colors: cardColor1,
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
            )
        }
        
    }
}

#Preview {
    CardView()
}
