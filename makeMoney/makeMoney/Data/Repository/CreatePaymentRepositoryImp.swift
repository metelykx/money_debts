//
//  CreatePaymentRepositoryImp.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation

class CreatePaymentRepositoryImp: CreatePaymentRepository {
    
    private let dataSource: CreatePaymentDataSource
    init(dataSource: CreatePaymentDataSource) {
        self.dataSource = dataSource
    }
    func createPayment(payment: Payment) throws {
        try dataSource.createNewPayment(payment: payment)
    }
}
