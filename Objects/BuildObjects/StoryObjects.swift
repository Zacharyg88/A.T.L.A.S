//
//  StoryObjects.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/28/24.
//

import Foundation


struct LoreObject {
    var id: UUID
    var imageURL: String
    var name: String
    var lore: String
}


struct TimelineObject {
    var id: UUID
    var imageURL: String
    var name: String
    var descriptionString: String
    var events: [EventObject]
    var calendar: CalendarObject
    
    
    func sortedEvents() -> [EventObject] {
        return events.sorted {
            if $0.era != $1.era {
                return calendar.eras.firstIndex(of: $0.era)! < calendar.eras.firstIndex(of: $1.era)!
            } else if $0.year != $1.year {
                return $0.year < $1.year
            } else if $0.month != $1.month {
                return $0.month < $1.month
            } else if $0.day != $1.day {
                return $0.day < $1.day
            } else if $0.hour != $1.hour {
                return $0.hour < $1.hour
            } else if $0.minute != $1.minute {
                return $0.minute < $1.minute
            }else {
                return $0.second < $1.second
            }
        }
    }
}

struct EventObject {
    var id: UUID
    var imageURL: String
    var name: String
    var description: String
    let era: String  // Optional era name
    let year: Int
    let month: Int
    let day: Int
    let hour: Int
    let minute: Int
    let second: Int
    let duration: Int?  // Optional multi-day event
    let linkedEvents: [String] // Links to other events
}

struct CalendarObject {
    var id: UUID
    var imageURL: String
    let name: String
    let secondsInMinute: Int
    let minutesInHour: Int
    let hoursInDay: Int
    let daysPerWeek: Int
    let monthsPerYear: Int
    let daysPerMonth: [Int]  // Flexible month lengths
    let eras: [String]       // Optional epochs
}


