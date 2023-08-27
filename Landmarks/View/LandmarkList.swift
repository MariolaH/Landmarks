//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mariola Hullings on 8/25/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            //{ landmark in ... }: This is a closure that the List uses to generate the content for each row in the list. For each landmark in the landmarks array, the closure is executed.
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
