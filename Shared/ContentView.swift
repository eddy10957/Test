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
                
                HStack{
                    NavigationLink(destination: Page2_(), label: {Text("Page2")})
                    
                    Rectangle()
                        .frame(width: 2, height: 15)
                    
                    NavigationLink(destination: Page3_(), label: {Text("Eddo")})
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
