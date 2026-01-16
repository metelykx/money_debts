//
//  Payment.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation

struct Payment: Identifiable {
    
    let id: String
    let type: PayType
    var title: String
    var descriptionText: String
    var paymentAmount: Double
    var totalAmout: Double
    var dueDay: Int?
    var dueDate: Date?
    var isNotificationEnabled: Bool
    var createdAt: Date
    
}


