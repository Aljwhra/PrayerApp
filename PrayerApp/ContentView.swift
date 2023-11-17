//
//  ContentView.swift
//  PrayerApp
//
//  Created by Aljwhra Alnasser on 16/11/2023.
//
import Foundation
import SwiftUI


struct ContentView: View {
    
    @StateObject private var vm = JsonDataDecoding()
    @State var timing: Timings?
    
    var body: some View {
        ZStack{
            
            Image("IMG2")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                Text("اوقات الصلاة")
                .foregroundColor(.white)
                .font(.title)
                .bold()
            } 
            .frame(width: 350)
            .padding(.leading,170)
            .padding(.top,-290)
            
            VStack(alignment: .center, spacing: 30.0) {
                
                Text("Fajr: \(vm.getPrayerTimeForToday()?.Fajr ?? "") ")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white.opacity(0.1))
                            .frame(width: 300, height: 50)
                    )
                Text("Duhor: \(vm.getPrayerTimeForToday()?.Dhuhr ?? "") ")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white.opacity(0.1))
                            .frame(width: 300, height: 50)
                    )
                Text("ASR: \(vm.getPrayerTimeForToday()?.Asr ?? "") ")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white.opacity(0.1))
                            .frame(width: 300, height: 50)
                    )
                Text("Magrib: \(vm.getPrayerTimeForToday()?.Maghrib ?? "") ")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white.opacity(0.1))
                            .frame(width: 300, height: 50)
                    )
                Text("Isha:  \(vm.getPrayerTimeForToday()?.Isha ?? "") ")
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white.opacity(0.1))
                            .frame(width: 300, height: 50)
                    )
                
            }
            .multilineTextAlignment(.leading)
            .font(.title2)
            .bold()
            .foregroundColor(.white)
            
            //Text(JsonprayerData.jsonError?.localizedDescription ?? "")
        }
        .onAppear {
            vm.fetch()
        }
    }
 }


#Preview {
    ContentView()
}



