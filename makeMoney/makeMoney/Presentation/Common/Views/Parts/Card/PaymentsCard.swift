//
//  PaymentsCard.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct PaymentCard: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 12) {
            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading, spacing: 10) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Долг по кредитке")
                            .lato(font: .bold, size: 24)
                        
                        HStack(spacing: 5) {
                            Text("$ 32 500")
                                .lato(font: .bold, size: 12)
                            Text("/ Остаток")
                                .lato(font: .bold, size: 12)
                        }
                        Text("This course will be your personal guide to be an UI")
                            .lato(font: .bold, size: 14)
                        
                    }
                }
                HStack {
                    HStack(spacing: 5) {
                        Text("$ 1,200")
                            .lato(font:.bold, size: 18)
                        Text("/ Месяц")
                            .lato(font: .regular, size: 18)
                    }
                    Spacer()
                    HStack(spacing: 5){
                        Text("оплатить до")
                            .lato(font: .light, size: 12)
                        Text("21.12")
                            .lato(font: .bold, size: 12)
                    }
                    .padding(.horizontal, 11)
                        .padding(.bottom, 4)
                        .background(.appBlack)
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                    
                }
            }
            HStack {
                ButtonView()
                SolidButton()
            }
            
        }
        .padding(.horizontal, 12)
        .padding(.top, 10)
        .padding(.bottom, 20)
        .background(.appRed)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

