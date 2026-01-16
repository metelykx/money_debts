//
//  CreatePaymentDataSource.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation

protocol CreatePaymentDataSource {
    func createNewPayment(payment: Payment) throws
}
