//
//  FooterLoginView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 30/09/24.
//

import SwiftUI

struct FooterLoginView: View {
    var body: some View {
        
        HStack( alignment: .top ,spacing: 25) {
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.color1)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)
                                
                                Image(systemName: "bag.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.white)

                            }
                        }
                }//end button
                
                Text("Token digital")
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
            }
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.color1)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)

                                Image(systemName: "qrcode")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.white)

                            }
                        }
                }//end button
                
                Text("QR Plin")
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
            }
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.color1)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)

                                Image(systemName: "mappin")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.white)

                            }
                        }
                }//end button
                
                Text("Puntos de atencion")
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
                    .lineLimit(3)
                    .frame(width: 58)
                    .multilineTextAlignment(.center)
            }
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.color1)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)

                                Image(systemName: "phone.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(.white)

                            }
                        }
                }//end button
                
                Text("Contactanos")
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
            }
            
        }
        
    }
}

#Preview {
    FooterLoginView()
}
