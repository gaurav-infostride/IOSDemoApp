//
//  RestaurantModel.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import Foundation


typealias Restaurants = [Restaurant]


// MARK: - WelcomeElement
struct Restaurant: Codable {
    let id: Int?
    let uid, name, type, description: String?
    let review: String?
    let logo: String?
    let phoneNumber, address: String?
    let hours: DailyWorkTime?

    enum CodingKeys: String, CodingKey {
        case id, uid, name, type, description, review, logo
        case phoneNumber = "phone_number"
        case address, hours
    }
}

// MARK: - Hours
struct DailyWorkTime: Codable {
    let monday, tuesday, wednesday, thursday, friday, saturday, sunday: WorkTime?
}

// MARK: - Day
struct WorkTime: Codable {
    let opensAt, closesAt: String?
    let isClosed: Bool?

    enum CodingKeys: String, CodingKey {
        case opensAt = "opens_at"
        case closesAt = "closes_at"
        case isClosed = "is_closed"
    }
}
