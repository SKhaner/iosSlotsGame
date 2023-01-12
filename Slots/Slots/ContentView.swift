//
//  ContentView.swift
//  Slots
//
//  Created by Seeam Khan on 1/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    var names:[String] = ["apple", "star", "cherry"]
    @State var s1 = "apple"
    @State var s2 = "apple"
    @State var s3 = "apple"
    var body: some View {
        ZStack{
            Color.pink.ignoresSafeArea()
            VStack{
                Spacer()
                //title
                Text("Swift UI Slots!")
                    .foregroundColor(Color.white)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(
                        Color.black
                            .cornerRadius(20)
                    )
                    .font(.title)
                    .fontWeight(.semibold)
                    .fontDesign(.serif)
                Spacer()
                //score/credits
                Text("Credits: " + String(score))
                    .foregroundColor(Color.white)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(
                        Color.black
                            .cornerRadius(20)
                    )
                    .font(.body)
                    .fontWeight(.semibold)
                    .fontDesign(.serif)
                Spacer()
                //slots
                HStack{
                    Spacer()
                    Image(s1)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(s2)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Image(s3)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Spacer()
                Button {
                    //change slots
                    s1 = names[Int.random(in: 0...2)]
                    s2 = names[Int.random(in: 0...2)]
                    s3 = names[Int.random(in: 0...2)]
                    //determine scores
                    if(s1.elementsEqual(s2) && s1.elementsEqual(s3)){
                        score += 15
                    } else{
                        score -= 5
                    }
                } label: {
                    Text("Spin")
                        .font(.system(size: 30, weight: .semibold, design: .serif))
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        )
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button {
                    s1 = names[0]
                    s2 = names[1]
                    s3 = names[2]
                    //determine scores
                    score = 0
                } label: {
                    Text("Reset")
                        .font(.system(size: 17, weight: .semibold, design: .serif))
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .background(
                            Color.black
                                .cornerRadius(20)
                        )
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
