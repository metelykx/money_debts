//
//  Assembly.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 16.01.2026.
//

import Foundation

class Assembly {
    static func createManViewModel() {
       //
    }
    
    static func createAddViewModel() -> AddViewModel {
        
        let manager = CreatePaymentManager()
        let repo = CreatePaymentRepositoryImp(dataSource: manager)
        let useCase = CreatePaymentUseCaseImp(repository: repo)
        return AddViewModel(createUseCase: useCase)
    }
}
