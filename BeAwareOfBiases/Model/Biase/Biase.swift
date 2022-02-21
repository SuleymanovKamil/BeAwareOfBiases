//
//  Biase.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import Foundation

struct Biase: Hashable {
    let title: String
    let subtitle: String
    let description: String
    let image: String
    let type: BiasGroup
    
    static var biases: [Biase] = [
        Biase(title: "Фундаментальная ошибка атрибуции", subtitle: "Мы судим о других по личности и характеру, а себя по сутиации и внешним обстоятельствам", description: "Салли сегодня опоздала. Это потому, что она жутко ленива. Я сегодня опоздал. Это потому, что не сработал будильник.", image: "1", type: .memory),
        Biase(title: "Фундаментальная ошибка атрибуции", subtitle: "Мы судим о других по личности и характеру, а себя по сутиации и внешним обстоятельствам", description: "Салли сегодня опоздала. Это потому, что она жутко ленива. Я сегодня опоздал. Это потому, что не сработал будильник.", image: "1", type: .memory),
    ]
}

