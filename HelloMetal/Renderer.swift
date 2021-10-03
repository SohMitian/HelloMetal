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
    var commandQueue: MTLCommandQueue?
    
    init(_ parent: MetalView){
        self.parent = parent
    }
    
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        
    }
    
    func draw(in view: MTKView) {
        guard let cmdBuffer = self.commandQueue?.makeCommandBuffer() else {
            return
        }
        
        guard let renderPassDesc = view.currentRenderPassDescriptor else {
            return
        }
        
        guard let encorder = cmdBuffer.makeRenderCommandEncoder(descriptor: renderPassDesc) else {
            return
        }
        
        encorder.endEncoding()
        
        if let drawable = view.currentDrawable {
            cmdBuffer.present(drawable)
        }
        
        cmdBuffer.commit()
    }
    
    func setup(device: MTLDevice) {
        self.commandQueue = device.makeCommandQueue()
    }
}
