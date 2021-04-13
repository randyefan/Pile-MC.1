//
//  Challenge+CoreDataProperties.swift
//  Pile
//
//  Created by Randy Efan Jayaputra on 12/04/21.
//
//

import Foundation
import CoreData


extension Challenge {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Challenge> {
        return NSFetchRequest<Challenge>(entityName: "Challenge")
    }

    @NSManaged public var challengeId: String?
    @NSManaged public var descriptionChallenge: String?
    @NSManaged public var iconChallenge: String?
    @NSManaged public var nama: String?
    @NSManaged public var penalty: Int64
    @NSManaged public var pointReward: Int64
    @NSManaged public var thumbnail: String?
    @NSManaged public var status: NSSet?
    @NSManaged public var user: User?

}

// MARK: Generated accessors for status
extension Challenge {

    @objc(addStatusObject:)
    @NSManaged public func addToStatus(_ value: Status)

    @objc(removeStatusObject:)
    @NSManaged public func removeFromStatus(_ value: Status)

    @objc(addStatus:)
    @NSManaged public func addToStatus(_ values: NSSet)

    @objc(removeStatus:)
    @NSManaged public func removeFromStatus(_ values: NSSet)

}

extension Challenge : Identifiable {

}
