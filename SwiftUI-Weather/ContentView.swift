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
            LinearGradient(colors: [.blue, Color("light-blue")], startPoint: .topLeading, endPoint: .bottomTrailing)
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
                    WeatherDayView(dayOfWeek: "Mon", imageName: "cloud.sun.fill", temperature: 50)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 32)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.sun.fill", temperature: 22)
                    WeatherDayView(dayOfWeek: "Thur", imageName: "cloud.sun.fill", temperature: 34)
                    WeatherDayView(dayOfWeek: "Fri", imageName: "wind.snow", temperature: 15)
                }
                
                Spacer()
                
                Button{
                    print("clicked me")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size : 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                    
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5){
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding(.top, 10)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature)°")
                .foregroundColor(.white)
        }
    }
}
