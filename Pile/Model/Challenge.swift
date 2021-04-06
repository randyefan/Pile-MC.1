//
//  Challenge.swift
//  Pile
//
//  Created by Darindra R on 05/04/21.
//

import Foundation

struct Challenge {
    var challengeID: String
    var iconChallenge: String
    var thumbnailChallenge: String
    var namaChallenge: String
    var description: String
    var why: [Why]
    var how: [How]
    var pointReward: Int
    var penalty: Int
}
