//
//  BiaseCardMini.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 21.02.2022.
//

import SwiftUI

struct BiaseCardMini: View {
    let biase: Biase
    var body: some View {
        VStack {
            Text(biase.title)
                .font(.callout)
                .bold()
                .padding(.top, 20)
                .fixedSize(horizontal: false, vertical: true)
      
            Image(biase.image)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Spacer()
        }
        .foregroundColor(.secondary)
        .padding(.horizontal)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.secondary, lineWidth: 1)
                .shadow(radius: 10)
        )
    }
}

struct BiaseCardMini_Previews: PreviewProvider {
    static var previews: some View {
        BiaseCardMini(biase: Biase.biases.first!)
    }
}
