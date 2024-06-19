//
//  ContentView.swift
//  WeatherApp
//
//  Created by Anna Panova on 18.06.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    
    var body: some View {
        VStack(alignment: .center) {
            // binding input of the name with weatherVM
            TextField("what city are you loking for?", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
            }
            .font(.custom("Arial", size: 28))
                .border(.black)
                .fixedSize()
                .padding(10)
            
            Text("Temperature: \(self.weatherVM.temperature)")
                .frame(alignment: .center)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .padding(20)
            
            Text("Humidity: \(self.weatherVM.humidity)")
                .frame(alignment: .center)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .padding(20)
                
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.green)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
