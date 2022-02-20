//
//  Biase.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import Foundation

struct Biase: Hashable {
    let name: String
    let description: String
    let image: String
}

extension Biase {
    static var biases: [Biase] = [
        Biase(name: "Фундаментальная ошибка атрибуции", description: "Салли сегодня опоздала. Это потому, что она жутко ленива. Я сегодня опоздал. Это потому, что не сработал будильник.", image: "1")
    ]
}
