//
//  AddView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 08.01.2026.
//

import SwiftUI

struct AddView: View {
    
    @State var nameText: String = ""
    @State var isNotification: Bool = false
    @State var payType: PayType = .mounthly
    @State var isShowCalendar = false
    @State var date: Date = .now
    @State var isAdded: Bool = false
    @State var viewModel: AddViewModel = Assembly.createAddViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 27) {
            Text("Добавить платеж")
                .lato(font: .bold, size: 18)
                .foregroundStyle(.appYellow)
            
            if !isAdded {
                VStack(alignment: .center, spacing: 27) {
                    VStack(alignment: .leading, spacing: 25) {
                        HStack(spacing: 23) {
                            SolidButton(text: "Каждый месяц", color: .appYellow, solid: .appYellow, isFull: payType == .mounthly) {
                                payType = .mounthly
                            }
                            SolidButton(text: "Разово", color: .appYellow, solid: .appYellow, isFull: payType == .oneTime) {
                                payType = .oneTime
                            }
                        }
                        
                        
                        switch payType {
                        case .mounthly:
                            HStack(spacing: 4) {
                                DatePicker("", selection: $date, displayedComponents: [.date])
                                    .frame(width: 25)
                                    .clipped()
                                    .overlay {
                                        Text("\(date.day)")
                                            .underline()
                                            .lato(font: .bold, size: 16)
                                            .foregroundStyle(.appMint)
                                            .frame(width: 27)
                                            .padding(.vertical, 4)
                                            .background(.appBlack)
                                            .allowsHitTesting(false)
                                    }
                                
                                Text("числа")
                                    .lato(font:.light, size: 14)
                                    .foregroundStyle(.appMint)
                            }
                        case .oneTime:
                            HStack(spacing: 4) {
                                Text("До")
                                    .foregroundStyle(.appMint)
                                    .lato(font:.light, size: 14)
                                
                                DatePicker("", selection: $date, displayedComponents: [.date])
                                    .frame(width: 150)
                                    .clipped()
                                    .overlay {
                                        Text(date.dayMonthYear)
                                            .underline()
                                            .lato(font: .bold, size: 16)
                                            .foregroundStyle(.appMint)
                                            .frame(width: 152)
                                            .padding(.vertical, 4)
                                            .background(.appBlack)
                                            .allowsHitTesting(false)
                                    }
                                
                            }
                        }
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        FieldView(placeHolder: "Название платежа", text: $nameText)
                        
                        switch payType {
                        case .mounthly:
                            HStack(spacing: 10) {
                                FieldView(placeHolder: "Общая сумма", text: $nameText)
                                FieldView(placeHolder: "Ежемесячный платеж", text: $nameText)
                            }
                        case .oneTime:
                            FieldView(placeHolder: "Общая сумма", text: $nameText)
                        }
                        
                        FieldView(placeHolder: "Описание", text: $nameText, isTextField: false)
                    }
                    HStack {
                        Text("Уведомление о платеже")
                            .lato(font: .regular, size: 14)
                            .foregroundStyle(.appYellow)
                            .offset(y: -3)
                        
                        Spacer()
                        RadioButtonView(isSelected: $isNotification)
                    }.padding(.horizontal, 10)
                    
                    Spacer()
                    ButtonView(text: "Добавить", color: .appYellow, fillColor: .appBlack)
                }
            } else {
                VStack {
                    Spacer()
                    VStack(spacing: 55){
                        Image(systemName: "checkmark.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 127, height: 127)
                            .foregroundStyle(.appYellow)
                        Text("Платеж добавлен")
                            .lato(font: .bold, size: 22)
                            .foregroundStyle(.appYellow)
                    }
                }
            }
            
            
            
            Spacer()
            ButtonView(text: "Добавить", color: .appBlack, fillColor: .appYellow) {
                viewModel.createNewPayment()
            }
            
        }.padding(.horizontal, 10)
            .padding(.vertical, 20)
            .frame(maxWidth: .infinity)
        .background(.appBlack)
        
        
    }
}

#Preview {
    AddView()
}


