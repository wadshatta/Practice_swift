//
//  MapView.swift
//  Combining
//
//  Created by MacBook Pro on 02/06/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate : CLLocationCoordinate2D
    @State private var region =  MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegin(coordinate)
            }
        
        
        
    }
    private func setRegin(_ coordinate:CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude:58.00932356265727 , longitude: 56.22919598462535))
    }
}
