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
                Link(destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!){
                    Label("Подробнее", systemImage: "book")
                }
                
                Spacer()
                
                Button(action: {
                    viewModel.shareAction()
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
        .foregroundColor(.secondary)
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
