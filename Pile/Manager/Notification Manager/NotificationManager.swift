//
//  NotificationManager.swift
//  Pile
//
//  Created by Randy Efan Jayaputra on 13/04/21.
//

import Foundation
import UserNotifications

class NotificationManager: NSObject, UNUserNotificationCenterDelegate {
    static var shared = NotificationManager()
    private override init() {}
    
    let notificationCenter = UNUserNotificationCenter.current()
    
    func userRequest() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        notificationCenter.requestAuthorization(options: options) { (didAllow, error) in
            if !didAllow {
                print("User has declined notifications")
            }
        }
    }
    
    func scheduleNotificationForReminderTask(user: User) {
        let content = UNMutableNotificationContent()
        content.title = "Reminder"
        content.body = "Hi \(user.name ?? ""), you must complete all of your tasks today! Take your part in making a better environment 🥰"
        content.sound = UNNotificationSound.default
        
//        let date = Date()
//        let triggerDate = Calendar.current.dateComponents([.day], from: date)
//        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: true)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let identifier = "Reminder Task"
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        
        notificationCenter.add(request) { (error) in
            if let error = error {
                print("error \(error.localizedDescription)")
            }
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.sound, .badge, .banner])
    }
}
