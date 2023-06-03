//
//  LandmarkList.swift
//  Combining
//
//  Created by MacBook Pro on 02/06/2023.
//

import SwiftUI




struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filterdLandmarks : [Landmark]{
        modelData.landmarks.filter {landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filterdLandmarks){ landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
          
            .navigationTitle("Landmarks")
        }
        
     }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {

          LandmarkList()
            .environmentObject(ModelData())

      }
}
