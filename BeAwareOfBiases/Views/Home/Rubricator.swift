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
                        .frame(width: viewModel.currentType == BiasType.biasTypes[index] ? UIScreen.main.bounds.width / 3.8 : UIScreen.main.bounds.width / 3.9, height: 40)
                        .background(BiasType.biasTypes[index].color.clipShape(CustomCorner(radius: 10, corners: [.topRight, .bottomRight])))
                        .offset(x: viewModel.currentType == BiasType.biasTypes[index] ? 0 : -10)
                        .onTapGesture {
                            withAnimation {
                                viewModel.currentType = BiasType.biasTypes[index]
                            }
                        }
                }
            }
            
            Spacer()
            
            VStack {
                ForEach(3..<BiasType.biasTypes.count, id: \.self) { index in
                    Text(BiasType.biasTypes[index].title)
                        .font(index == 3 ? .caption : .callout)
                        .foregroundColor(.white)
                        .frame(width: viewModel.currentType == BiasType.biasTypes[index] ? UIScreen.main.bounds.width / 3.8 : UIScreen.main.bounds.width / 3.9, height: 40)
                        .background(BiasType.biasTypes[index].color.clipShape(CustomCorner(radius: 10, corners: [.topLeft, .bottomLeft])))
                        .offset(x: viewModel.currentType == BiasType.biasTypes[index] ? 0 : 10)
                        .onTapGesture {
                            withAnimation {
                                viewModel.currentType = BiasType.biasTypes[index]
                            }
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
