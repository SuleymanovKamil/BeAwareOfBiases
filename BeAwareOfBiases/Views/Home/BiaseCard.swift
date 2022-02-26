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
        VStack(spacing: 50) {
            VStack {
                Text(biase.title)
                    .font(.headline)
                    .padding(.top, 30)
                .fixedSize(horizontal: false, vertical: true)
                
                Text(biase.subtitle)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 10)
            }
            
            Image(biase.image)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            
           
            
            Text(biase.description)
                .italic()
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 40)
        
            HStack {
                Link(destination: URL(string: biase.url ?? "https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D0%BA%D0%BE%D0%B3%D0%BD%D0%B8%D1%82%D0%B8%D0%B2%D0%BD%D1%8B%D1%85_%D0%B8%D1%81%D0%BA%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B9")!){
                    Label("Подробнее", systemImage: "book")
                }
                
                Spacer()
                
                Button(action: {
                    viewModel.shareAction(text: "Когнитивное искажение: " + biase.title + ". " + biase.subtitle + ". Пример: " +  biase.description)
                }, label: {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("Поделиться")
                    }
                })
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .foregroundColor(.black)
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color(hue: 1.0, saturation: 0.047, brightness: 0.878))
        .overlay(
            Rectangle()
                .stroke(Color.secondary, lineWidth: 0.5)
                .shadow(radius: 10)
        )
    }
}

struct BiaseCard_Previews: PreviewProvider {
    static var previews: some View {
        BiaseCard(biase: Biase.biases.first!)
            .environmentObject(HomeViewModel())
    }
}
