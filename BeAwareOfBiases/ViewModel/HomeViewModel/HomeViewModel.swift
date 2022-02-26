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
        currentType == nil ? Biase.biases : Biase.biases.filter({$0.type.rawValue == currentType?.title})
    }
    
     func shareAction() {
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else {
            return
        }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}
