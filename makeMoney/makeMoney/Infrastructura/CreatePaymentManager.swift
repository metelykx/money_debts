//
//  CreatePaymentManager.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation
import CoreData

class CreatePaymentManager: CreatePaymentDataSource {
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext = PersistentContainer.shared.persistentContainer.viewContext) {
        self.context = context
    }

    func createNewPayment(payment: Payment) throws {
        // Map Payment -> PaymentEntity
        let entity = PaymentMapper.toEntitie(from: payment, contex: context)
        // Fill the entity fields based on your model
        entity.id = payment.id
        entity.type = Int16(payment.type.rawValue)
        entity.title = payment.title
        entity.descriptionText = payment.descriptionText
        entity.paymentAmount = payment.paymentAmount
        entity.totalAmount = payment.totalAmout
        entity.dueDay = Int16(payment.dueDay ?? 0)
        entity.dueDate = payment.dueDate
        entity.isNotificationEnable = payment.isNotificationEnabled
        entity.createAdd = payment.createdAt

        // Save
        if context.hasChanges {
            try context.save()
        }
    }
}

final class PersistentContainer {

    static let shared = PersistentContainer()

    private init() {}

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "makeMoney")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()


}
