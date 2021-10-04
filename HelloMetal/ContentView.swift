//
//  ContentView.swift
//  HelloMetal
//
//  Created by sho yoneda on 2021/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MetalView().edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
