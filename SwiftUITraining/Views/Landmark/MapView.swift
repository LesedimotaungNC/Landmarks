//
//  MapView.swift
//  SwiftUITraining
//
//  Created by Lesedi on 2019/09/26.
//  Copyright © 2019 Lesedi. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
               /*^^^^ Use this to make an instance of a UIKit view.
                    It takes in two functions.
                    1: makeUIView() which returns a UIKit View. also takes in a context which is a type alias of UIViewRepresentableContext<Self>
                    2: updateUIView() which updates the chosen UIKitView to the latest configaration.
                */
    
    var coordinate: CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ view: MKMapView, context: Context) {
   
        
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
