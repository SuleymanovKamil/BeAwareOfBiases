//
//  Biase.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import Foundation

struct Biase: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let subtitle: String
    let description: String
    let image: String
    let type: [BiasGroup]
    let url: String?
    
    static var biases: [Biase] = [
        Biase(title: "Фундаментальная ошибка атрибуции", subtitle: "Мы судим о других по личности и характеру, а себя по сутиации и внешним обстоятельствам", description: "Салли сегодня опоздала. Это потому, что она жутко ленива. Я сегодня опоздал. Это потому, что не сработал будильник.", image: "1", type: [.memory, .faith], url: "https://ru.wikipedia.org/wiki/%D0%A4%D1%83%D0%BD%D0%B4%D0%B0%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%BE%D1%88%D0%B8%D0%B1%D0%BA%D0%B0_%D0%B0%D1%82%D1%80%D0%B8%D0%B1%D1%83%D1%86%D0%B8%D0%B8"),
        Biase(title: "1Фундаментальная ошибка атрибуции", subtitle: "1Мы судим о других по личности и характеру, а себя по сутиации и внешним обстоятельствам", description: "1Салли сегодня опоздала. Это потому, что она жутко ленива. Я сегодня опоздал. Это потому, что не сработал будильник.", image: "1", type: [.memory], url: "https://ru.wikipedia.org/wiki/%D0%A4%D1%83%D0%BD%D0%B4%D0%B0%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%BE%D1%88%D0%B8%D0%B1%D0%BA%D0%B0_%D0%B0%D1%82%D1%80%D0%B8%D0%B1%D1%83%D1%86%D0%B8%D0%B8"),
    ]
}

