//
//  BiaseCard.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 21.02.2022.
//

import SwiftUI

struct BiaseCard: View {
    let biase: Biase
    @EnvironmentObject private var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            VStack {
                Text(biase.title)
                    .font(.headline)
                    .italic()
                    .padding(.top, 10)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(biase.subtitle)
                    .italic()
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 5)
            }
            .padding(.vertical, 10)
            .padding(.bottom, 10)
            
            Divider()
                .background(Color.white)
            
            Spacer()
            
            Image(systemName: biase.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.white)
            
            Spacer()
            
            Text(biase.description)
                .italic()
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 40)
            
            Divider()
                .background(Color.white)
            
            HStack {
                if biase.url != nil {
                    Link(destination: URL(string: biase.url ?? wikipedia)!){
                        Label("Подробнее", systemImage: "book")
                    }
                } else {
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    viewModel.currentType = nil
                }, label: {
                    Image(systemName: "dice")
                        .font(.largeTitle)
                        .offset(y: -30)
                })
                
                Spacer()
                
                Button(action: {
                    viewModel.share(with: biase)
                }, label: {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("Поделиться")
                    }
                })
            }
            .padding(.horizontal)
            .padding(.top, 40)
            
        }
        .foregroundColor(.white)
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width)
    }
    
    private let wikipedia = "https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D0%BA%D0%BE%D0%B3%D0%BD%D0%B8%D1%82%D0%B8%D0%B2%D0%BD%D1%8B%D1%85_%D0%B8%D1%81%D0%BA%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9"
}

struct BiaseCard_Previews: PreviewProvider {
    static var previews: some View {
        BiaseCard(biase: Biase.biases.first!)
            .environmentObject(HomeViewModel())
    }
}
