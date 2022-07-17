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
                    .offset(y: -40)
                
                Cards
            }
            .background(Color.blue.ignoresSafeArea())
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
                    ForEach(viewModel.biases) { biase in
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


