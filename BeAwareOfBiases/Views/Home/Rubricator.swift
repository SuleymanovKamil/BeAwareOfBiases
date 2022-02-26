//
//  Rubricator.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import SwiftUI

struct Rubricator: View {
    @EnvironmentObject private var viewModel: HomeViewModel
    var body: some View {
        VStack {
            Text("50 когнитивных искажений")
                .font(.title2)
                .bold()
                .foregroundColor(.white)
            
            LazyVGrid(columns: [GridItem(.flexible(minimum: 40, maximum: UIScreen.main.bounds.width / 3), spacing: 0), GridItem(.flexible(minimum: 40, maximum:UIScreen.main.bounds.width / 3), spacing: 0), GridItem(.flexible(minimum: 40, maximum: UIScreen.main.bounds.width / 3), spacing: 0)], alignment: .center, spacing: 0) {
                ForEach(0..<BiasType.biasTypes.count, id: \.self) { index in
                    Text(BiasType.biasTypes[index].title)
                        .offset(y: index < 2 ? -4 : 0)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width / 3, height: 50)
                        .background(BiasType.biasTypes[index].color.clipShape(CustomCorner(radius: 10, corners: [.topLeft, .topRight])))
                        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: -3)
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: -3)
                        .offset(y: index > 2 ? -8 : 0)
                        .rotation3DEffect(.degrees(viewModel.currentType?.title == BiasType.biasTypes[index].title ? 10 : 0), axis: (x: 1, y: 0, z: 0) )
                        .onTapGesture {
                            viewModel.currentType = BiasType.biasTypes[index]
                        }
                }
            }
            .offset(y: 8)
            .background(Color(hue: 1.0, saturation: 0.203, brightness: 0.683))
        }
        .padding(.top, 50)
        .frame(height: 100)
        .background(Color(hue: 1.0, saturation: 0.203, brightness: 0.683).ignoresSafeArea()
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 3)
                        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 3))
        .padding(.bottom, 18)
    }
}

struct Rubricator_Previews: PreviewProvider {
    static var previews: some View {
        Rubricator()
            .environmentObject(HomeViewModel())
    }
}
