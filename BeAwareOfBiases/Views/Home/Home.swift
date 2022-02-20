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
                
               Spacer(minLength: 100)
                
                ScrollView(.horizontal, showsIndicators: false) {
                        ForEach(0..<Biase.biases.count, id: \.self) { index in
                            VStack (spacing: 50) {
                                Text(Biase.biases[index].name)
                                    .padding(.top, 50)
                                
                                Image(Biase.biases[index].image)
                                
                                Text(Biase.biases[index].description)
                                    .fixedSize(horizontal: false, vertical: true)
                                
                               Spacer()
                            }
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color.white.cornerRadius(20).shadow(radius: 10))
                        }
                    .padding()
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
