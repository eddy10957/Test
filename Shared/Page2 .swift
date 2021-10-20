//
//  Page2 .swift
//  Test
//
//  Created by Andrea Masturzo on 19/10/21.
//

import SwiftUI


// Single cell structure
struct Cell: View {
    
    @State var check = false
    @State var sheetPresented = false
    
    var body: some View {
        HStack {
            
            // Check button on the left of the cell
                Image(systemName: check ? "checkmark.circle.fill" : "circle")
                    .font(.title)
                    .onTapGesture {
                        check.toggle()
                    }
                
                .padding()
            Spacer()
            
            VStack{
                Text("ToDoTitle")
                    .font(.title)
                Text("Description")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            
            // Info button on the right of the cell
            Image(systemName: sheetPresented ? "info.circle.fill" : "info.circle")
                    .font(.title)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        sheetPresented.toggle()
                    }
                .padding()
        }
        if sheetPresented == true {
            sheetView()
        }
    }
    
}


// SheetView
struct sheetView: View {
    
    var body: some View {
        Text("This will be a full view")
    }
}

struct Page2_: View {
    
    // List
    var body: some View {
        NavigationView {
            List(0 ..< 6) { item in
                Cell()
            }
        }
    }
}

struct Page2__Previews: PreviewProvider {
    static var previews: some View {
        Page2_()
    }
}
