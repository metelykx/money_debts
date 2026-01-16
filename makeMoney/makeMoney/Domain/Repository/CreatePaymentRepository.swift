//
//  CreatePaymentRepository.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation

protocol CreatePaymentRepository: AnyObject {
    func createPayment(payment: Payment) throws
}
