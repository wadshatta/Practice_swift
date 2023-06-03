//
//  CircleImage.swift
//  Combining
//
//  Created by MacBook Pro on 02/06/2023.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
         image
            .resizable()
            .frame(width:250,height: 250)
            .cornerRadius(120)
            .overlay{
                Circle().stroke(.white,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("01_perm"))
    }
}
