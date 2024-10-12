//
//  MainView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 26/09/24.
//

import SwiftUI

struct StartView: View {
    
    
    var body: some View {
        
        NavigationStack {
       
        ZStack {
            
            Color("color-1")
                .ignoresSafeArea()
                
            VStack {
                Image("bbva-logo")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 97)
                    .foregroundStyle(.white)
                
                Spacer()
                
                MiddleLoginView()
                
                Spacer()
                
                FooterLoginView()

            }
            .padding(.bottom, 10)


        }
        }
    }
}

#Preview {
    StartView()
}
