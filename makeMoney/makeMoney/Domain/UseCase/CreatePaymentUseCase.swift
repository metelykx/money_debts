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
    func execute(payment: Payment) {
        <#code#>
    }
}
