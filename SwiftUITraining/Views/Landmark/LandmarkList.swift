//
//  LandmarList.swift
//  SwiftUITraining
//
//  Created by Lesedi on 2019/09/26.
//  Copyright © 2019 Lesedi. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData : UserData
    
    
    var body: some View {
            List{
                Toggle(isOn: $userData.showFavoritesOnly){
                    Text("Favourites Only")
                }
                ForEach(userData.landmarks) { landmark in
            
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandmarList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
        .environmentObject(UserData())
    }
}
