//
//  ButtomsDetailView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 7/10/24.
//

import SwiftUI


struct ButtomsDetailView: View {
    var body: some View {
        
        HStack( alignment: .top ,spacing: 25) {
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.white)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)
                                
                                Image(systemName: "arrow.left.arrow.right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(Color.color2)
                            }
                        }
                }//end button
                
                Text("Transferir")
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
            }
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.white)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)

                                Image(systemName: "tag.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(Color.color2)

                            }
                        }
                }//end button
                
                Text("Pagar servicio")
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
            }
            
            VStack(spacing: 10) {
                Button(action: {}) {
                    
                    RoundedRectangle(cornerRadius: 21)
                        .frame(width: 52, height: 52)
                        .foregroundStyle(.white)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)

                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(Color.color2)

                            }
                        }
                }//end button
                
                Text("Enviar a contactos")
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
                        .foregroundStyle(.white)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("color-2"), lineWidth: 0.6)

                                Image(systemName: "arrow.trianglehead.2.clockwise.rotate.90")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundStyle(Color.color2)

                            }
                        }
                }//end button
                
                Text("Ver mas")
                    .font(.system(size: 13, weight: .medium, design: .rounded))
                    .foregroundStyle(.white)
            }
            
        }
        
    }
}

#Preview {
    ButtomsDetailView()
}
