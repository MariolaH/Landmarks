//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mariola Hullings on 8/25/23.
//

import SwiftUI
//State is a value, or a set of values, that can change over time, and that affects a view’s behavior, content, or layout. You use a property with the @State attribute to add state to a view.

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { Landmark in (!showFavoritesOnly || Landmark.isFavorite)
            
        }
    }
    var body: some View {
        NavigationView {
            //{ landmark in ... }: This is a closure that the List uses to generate the content for each row in the list. For each landmark in the landmarks array, the closure is executed.
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                NavigationLink {
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
