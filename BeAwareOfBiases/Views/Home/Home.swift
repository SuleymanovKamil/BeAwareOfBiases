//
//  Home.swift
//  BeAwareOfBiases
//
//  Created by Камиль Сулейманов on 20.02.2022.
//

import SwiftUI

struct Home: View {
    @StateObject private var viewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Rubricator()

                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 40, maximum: UIScreen.main.bounds.width / 2 - 10), spacing: 0), GridItem(.flexible(minimum: 40, maximum: UIScreen.main.bounds.width / 2 - 10), spacing: 10),], alignment: .center, spacing: 10) {
                        ForEach(viewModel.currentType == nil ? Biase.biases : Biase.biases.filter({$0.type.rawValue == viewModel.currentType?.title}), id: \.self) { biase in
                            BiaseCardMini(biase: biase)
                                .frame(height: 100)
                        }
                        .padding(.top, 70)
                    }
                }
                Spacer()
//                tableViewCards
            }
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension Home {
    private var tableViewCards: some View {
        TabView {
            ForEach(viewModel.currentType == nil ? Biase.biases : Biase.biases.filter({$0.type.rawValue == viewModel.currentType?.title}), id: \.self) { biase in
                BiaseCard(biase: biase)
            }
            .padding()
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }

}

