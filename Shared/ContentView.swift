//
//  ContentView.swift
//  Shared
//
//  Created by Edoardo Troianiello on 19/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Ciao ciao")
                    .padding()
                
                NavigationLink(destination: Page2_(), label: {Text("Page2")})
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
