//
//  ContentView.swift
//  IVOPattern
//
//  Created by Юлия  on 11.08.2024.
//

import SwiftUI
//https://www.youtube.com/watch?v=SOA0IT7sxvc
struct ContentView: View {
    
    @StateObject private var observed = Observed()
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, \(observed.profile.name)!")
                .onAppear {
                    fetchProfile()
                }
        }
        .padding()
    }
    
    func fetchProfile() {
        observed.fetchProfile { error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
        }
    }
}
/*
 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

 */
