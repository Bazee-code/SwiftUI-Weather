//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Eugene Obazee on 30/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Nairobi, Kenya")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                VStack(spacing: 5){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("50°")
                        .font(.system(size : 60, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                
                HStack(spacing:20){
                    VStack(spacing: 5){
                        Text("Mon")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40,height: 40)
                        Text("32°")
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 5){
                        Text("Tue")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40,height: 40)
                        Text("25°")
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 5){
                        Text("Wed")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40,height: 40)
                        Text("27°")
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 5){
                        Text("Thur")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40,height: 40)
                        Text("20°")
                            .foregroundColor(.white)
                    }
                    VStack(spacing: 5){
                        Text("Fri")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40,height: 40)
                        Text("15°")
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
