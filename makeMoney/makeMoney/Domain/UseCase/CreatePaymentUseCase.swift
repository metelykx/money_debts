//
//  CreatePaymentUseCase.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation

protocol CreatePaymentUseCase: AnyObject {
    func execute(payment: Payment) throws
}

class CreatePaymentUseCaseImp: CreatePaymentUseCase {
    
    private let repository: CreatePaymentRepository
    init(repository: CreatePaymentRepository) {
        self.repository = repository
    }
    func execute(payment: Payment) throws {
        try repository.createPayment(payment: payment)
    }
}
