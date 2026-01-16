//
//  PaymentMapper.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation
import CoreData

struct PaymentMapper {
    static func toDomain(from entitie: PaymentEntity) -> Payment {
        let payment = Payment(
            id: entitie.id ?? UUID().uuidString,
            type: PayType(rawValue: Int(entitie.type)) ?? .mounthly,
            title: entitie.title ?? "",
            descriptionText: entitie.descriptionText ?? "",
            paymentAmount: entitie.paymentAmount,
            totalAmout: entitie.totalAmount,
            dueDay: entitie.dueDay == 0 ? nil : Int(entitie.dueDay),
            dueDate: entitie.dueDate,
            isNotificationEnabled: entitie.isNotificationEnable,
            createdAt: entitie.createAdd ?? .now
        )
        return payment
    }
    
    static func toEntitie(from: Payment, contex: NSManagedObjectContext) -> PaymentEntity {
        let entity = PaymentEntity(context: contex)
        entity.id = from.id
        entity.type = Int16(from.type.rawValue)
        entity.title = from.title
        entity.descriptionText = from.descriptionText
        entity.paymentAmount = from.paymentAmount
        entity.totalAmount = from.totalAmout
        entity.dueDay = Int16(from.dueDay ?? 0)
        entity.dueDate = from.dueDate
        entity.isNotificationEnable = from.isNotificationEnabled
        entity.createAdd = from.createdAt
        return entity
    }
}
