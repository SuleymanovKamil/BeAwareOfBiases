//
//  BiasType.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import SwiftUI

struct BiasType: Hashable {
    let title: String
    let color: Color
    
    static var biasTypes: [BiasType] = [
        BiasType(title: BiasGroup.memory.rawValue, color: Color("member")),
        BiasType(title: BiasGroup.social.rawValue, color: Color("social")),
        BiasType(title: BiasGroup.study.rawValue, color: Color("study")),
        BiasType(title: BiasGroup.belief.rawValue, color: Color("belief")),
        BiasType(title: BiasGroup.money.rawValue, color: Color("money")),
        BiasType(title: BiasGroup.politic.rawValue, color: Color("politic"))
    ]
}

enum BiasGroup: String, CaseIterable {
    case memory = "Память"
    case social = "Социум"
    case study = "Обучение"
    case belief = "Убеждения"
    case money = "Деньги"
    case politic = "Политика"
}
