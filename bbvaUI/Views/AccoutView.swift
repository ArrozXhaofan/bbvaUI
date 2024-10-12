//
//  ContentView.swift
//  bbvaUI
//
//  Created by Jeanpiere Laura on 26/09/24.
//

import SwiftUI

struct AccoutView: View {
    
    var vasr = RectangleCornerRadii(topLeading: 40)    
    var raddiiRef: RectangleCornerRadii {
        .init(topLeading: 40)
    }
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Spacer()
                shapeMain
                    .background(alignment: .top) {
                        shapeGreen
                            .offset(y: -53)
                            .background(alignment: .top) {
                                shapeBlue
                                    .offset(y: -106)
                            }
                    }
            }//main vstack
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.color1)
            .toolbar{ToolbarView()}
        }//nav stack
    }
    
    
    private var shapeMain: some View {
        VStack {
            
            VStack {
                
                HStack {
                    Text("CUENTAS")
                        .foregroundStyle(.textColor1)
                        .font(.system(size: 16))
                    Spacer()
                }
                .padding(.bottom, 8)
                
                VStack(spacing: 8) {
                    HStack {
                        Text("Cuenta independiente")
                            .foregroundStyle(.color2)
                        Spacer()
                        Text("$ 3,079.21")
                            .foregroundStyle(.black)

                    }
                    .font(.system(size: 15, weight: .medium))
                    
                    HStack {
                        Text("4871")
                            .foregroundStyle(.textColor2)
                            .font(.system(size: 16, weight: .medium))

                        Spacer()
                        Text("Saldo disponible")
                            .foregroundStyle(.textColor2)
                            .font(.system(size: 11))
                    }
                }
                .padding(.bottom)
                
                Divider()
                
                HStack {
                    Text("MIS TARJETAS")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(.textColor1)
                .font(.system(size: 16))
                .padding(.vertical, 10)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Linea de credito")
                            .font(.system(size: 11))
                        Text("$ 9,000.00")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                    }
                    .foregroundStyle(.black)
                    Spacer()
                }
            }
            .fontDesign(.rounded)
            .padding(.top, 40)
            .padding(.horizontal, 40)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    
                    CardView()
                    CardView()
                    CardView()
                    CardView()

                    
                }
                .padding(.horizontal, 40)
            }
            
           
            
            Spacer()
        }// shape white
        .frame(maxWidth: .infinity, maxHeight: 640)
        .background(
            UnevenRoundedRectangle(cornerRadii: raddiiRef)
                .foregroundStyle(.white)
        )
    }
    
    private var shapeGreen: some View {
        VStack {
            HStack {
                Text("Gastos")
                
                Spacer()
                
                HStack {
                    Text("- $ 2,210")
                    Image(systemName: "chevron.right")
                }
            }
            .foregroundStyle(.white)
            .font(.system(size: 15, design: .rounded))
            .padding(.top, 17)
            .padding(.horizontal, 50)
            
            Spacer()
        }//shape green
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(
            UnevenRoundedRectangle(cornerRadii: vasr)
                .foregroundStyle(.color3)
        )
    }
    
    private var shapeBlue: some View {
        VStack {
            
            HStack {
                Text("Ingresos")
                
                Spacer()
                
                HStack {
                    Text("+ $ 7,000")
                    Image(systemName: "chevron.right")
                }
            }
            .foregroundStyle(.white)
            .font(.system(size: 15, design: .rounded))
            .padding(.top, 17)
            .padding(.horizontal, 50)
            
            Spacer()
            
            
            
        }//shape azul
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(
            UnevenRoundedRectangle(cornerRadii: vasr)
                .foregroundStyle(.color2)
        )
    }
    

}

#Preview {
    AccoutView()
}
