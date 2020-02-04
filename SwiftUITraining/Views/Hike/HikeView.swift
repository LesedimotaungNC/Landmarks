//
//  HikeView.swift
//  SwiftUITraining
//
//  Created by Lesedi on 2019/09/29.
//  Copyright © 2019 Lesedi. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        
        // Combining animations using .asymmetric.
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .slide)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct HikeView: View {
    
    var hike: Hike
    
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(verbatim: hike.name)
                        .font(.headline)
                    Text(verbatim: hike.distanceText)
                }
                
                Spacer()

                Button(action: {
                    
                    withAnimation(.easeInOut(duration: 0.5)) {
                        
                        self.showDetail.toggle()
                        
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
//                        .animation(nil)
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
//                        .animation(.spring())
                }
            }
            //MARK:
            if showDetail == true {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView(hike: hikeData[0])
                .padding()
            Spacer()
        }
    }
}
