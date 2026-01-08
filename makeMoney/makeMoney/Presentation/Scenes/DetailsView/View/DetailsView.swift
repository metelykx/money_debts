//
//  DetailsView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 06.01.2026.
//

import SwiftUI

struct DetailsView: View {
    @State var isNotification: Bool = false
    var body: some View {
        VStack {
            DetailsViewHeader()
            
            VStack(alignment:.leading) {
                VStack(alignment: .leading, spacing: -8) {
                    Text("$ 82, 200")
                        .lato(font: .bold, size: 27)
                        .foregroundStyle(.white)
                    Text("Кредит на айфон")
                        .lato(font: .bold, size: 16)
                        .foregroundStyle(.appYellow)
                }
                .padding(.vertical, 30)
                
                VStack(alignment: .leading, spacing: 26) {
                    VStack(alignment: .leading, spacing: 17){
                        HStack(spacing: 16) {
                            InfoTagView(text: "$ 60, 200")
                            InfoTagView(text: "$ 3, 200")
                            
                        }
                        Text("lorem")
                            .lato(font: .regular, size: 14)
                            .foregroundStyle(.appMint)
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Divider()
                            .background(.appGray)
                        HStack {
                            Text("Ближайший платеж")
                                .lato(font: .regular, size: 14)
                                .foregroundStyle(.appYellow)
                            Spacer()
                            HStack(spacing: 4) {
                                Text("оплачен")
                                    .lato(font: .bold, size: 12)
                                Text("13.12")
                                    .lato(font: .bold, size: 12)
                            }
                            .padding(.horizontal, 10)
                            .padding(.bottom, 4)
                            .background(.appYellow)
                            .clipShape(Capsule())
                        }
                        .padding(.horizontal, 10)
                        
                        Divider()
                            .background(.appGray)
                        
                        HStack {
                            Text("Уведомление о платеже")
                                .lato(font: .regular, size: 14)
                                .foregroundStyle(.appYellow)
                                .offset(y: -3)
                            
                            Spacer()
                            RadioButtonView(isSelected: $isNotification)
                        }.padding(.horizontal, 10)
                        
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                SolidButton(text: "Оплатить", color: .appBlack, solid: .appYellow, isFull: true)
                SolidButton(text: "Оплатить", color: .white, solid: .appYellow)
            }
        }.padding(.horizontal, 20)
        .background(.appBlack)
    }
}


#Preview {
    DetailsView()
}


struct DetailsViewHeader: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.appYellow)
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            Text("Детали платежа")
                .lato(font: .bold, size: 18)
                .foregroundStyle(.appYellow)
            
            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "trash")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.appYellow)
                    .frame(width: 20, height: 20)
            }
        }
    }
}



