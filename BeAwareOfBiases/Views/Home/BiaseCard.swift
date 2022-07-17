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
                    .foregroundColor(.primary)
                    .padding(.top, 30)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(biase.subtitle)
                    .italic()
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 10)
            }
            .padding(.top, 10)
            
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
                .padding(.bottom)
            
            HStack {
                if biase.url != nil {
                    Link(destination: URL(string: biase.url ?? wikipedia)!){
                        Label("Подробнее", systemImage: "book")
                    }
                }
                
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
            .foregroundColor(.primary)
            .padding(.horizontal)
            .padding(.bottom, 30)
            
        }
        .foregroundColor(.secondary)
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width)
        .overlay(
            Rectangle()
                .stroke(Color.secondary, lineWidth: 0.5)
                .clipShape(CustomCorner(radius: 20, corners: [.bottomLeft, .bottomRight]))
                .shadow(radius: 10)
        )
    }
   
    private let wikipedia = "https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D0%BA%D0%BE%D0%B3%D0%BD%D0%B8%D1%82%D0%B8%D0%B2%D0%BD%D1%8B%D1%85_%D0%B8%D1%81%D0%BA%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9"
}

struct BiaseCard_Previews: PreviewProvider {
    static var previews: some View {
        BiaseCard(biase: Biase.biases.first!)
            .environmentObject(HomeViewModel())
    }
}
