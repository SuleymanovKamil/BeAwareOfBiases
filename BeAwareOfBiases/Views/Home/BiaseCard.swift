//
//  BiaseCard.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 21.02.2022.
//

import SwiftUI

struct BiaseCard: View {
    let biase: Biase
    var body: some View {
        VStack {
            Text(biase.title)
                .font(.headline)
                .padding(.top, 30)
                .fixedSize(horizontal: false, vertical: true)
            
            Text(biase.subtitle)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, 10)
            
            Spacer()
            
            Image(biase.image)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            
            Spacer()
            
            Text(biase.description)
                .italic()
                .fixedSize(horizontal: false, vertical: true)
                .padding(.bottom, 40)
        }
        .foregroundColor(.secondary)
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width - 30)
        .background(Color.white.cornerRadius(20).shadow(radius: 10))
    }
}

struct BiaseCard_Previews: PreviewProvider {
    static var previews: some View {
        BiaseCard(biase: Biase.biases.first!)
    }
}
