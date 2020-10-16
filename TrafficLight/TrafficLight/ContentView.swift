//
//  ContentView.swift
//  TrafficLight
//
//  Created by Олеся on 16.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var green = 0.2
    @State var yellow = 0.2
    @State var red = 0.2
    @State var buttonLight = 0.5
    @State var buttonCorner: CGFloat = 2
    @State  var tag = 0
    
    @State  var text = "Start"
    
    var body: some View {
        Color.black
            .ignoresSafeArea(.all)
            .overlay(
                VStack {
                    VStack{
                        GreenCircle(opacit: green)
                        YellowCircle(opacit: yellow)
                        RedCircle(opacit: red)
                    }
                    .padding()
                    
                    Spacer()
                    Button(action: {
                        pressed()
                        text = "GO"
                    }, label: {
                        Text(text)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                    })
                    .frame(width: 180, height: 50)
                    .background(Color(.systemGray))
                   
                    .opacity(buttonLight)
                    .border(Color.orange, width: 3)
                    .cornerRadius(buttonCorner)
                }
                .padding()
            )
    }
    
    func pressed() {
        switch tag {
            case 0:
                green = 1
                yellow = 0.2
                red = 0.2
                buttonLight = 0.6
                buttonCorner = 5
                tag = 1
            case 1:
                green = 0.2
                yellow = 1
                red = 0.2
                buttonLight = 0.7
                buttonCorner = 8
                tag = 2
            case 2:
                green = 0.2
                yellow = 0.2
                red = 1
                buttonLight = 0.8
                buttonCorner = 5
                tag = 0
            default:
                break
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

