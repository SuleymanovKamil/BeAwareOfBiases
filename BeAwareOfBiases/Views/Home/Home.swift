//
//  Home.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack {
                Rubricator()
               
                ScrollView(.horizontal, showsIndicators: false) {
                        ForEach(0..<Biase.biases.count, id: \.self) { index in
                            VStack {
                                Text(Biase.biases[index].name)
                                
                                Image(Biase.biases[index].image)
                                
                                Text(Biase.biases[index].description)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .frame(width: UIScreen.main.bounds.width)
                        }
                }
               
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
