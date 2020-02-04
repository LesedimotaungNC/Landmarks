//
//  BadgeSymbol.swift
//  SwiftUITraining
//
//  Created by Lesedi on 2019/09/28.
//  Copyright © 2019 Lesedi. All rights reserved.
//

import SwiftUI

struct BadgeSymbol: View {
//    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
    static let symbolColor = Color(red: 255.0 / 255, green: 255.0 / 255, blue: 255.0 / 255)
    var body: some View {
        
        GeometryReader { geometry in
                Path { path in
                    let width = min(geometry.size.width, geometry.size.height)
                    let height = width * 0.75
                    let middle = width / 2
                    // fiddle with these to get certain shapes.
                    let spacing = width * 0.5
                    let topWidth = 0.169 * width
                    let topHeight = 0.220 * height
                    
                    
                    
                    path.addLines([
                        CGPoint(x: middle, y: spacing),
                        CGPoint(x: middle - topWidth, y: topHeight - spacing),
                        CGPoint(x: middle, y: topHeight / 2 + spacing),
                        CGPoint(x: middle + topWidth, y: topHeight - spacing),
                        CGPoint(x: middle, y: spacing)
                    ])
                    
                    path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                    path.addLines([
                        CGPoint(x: middle - topWidth, y: topHeight + spacing),
                        CGPoint(x: spacing, y: height - spacing),
                        CGPoint(x: width - spacing, y: height - spacing),
                        CGPoint(x: middle + topWidth, y: topHeight + spacing),
                        CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                    ])
            }
            .fill(Self.symbolColor)
        }
    }
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
