//
//  PrayerData.swift
//  PrayerApp
//
//  Created by Aljwhra Alnasser on 16/11/2023.
//

import Foundation



struct PrayerData: Decodable {
    
    var code: Int
    var status: String
    var data: [PrayerDataItem]
}

struct PrayerDataItem: Decodable {
    var timings: Timings
    var date: DateInfo
    var meta: Meta
}

struct Timings: Decodable {
    var Fajr: String
    var Sunrise: String
    var Dhuhr: String
    var Asr: String
    var Sunset: String
    var Maghrib: String
    var Isha: String
    var Imsak: String
    var Midnight: String
    var Firstthird: String
    var Lastthird: String
}

struct DateInfo: Decodable {
    var readable: String
    var timestamp: String
    var gregorian: GregorianDate
    var hijri: HijriDate
}

struct GregorianDate: Decodable {
    var date: String
    var format: String
    var day: String
    var weekday: Weekday
    var month: Month
    var year: String
    var designation: Designation
}

struct HijriDate: Decodable {
    var date: String
    var format: String
    var day: String
    var weekday: Weekday
    var month: Month
    var year: String
    var designation: Designation
    var holidays: [String]?
}

struct Weekday: Decodable {
    var en: String
    var ar: String?
}

struct Month: Decodable {
    var number: Int
    var en: String
    var ar: String?
}

struct Year: Decodable {
    var year: String
    var designation: Designation
}

struct Designation: Decodable {
    var abbreviated: String
    var expanded: String
}

struct Meta: Decodable {
    var latitude: Double
    var longitude: Double
    var timezone: String
    var method: Method
    var latitudeAdjustmentMethod: String
    var midnightMode: String
    var school: String
    var offset: Offset
}

struct Method: Decodable {
    var id: Int
    var name: String
    var params: Params
    var location: Location
}

struct Params: Decodable {
    var Fajr: Double
    var Isha: String
}

struct Location: Decodable {
    var latitude: Double
    var longitude: Double
}

struct Offset: Decodable {
    var Imsak: Int
    var Fajr: Int
    var Sunrise: Int
    var Dhuhr: Int
    var Asr: Int
    var Maghrib: Int
    var Sunset: Int
    var Isha: Int
    var Midnight: Int
}




