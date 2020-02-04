//
//  UserData.swift
//  SwiftUITraining
//
//  Created by Lesedi on 2019/09/27.
//  Copyright © 2019 Lesedi. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
