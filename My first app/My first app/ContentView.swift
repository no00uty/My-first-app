//
//  ContentView.swift
//  My first app
//
//  Created by Natalia Glebova on 15.12.22.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    var body: some View {
        VStack {
            Text("Natalia Glebova")
                .foregroundColor(.blue)
                .font(.largeTitle)
                .padding(.top, 50)
            
            Text("Project manager")
                .foregroundColor(.black)
            
            Spacer()
            
            TabView(selection: $index) {
                            ForEach((1..<21), id: \.self) { index in
                                Image(String(index))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)).frame(height: 250)
            
            
            Button("Start over", action: {index = 0})
                .padding()
                .buttonStyle(.bordered)
                .tint(.blue)
            Link("LinkedIn Profile", destination: URL(string: "https://www.linkedin.com/in/natalia-glebova-113423113/")!)
                .foregroundColor(.black)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
