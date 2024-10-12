//
//  DetailsView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 6/10/24.
//

import SwiftUI

struct DetailsView: View {
    
    @State var isAccountInOn: Bool = true
    
    private var sheepArrayColor: [Color] =
        [Color("color-4"),
         Color("color-4"),
        // Color("color-4"),
         Color("color-2"),
         Color("color-3")]
    
    private var uneCorner: RectangleCornerRadii {
        .init(topLeading: 40, topTrailing: 40)
    }
    
    var body: some View {
        
        VStack {
            Spacer()
            
            shape2
            .background(alignment: .top) {
                shape1
                    .offset(y: -310)
            }
            
        }//main stack
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.color1)
    }
    
    private var shape2: some View {
        VStack {
            
            HStack {
                Text("Movimientos")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.black)
                Spacer()
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.black)
            }
            .padding(.bottom, 35)
            
            HStack {
                Text("21 marzo 2022")
                Spacer()
            }
            .foregroundStyle(.black)
            .font(.system(size: 13, weight: .semibold))
            .padding(.bottom, 8)
            
            VStack(spacing: 30) {
                HStack(spacing: 20) {
                    Text("T")
                        .foregroundStyle(.gray)
                        .font(.system(size: 13, weight: .semibold))
                        .overlay(alignment: .center) {
                            Circle()
                                .stroke(.textColor2, lineWidth: 1)
                                .padding(-9)
                        }
                    Text("Transf plin BBVA")
                        .foregroundStyle(.color2)
                    Spacer()
                    Text("+ 2,500.00")
                        .foregroundStyle(.black)
                }
                .font(.system(size: 14, weight: .semibold))
                
                HStack(spacing: 20) {
                    Text("T")
                        .foregroundStyle(.gray)
                        .font(.system(size: 13, weight: .semibold))
                        .overlay(alignment: .center) {
                            Circle()
                                .stroke(.textColor2, lineWidth: 1)
                                .padding(-9)
                        }
                    Text("Transf plin BBVA")
                        .foregroundStyle(.color2)
                    Spacer()
                    Text("- 950.00")
                        .foregroundStyle(.black)
                }
                .font(.system(size: 14, weight: .semibold))
            }
            
            Divider()
                .padding(.vertical, 30)
            
            HStack {
                Text("29 marzo 2022")
                Spacer()
            }
            .foregroundStyle(.black)
            .font(.system(size: 13, weight: .semibold))
            .padding(.bottom, 8)

            VStack(spacing: 30) {
                HStack(spacing: 20) {
                    Text("T")
                        .foregroundStyle(.gray)
                        .font(.system(size: 13, weight: .semibold))
                        .overlay(alignment: .center) {
                            Circle()
                                .stroke(.textColor2, lineWidth: 1)
                                .padding(-9)
                        }
                    Text("Transf plin BBVA")
                        .foregroundStyle(.color2)
                    Spacer()
                    Text("- 1,230.00")
                        .foregroundStyle(.black)
                }
                .font(.system(size: 14, weight: .semibold))
                
                HStack(spacing: 20) {
                    Text("T")
                        .foregroundStyle(.gray)
                        .font(.system(size: 13, weight: .semibold))
                        .overlay(alignment: .center) {
                            Circle()
                                .stroke(.textColor2, lineWidth: 1)
                                .padding(-9)
                        }
                    Text("Transf plin BBVA")
                        .foregroundStyle(.color2)
                    Spacer()
                    Text("+ 500.00")
                        .foregroundStyle(.black)
                }
                .font(.system(size: 14, weight: .semibold))
            }

            
            Spacer()
            
        }//shape 2
        .frame(maxWidth: .infinity, maxHeight: 400)
        .padding(.horizontal, 45)
        .padding(.top, 45)
        .background(
            UnevenRoundedRectangle(cornerRadii: uneCorner)
                .foregroundStyle(.white)
        )
    }
    
    private var shape1: some View {
        VStack {
           
            HStack {
                Text("Cuenta independencia")
                    .font(.system(size: 14, weight: .semibold))
                    .lineLimit(1)
                Spacer()
                Toggle(isOn: $isAccountInOn) {
                    EmptyView()
                }
                .labelsHidden()
                .toggleStyle(CustomToggleStyle())
            }
            
            HStack {
                Text("S/")
                    .font(.system(size: 13))
                
                Text("3,079.21")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }
            
            HStack {
                Text("Salso disponible")
                Spacer()
                Text("Detalles")
            }
            .font(.system(size: 10))
            .padding(.vertical, 1)
            
            Divider()
                .padding(.vertical)
            ButtomsDetailView()
            
            Spacer()
            
            
            
        }//shape 1
        .padding(.horizontal, 45)
        .padding(.top, 45)
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity, maxHeight: 340)
        .background(
            UnevenRoundedRectangle(cornerRadii: uneCorner)
                .foregroundStyle(
                    .linearGradient(
                        colors: sheepArrayColor,
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
        )
    }
    
  
}

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white) // Color del recorrido
                    .frame(width: 40, height: 22)
                
                Circle()
                    .fill(configuration.isOn ? Color.color2 : Color.gray) // Color del punto (azul cuando está activado)
                    .frame(width: 17, height: 17)
                    .offset(x: configuration.isOn ? 10 : -10) // Desplazamiento del punto
                    .animation(.easeInOut(duration: 0.2), value: configuration.isOn)
            }
            .onTapGesture {
                configuration.isOn.toggle()
            }
        }
    }
}

#Preview {
    DetailsView()
}
