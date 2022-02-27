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
        Biase(title: "Фундаментальная ошибка атрибуции", subtitle: "Мы судим о других по личности и характеру, а себя по сутиации и внешним обстоятельствам", description: "Салли сегодня опоздала. Это потому, что она жутко ленива. Я сегодня опоздал. Это потому, что не сработал будильник.", image: "person.crop.circle", type: [.social, .belief], url: "https://ru.wikipedia.org/wiki/%D0%A4%D1%83%D0%BD%D0%B4%D0%B0%D0%BC%D0%B5%D0%BD%D1%82%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D0%BE%D1%88%D0%B8%D0%B1%D0%BA%D0%B0_%D0%B0%D1%82%D1%80%D0%B8%D0%B1%D1%83%D1%86%D0%B8%D0%B8"),
        Biase(title: "Эгоистическое искажение", subtitle: "Мы приписываем успех своим способностям и усилиям, а неудачи - внешним факторам.", description: "Вы получили награду благодаря упорному труду, а не помощи или удаче. Но провалили тест, потому что не выспались.", image: "graduationcap.circle", type: [.social, .belief, .money], url: "https://ru.wikipedia.org/wiki/%D0%AD%D0%B3%D0%BE%D0%B8%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B0%D1%8F_%D0%BF%D0%BE%D0%B3%D1%80%D0%B5%D1%88%D0%BD%D0%BE%D1%81%D1%82%D1%8C#:~:text=%D0%AD%D0%B3%D0%BE%D0%B8%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BF%D0%BE%D0%B3%D1%80%D0%B5%D1%88%D0%BD%D0%BE%D1%81%D1%82%D1%8C%20%D0%B8%D0%BB%D0%B8%20%D0%AD%D0%B3%D0%BE%D0%B8%D1%81%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5%20%D0%BF%D1%80%D0%B5%D0%B4%D1%83%D0%B1%D0%B5%D0%B6%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5,%2C%20%D0%B0%20%D0%BD%D0%B5%D1%83%D0%B4%D0%B0%D1%87%D0%B8%20%E2%80%94%20%D0%B2%D0%BD%D0%B5%D1%88%D0%BD%D0%B8%D0%BC%20%D1%84%D0%B0%D0%BA%D1%82%D0%BE%D1%80%D0%B0%D0%BC."),
        Biase(title: "Ингрупповой фаворитизм", subtitle: "Мы предпочитаем содействовать членам собственной группы в противовес членам другой группы.", description: "Этот коллега с вами в одном отделе, поэтому он лучше, чем коллега из другого отдела.", image: "person.3", type: [.social, .belief, .politic], url: "https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D0%B3%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B2%D0%BE%D0%B9_%D1%84%D0%B0%D0%B2%D0%BE%D1%80%D0%B8%D1%82%D0%B8%D0%B7%D0%BC"),
        Biase(title: "Эффект присоединения к большинству", subtitle: "Популярность определённых убеждений увеличивается по мере того, как их принимает всё больше людей.", description: "Салли верит, что спиннер полезен  её детям. Джон тоже.", image: "lifepreserver", type: [.social, .belief, .politic], url: "https://ru.wikipedia.org/wiki/%D0%AD%D1%84%D1%84%D0%B5%D0%BA%D1%82_%D0%BF%D1%80%D0%B8%D1%81%D0%BE%D0%B5%D0%B4%D0%B8%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F_%D0%BA_%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%BD%D1%81%D1%82%D0%B2%D1%83"),
        Biase(title: "Групповое мышление", subtitle: "Стремление к конформизму и гармонии внутри группы приводят к некорректному или нерациональному принятию решений.", description: "Салли хочет мороженное. Джон хочет купить футболку. Вы предлагаете им приобрести футболки с изображением мороженного.", image: "person.2.wave.2", type: [.social, .belief, .politic], url: "https://ru.wikipedia.org/wiki/%D0%93%D1%80%D1%83%D0%BF%D0%BF%D0%BE%D0%B2%D0%BE%D0%B5_%D0%BC%D1%8B%D1%88%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5"),
        
        Biase(title: "Эффект ореола", subtitle: "Если вы заметили в человеке положительную черту, это впечатление отразится и на восприятии других его качеств. (Тоже самое относиться и к отрицательным чертам).", description: "Он не может быть злым, ведь он такой красивый.", image: "poweroff", type: [.social, .belief, .politic], url: "https://ru.wikipedia.org/wiki/%D0%93%D0%B0%D0%BB%D0%BE-%D1%8D%D1%84%D1%84%D0%B5%D0%BA%D1%82"),
        Biase(title: "Моральная удача", subtitle: "Мы даем моральную оценку в зависимости от исхода какого-то действия, даже если человек никак не мог повлиять на исход.", description: "Эта страна победила в войне, потому что морально превосходила побежденных.", image: "tropicalstorm", type: [.memory, .social, .belief, .politic], url: nil),
        Biase(title: "Ложный консенсус", subtitle: "Люди склонны полагать, что все остальные думают точно так же, как они сами.", description: "Все так думают!", image: "circle.hexagongrid.fill", type: [.belief], url: "https://ru.wikipedia.org/wiki/%D0%AD%D1%84%D1%84%D0%B5%D0%BA%D1%82_%D0%BB%D0%BE%D0%B6%D0%BD%D0%BE%D0%B3%D0%BE_%D0%BA%D0%BE%D0%BD%D1%81%D0%B5%D0%BD%D1%81%D1%83%D1%81%D0%B0"),
        Biase(title: "Проклятие знания", subtitle: "Когда мы что-то знаем, то уверены, что все остальные тоже это знают.", description: "Учитель уже обладает знанием, которое он пытается передать, но способ передачи знания может не подходить тем, у кого этого знания нет.", image: "book.closed.circle", type: [.memory,.belief, .social, .study], url: "https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%BE%D0%BA%D0%BB%D1%8F%D1%82%D0%B8%D0%B5_%D0%B7%D0%BD%D0%B0%D0%BD%D0%B8%D1%8F"),
        Biase(title: "Эффект прожектора", subtitle: "Мы переоцениваем, насколько люди обращают внимание на наше поведение и внешний вид.", description: "Салли переживает, что все заметят, какая у неё дурацкая футболка с мороженым.", image: "shareplay", type: [.memory,.social], url: "https://ru.wikipedia.org/wiki/%D0%AD%D1%84%D1%84%D0%B5%D0%BA%D1%82_%D0%BF%D1%80%D0%BE%D0%B6%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%B0"),
        
        Biase(title: "Эвристика доступности", subtitle: "При вынесении суждений мы полагаемся на примеры, которые сразу приходят на ум.", description: "Решая, в какой магазин идти, мы идем в тот, который чаще всего видели в рекламе.", image: "person.icloud", type: [.memory, .study, .politic, .belief, .politic ], url: "https://ru.wikipedia.org/wiki/%D0%AD%D0%B2%D1%80%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%B0_%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%BE%D1%81%D1%82%D0%B8#:~:text=%D0%AD%D0%B2%D1%80%D0%B8%D1%81%D1%82%D0%B8%D0%BA%D0%B0%20%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D0%BE%D1%81%D1%82%D0%B8%20(%D0%B0%D0%BD%D0%B3%D0%BB.,%D0%BA%D0%B0%D0%B6%D0%B5%D1%82%D1%81%D1%8F%20%D1%82%D0%BE%2C%20%D1%87%D1%82%D0%BE%20%D0%BB%D0%B5%D0%B3%D1%87%D0%B5%20%D0%B2%D1%81%D0%BF%D0%BE%D0%BC%D0%B8%D0%BD%D0%B0%D0%B5%D1%82%D1%81%D1%8F."),
        Biase(title: "Защитная атрибуция", subtitle: "Как свидетель, мы будем винить жертву несчастного случая, тем меньше, чем больше она похоже на нас.", description: "Салли сидела в телефоне и не затормозила на светофоре, врезавшись в машину. Я сам часто переписываюсь во время езды, поэтому тут явно виноват второй водитель!", image: "shield", type: [.memory, .social, .politic], url: "https://buildwiki.ru/wiki/Defensive_attribution_hypothesis"),
        Biase(title: "Вера в справедливый мир", subtitle: "Мы склонны верить, что мир справедлив. Поэтому акты несправедливости заслужены.", description: "У Салли украли кошелек, потому что она грубила Фрэнсис и испортила себе карму.", image: "globe", type: [.memory, .social, .belief, .politic], url: "https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D1%80%D0%B0_%D0%B2_%D1%81%D0%BF%D1%80%D0%B0%D0%B2%D0%B5%D0%B4%D0%BB%D0%B8%D0%B2%D1%8B%D0%B9_%D0%BC%D0%B8%D1%80"),
        Biase(title: "Наивный реализм", subtitle: "Мы видим мир вокруг нас объективно, а другие люди, не согласные с нами, просто иррациональны или предвзяты.", description: "Только я знаю, как все на самом деле, остальные просто тупые.", image: "camera.circle", type: [.memory, .social, .belief, .politic], url: "https://ru.wikipedia.org/wiki/%D0%9D%D0%B0%D0%B8%D0%B2%D0%BD%D1%8B%D0%B9_%D1%80%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%BC"),
        Biase(title: "Наивный цинизм", subtitle: "Мы объективны, а другие слишком эгоцентричны в своих намерениях или действиях.", description: "Салли мила только потому, что ей от меня что-то нужно.", image: "gift.circle", type: [.memory, .social, .belief, .politic], url: "https://wikiboard.ru/wiki/Na%C3%AFve_cynicism"),
        
        
        
    ]
}

