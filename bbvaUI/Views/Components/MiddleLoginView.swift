//
//  MiddleLoginView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 30/09/24.
//

import SwiftUI

struct MiddleLoginView: View {
    var body: some View {
        
        VStack(spacing: 35) {
            
            Image("profile-image")
                .resizable()
                .scaledToFit()
                .frame(width: 81)
                .clipShape(Circle())
            
            HStack {
                Text("Hola,")
                    .fontWeight(.regular)
                +
                Text(" Jeanpiere")
                    .fontWeight(.heavy)
            }
            .font(.system(size: 18))
            .foregroundStyle(.white)
            
            Button(action: {}) {
                
                NavigationLink(
                    destination: AccoutView().navigationBarBackButtonHidden()
                    ) {
                    Text("Iniciar sesión")
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .thin))
                }
                .foregroundStyle(.clear)
                .frame(width: 228, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(.color2)
                }
            }//fin buttom
            
            Button(action: {}) {
                
                HStack {
                    Image(systemName: "person.fill")
                    Text("Cambiar de usuario")
                }
                .font(.system(size: 14, weight: .regular))
                .foregroundStyle(.white)

            }//fin buttom
        }//fin vstack middgle
        
    }
}

#Preview {
    MiddleLoginView()
}
