//
//  RotatedBadgeSymbol.swift
//  SwiftUITraining
//
//  Created by Lesedi on 2019/09/28.
//  Copyright © 2019 Lesedi. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle : Angle
    
    var body: some View {
       
        BadgeSymbol()
        .padding()
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
