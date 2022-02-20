//
//  BiasType.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import SwiftUI

struct BiasType {
    let title: LocalizedStringKey
    let color: Color
}

extension BiasType {
    static var biasTypes: [BiasType] = [
        BiasType(title: LocalizedStringKey("Память"), color: Color("member")),
        BiasType(title: LocalizedStringKey("Социум"), color: Color("social")),
        BiasType(title: LocalizedStringKey("Обучение"), color: Color("study")),
        BiasType(title: LocalizedStringKey("Вера"), color: Color("faith")),
        BiasType(title: LocalizedStringKey("Деньги"), color: Color("money")),
        BiasType(title: LocalizedStringKey("Политика"), color: Color("politic")),
    ]
}
