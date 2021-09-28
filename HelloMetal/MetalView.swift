//
//  MetalView.swift
//  HelloMetal
//
//  Created by sho yoneda on 2021/09/28.
//

import SwiftUI
import MetalKit

struct MetalView: UIViewRepresentable{
    // MTKViewを表示する
    typealias UIViewType = MTKView
    
    func makeUIView(context: Context) -> MTKView {
        let view = MTKView()
        view.delegate = context.coordinator
        return view
    }
    
    // ビューの更新処理
    func updateUIView(_ uiView: MTKView, context: Context) {
    }
    
    // コーディネーターを作る
    func makeCoordinator() -> Renderer {
        return Renderer(self)
    }
}

struct MetalVIew_Previews: PreviewProvider {
    static var previews: some View {
        MetalView()
    }
}
