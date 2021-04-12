//
//  CoreDataManager.swift
//  Pile
//
//  Created by Randy Efan Jayaputra on 06/04/21.
//

import Foundation
import CoreData

struct CoreDataManager {
    // MARK: - Config CoreData
    static var shared = CoreDataManager()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Pile")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    func saveContext() {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let error = error as NSError
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
    
    // MARK: - Func for Business Processs
    // Call this function when user first use the App to handle save name and set point to 0
    func saveUser(name: String) -> User? {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        guard let userEntity = NSEntityDescription.entity(forEntityName: "User", in: context) else {
            return nil
        }
        
        let user = NSManagedObject(entity: userEntity, insertInto: context)
        user.setValue(name, forKey: "name")
        user.setValue(0, forKey: "points")
        
        do {
            try context.save()
            return user as? User
        } catch {
            fatalError()
        }
    }
    
    // Call this function when we need to get user info (Name, Points)
    func fetchUser() -> User? {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "User")
        do {
            let user = try context.fetch(fetchRequest)
            return user.count == 0 ? nil : user[0] as? User
        } catch {
            print("could not fetch \(error.localizedDescription)")
            return nil
        }
    }
    
    // Call this function when we need to update user point
    func updatePointUser(user: User, point: Int) -> User? {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        do {
            user.setValue(point, forKey: "points")
            do {
                try context.save()
                return user
            } catch {
                print(error.localizedDescription)
                return nil
            }
        }
    }
    
    // Call this function when user add challenge to their daily
    func addChallengeToUser(user: User, challenge: ChallengeGenerate) {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        
        guard let statusEntity = NSEntityDescription.entity(forEntityName: "Status", in: context),
              let challengeEntity = NSEntityDescription.entity(forEntityName: "Challenge", in: context)  else {
            return
        }
        
        let challengeEntityObject = NSManagedObject(entity: challengeEntity, insertInto: context)
        let statusEntityObject = NSManagedObject(entity: statusEntity, insertInto: context)
        
        challengeEntityObject.setValue(challenge.challengeIDGenerate, forKey: "challengeId")
        challengeEntityObject.setValue(challenge.penaltyGenerate, forKey: "penalty")
        challengeEntityObject.setValue(challenge.pointRewardGenerate, forKey: "pointReward")
        challengeEntityObject.setValue(challenge.thumbnailChallengeGenerate, forKey: "thumbnail")
        challengeEntityObject.setValue(challenge.namaChallengeGenerate, forKey: "nama")
        challengeEntityObject.setValue(challenge.iconChallengeGenerate, forKey: "iconChallenge")
        challengeEntityObject.setValue(challenge.descriptionGenerate, forKey: "descriptionChallenge")
        
        challengeEntityObject.setValue(user, forKey: "user")
        
        statusEntityObject.setValue(Date(), forKey: "date")
        statusEntityObject.setValue(false, forKey: "isCompleted")
        statusEntityObject.setValue(challengeEntityObject, forKey: "challenge")
        
        do {
            try context.save()
            print("saved \(challenge.namaChallengeGenerate)")
        } catch {
            fatalError()
        }
    }
    
    // Use this function to get challenge from user today
    func fetchChallengeStatusToday() -> [DailyChallenges]? {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let fetchRequestStatus = NSFetchRequest<NSManagedObject>(entityName: "Status")
        let predicate = getPredicateForTodayInStatus()
        fetchRequestStatus.predicate = predicate
        
        do {
            var challenges: [DailyChallenges] = []
            let statusArray = try context.fetch(fetchRequestStatus)
            for status in statusArray as! [Status] {
                let challenge = status.challenge! as Challenge
                challenges.append(DailyChallenges(challenges: challenge, status: status))
            }
            return challenges
        } catch {
            print("could not fetch \(error.localizedDescription)")
            return nil
        }
    }
    
    // Use this function to get delete challenge from home page
    func deleteChallenge(status: Status) {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        do {
//            context.delete(challenge)
            context.delete(status)
        }
        
        do {
            try context.save()
        } catch {
            print("\(error.localizedDescription)")
        }
    }
    
    // Call this function when we need to display progress for whole challenges in user
    func fetchAllChallengeToProgress() -> [ProgressChallenge]? {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let fetchRequestChallenge = NSFetchRequest<NSManagedObject>(entityName: "Challenge")
        
        do {
            var progressChallenge: [ProgressChallenge] = []
            let challenge = try context.fetch(fetchRequestChallenge)
            for task in challenge as! [Challenge] {
                progressChallenge.append(ProgressChallenge(challenges: task, status: task.status?.allObjects as! [Status]))
            }
            return progressChallenge
        } catch {
            print("Could not fetch \(error.localizedDescription)")
            return nil
        }
    }
    
    // Call this function when we need to fetch status from a challenge in last seven days
    func fetchStatusForLastSevenDays(challenge: Challenge) -> [Status]? {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        let fetchRequestStatus = NSFetchRequest<NSManagedObject>(entityName: "Status")
        
        let predicate = getPredicateLastSevenDaysInStatus(challenge: challenge)
        fetchRequestStatus.predicate = predicate
        do {
            let status = try context.fetch(fetchRequestStatus)
            return status as? [Status]
        } catch {
            print("could not fetch \(error.localizedDescription)")
            return nil
        }
    }
    
    // Call this function when we need to add daily status from a challenge
    func addingDailyStatusForAChallenge(challenge: Challenge) {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        guard let statusEntity = NSEntityDescription.entity(forEntityName: "Status", in: context) else {
            return
        }
        
        let status = NSManagedObject(entity: statusEntity, insertInto: context)
        status.setValue(Date(), forKey: "date")
        status.setValue(true, forKey: "isCompleted")
        status.setValue(challenge, forKey: "challenge")
        
        do {
            try context.save()
        } catch {
            fatalError()
        }
    }
    
    
    // MARK: - Private Predicate Function
    private func getPredicateForTodayInStatus() -> NSCompoundPredicate {
        // Get the current calendar with local time zone
        var calendar = Calendar.current
        calendar.timeZone = NSTimeZone.local

        // Get today's beginning & end
        let dateFrom = calendar.startOfDay(for: Date()) // eg. 2016-10-10 00:00:00
        let dateTo = calendar.date(byAdding: .day, value: 1, to: dateFrom)
        // Note: Times are printed in UTC. Depending on where you live it won't print 00:00:00 but it will work with UTC times which can be converted to local time

        // Set predicate as date being today's date
        let fromPredicate = NSPredicate(format: "date >= %@", dateFrom as NSDate)
        let toPredicate = NSPredicate(format: "date < %@", dateTo! as NSDate)
        let datePredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [fromPredicate, toPredicate])
        return datePredicate
    }
    
    
    private func getPredicateLastSevenDaysInStatus(challenge: Challenge) -> NSCompoundPredicate {
        // Get the current calendar with local time zone
        var calendar = Calendar.current
        calendar.timeZone = NSTimeZone.local
        
        let now = Date()
        guard let sevenDaysAgo = calendar.date(byAdding: .day, value: -7, to: now) else {
            return NSCompoundPredicate()
        }
        
        let startDate = calendar.startOfDay(for: sevenDaysAgo)

        // Set predicate as date being today's date
        let fromPredicate = NSPredicate(format: "date >= %@", startDate as NSDate)
        let toPredicate = NSPredicate(format: "date < %@", now as NSDate)
        let predicateChallenge = NSPredicate(format: "challenge == %@", challenge)
        let dateChallengePredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [fromPredicate, toPredicate, predicateChallenge])
        return dateChallengePredicate
    }
}
