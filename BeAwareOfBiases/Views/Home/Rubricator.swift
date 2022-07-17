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
        HStack {
            VStack {
                ForEach(0...2, id: \.self) { index in
                    Text(BiasType.biasTypes[index].title)
                        .font(.callout)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width / 4, height: 50)
                        .background(BiasType.biasTypes[index].color.clipShape(CustomCorner(radius: 10, corners: [.topRight, .bottomRight])))
                        .onTapGesture {
                            viewModel.currentType = BiasType.biasTypes[index]
                        }
                }
            }
            
            Spacer()
            
            VStack {
                ForEach(3..<BiasType.biasTypes.count, id: \.self) { index in
                    Text(BiasType.biasTypes[index].title)
                        .font(index == 3 ? .caption : .callout)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width / 4, height: 50)
                        .background(BiasType.biasTypes[index].color.clipShape(CustomCorner(radius: 10, corners: [.topLeft, .bottomLeft])))
                        .onTapGesture {
                            viewModel.currentType = BiasType.biasTypes[index]
                        }
                }
            }
        }
    }
}

struct Rubricator_Previews: PreviewProvider {
    static var previews: some View {
        Rubricator()
            .environmentObject(HomeViewModel())
    }
}
