//
//  Renderer.swift
//  HelloMetal
//
//  Created by sho yoneda on 2021/09/20.
//

import Foundation
import MetalKit

class Renderer: NSObject, MTKViewDelegate {
    
    let parent: MetalView
    
    init(_ parent: MetalView){
        self.parent = parent
    }
    
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        
    }
    
    func draw(in view: MTKView) {

    }
}
