//
//  AddViewModel.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import SwiftUI
import Combine

class AddViewModel: ObservableObject {
    private let createUseCase: CreatePaymentUseCase
    init(createUseCase: CreatePaymentUseCase) {
        self.createUseCase = createUseCase
    }
    
    @Published var payment: Payment?
    
    func createNewPayment() {
        do {
            try createUseCase.execute(payment: Payment(
                id: UUID().uuidString,
                type: .mounthly,
                title: "dee",
                descriptionText: "dede",
                paymentAmount: 10,
                totalAmout: 20,
                isNotificationEnabled: true,
                createdAt: .now
            ))
        } catch {
            print(error.localizedDescription)
        }
    }
}
