//
//  ContentView.swift
//  AboutMeProject
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pic="me"
    @State private var txt1="Emily"
    @State private var txt2="-  Rising Senior"
    @State private var buttontxt="Find out more!"
    @State private var count=0
    var body: some View {
        ZStack{
            Color(.systemPink)
                .ignoresSafeArea()
            VStack {
                Image(pic)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                HStack{
                    Text(txt1)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .foregroundColor(Color.white)
                    Text(txt2)
                        .font(.title2)
                        .fontWeight(.light)
                }
                Button(buttontxt) {
                    if(count==0){
                        pic="cat"
                        txt1="My fav animal:"
                        txt2=" Cats!!"
                        buttontxt="Learn about my passions!"
                        count+=1
                    }else if(count==1){
                        pic="music"
                        txt1="I play:"
                        txt2="Violin!!"
                        buttontxt=""
                        count+=1
                    }
                    
                }.font(.title2).buttonStyle(.borderedProminent).tint(.black).fontWeight(.semibold)
            }.padding()
                .background(Rectangle().foregroundColor(Color(hue: 0.001, saturation: 0.317, brightness: 0.877))).cornerRadius(15).shadow(radius: 15)
                .padding()
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
