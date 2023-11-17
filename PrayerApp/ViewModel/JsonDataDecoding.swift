//
//  Data.swift
//  PrayerApp
//
//  Created by Aljwhra Alnasser on 16/11/2023.
//

import Foundation
import SwiftUI

class JsonDataDecoding : ObservableObject {
    
    @Published var prayers : PrayerData?
    @Published var jsonError: Error?
    var currentDate = ""
    
    init(){
        // Get CURRENT DATE
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        currentDate = dateFormatter.string(from: Date())
    }
    
    func fetch(){
        
        guard let JSONData = jsonString.data(using: .utf8) else {return}

        let decoder = JSONDecoder()

        do {
            
            prayers = try decoder.decode(PrayerData.self, from: JSONData)
         
        } catch {
            print("Error Decoding: \(error)")
        }
        
        
    }
    
    
    func getPrayerTimeForToday() -> Timings? {
        return prayers?.data.first(where: {$0.date.readable == currentDate})?.timings
    }
}



