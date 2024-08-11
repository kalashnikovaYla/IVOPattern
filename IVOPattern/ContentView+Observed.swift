//
//  ContentView+Observed.swift
//  IVOPattern
//
//  Created by Юлия  on 11.08.2024.
//

import Foundation


extension ContentView {
    class Observed: ObservableObject {
        
        @Published var profile = Profile()
        
        func fetchProfile(completion: (Error?) -> ()) {
            let profile = Profile(name: "Alex")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self ] in
                self?.profile = profile
            }
        }
    }
}
