//
//  HomeViewModel.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var currentType: BiasType?
    var biases: [Biase] {
        currentType == nil ? Biase.biases.shuffled() : Biase.biases.filter({$0.type.map({$0.rawValue}).contains(currentType?.title)})
    }
    
    func share(with biase: Biase) {
        
        let text = "Когнитивное искажение: " + biase.title.lowercased() + "."
        + "\n" + biase.subtitle
        + "\n" + "Пример: " +  biase.description
        
        let activityVC = UIActivityViewController(activityItems: [text], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}
