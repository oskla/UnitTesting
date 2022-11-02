//
//  ContentView.swift
//  UnitTesting
//
//  Created by Oskar Larsson on 2022-11-02.
//

import SwiftUI

struct ContentView: View {
    
@StateObject var viewModel = ViewModel()
    
    var body: some View {
      
        ZStack {
            Color(.systemGray6)
            VStack(alignment: .center) {
                
                Text(viewModel.convertedValue).bold()
                
                TextField("", text: $viewModel.fromEuro).textFieldStyle(.roundedBorder).padding()
                
                if viewModel.errorMessage != "" {
                    Text(viewModel.errorMessage).bold().foregroundColor(.red).accessibilityIdentifier("errorMessage")
                }
                
                Button("Convert") {
                    viewModel.convertToUSD()
                }.buttonStyle(.borderedProminent).accessibilityIdentifier("convertButton")

            }.frame(width: 320, height: 200).background(.white).cornerRadius(9)
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
