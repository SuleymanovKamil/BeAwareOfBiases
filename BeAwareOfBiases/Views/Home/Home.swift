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
            ZStack {
                Rubricator()
                    .zIndex(1)
                    .offset(y: -50)
                
                Cards
            }
            .background(Color.black.opacity(0.7).ignoresSafeArea())
            .edgesIgnoringSafeArea(.bottom)
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
    private var Cards: some View {
        Group {
            if !viewModel.biases.isEmpty {
                TabView {
                    ForEach(viewModel.biases.shuffled()) { biase in
                        BiaseCard(biase: biase)
                    }
                    .padding(.bottom, 20)
                }
                .tabViewStyle(.page(indexDisplayMode: viewModel.currentType == nil ? .never : .always))
            }
            Spacer()
        }
    }
}


