//
//  Circles.swift
//  TrafficLight
//
//  Created by Олеся on 16.10.2020.
//

import SwiftUI

struct GreenCircle: View {
    let opacit: Double
    
    var body: some View {
        Color(.systemGreen)
            
            .frame(width: 125, height: 125)
            .clipShape(Circle())
            .opacity(opacit)
    }
}
struct YellowCircle: View {
    let opacit: Double
   
    var body: some View {
        Color(.systemYellow)
            
            .frame(width: 125, height: 125)
            .clipShape(Circle())
            .opacity(opacit)
    }
}

struct RedCircle: View {
  
    let opacit: Double
    var body: some View {
        Color(.systemRed)
            .frame(width: 125, height: 125)
            .clipShape(Circle())
            .opacity(opacit)
        
    }
}


struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        RedCircle( opacit: 0.2)
        YellowCircle(opacit: 0.2)
        GreenCircle(opacit: 0.2)
    }
}
