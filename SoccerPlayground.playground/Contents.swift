//: Playground - noun: a place where people can play


import UIKit

/////////////////////////////////// Step 1 //////////////////////////////////

var player1 : [String : Any] = ["Name": "John Smith", "Height" : 42, "Exeperience" : true, "Guardian": "Jim and Jan Smith"]
var player2 : [String : Any] = ["Name": "Jill Tanner", "Height" : 36, "Exeperience" : true, "Guardian": "Ciara Tanner"]
var player3 : [String : Any] = ["Name": "Bill Bon", "Height" : 43, "Exeperience" : true, "Guardian": "Sara and Jenny Bon"]
var player4 : [String : Any] = ["Name": "Eva Gordon", "Height" : 45, "Exeperience" : false, "Guardian": "Wendy and Mike Gordon"]
var player5 : [String : Any] = ["Name": "Matt Gill", "Height" : 40, "Exeperience" : false, "Guardian": "Charles and Sylvia Gill"]
var player6 : [String : Any] = ["Name": "Kimmy Stein", "Height" : 41, "Exeperience" : false, "Guardian": "Bill and Hillary Stein"]
var player7 : [String : Any] = ["Name": "Sammy Adams", "Height" : 45, "Exeperience" : false, "Guardian": "Jeff Adams"]
var player8 : [String : Any] = ["Name": "Karl Saygan", "Height" : 42, "Exeperience" : true, "Guardian": "Heather Bledsoe"]
var player9 : [String : Any] = ["Name": "Suzane Greenberg", "Height" : 44, "Exeperience" : true, "Guardian": "Henrietta Dumas"]
var player10 : [String : Any] = ["Name": "Sal Dali", "Height" : 41, "Exeperience" : false, "Guardian": "Gala Dali"]
var player11 : [String : Any] = ["Name": "Joe Kavalier", "Height" : 39, "Exeperience" : false, "Guardian": "Sam and Elaine Kavalier"]
var player12 : [String : Any] = ["Name": "Ben Finkelstein", "Height" : 44, "Exeperience" : false, "Guardian": "Aaron and Jill Finkelstein"]
var player13 : [String : Any] = ["Name": "Diego Soto", "Height" : 41, "Exeperience" : true, "Guardian": "Robin and Sarika Soto"]
var player14 : [String : Any] = ["Name": "Chloe Alaska", "Height" : 47, "Exeperience" : false, "Guardian": "David and Jamie Alaska"]
var player15 : [String : Any] = ["Name": "Arnold Willis", "Height" : 43, "Exeperience" : false, "Guardian": "Clarie Willis"]
var player16 : [String : Any] = ["Name": "Phillip Helm", "Height" : 44, "Exeperience" : true, "Guardian": "Thomas Helm and Eva Jones"]
var player17 : [String : Any] = ["Name": "Les Clay", "Height" : 42, "Exeperience" : true, "Guardian": "Wynonna Brown"]
var player18 : [String : Any] = ["Name": "Herschel Krustofski", "Height" : 45, "Exeperience" : true, "Guardian": "Hyman and Rachel Krustofski"]

var playersArray = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


/// Team Arrays ///

var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

var expPlayers: [[String: Any]] = []
var unexpPlayers: [[String: Any]] = []




////////////////////////////// Step 2 /////////////////////////////////

/// Iterating through the playersArray and seperating Experienced and Unexperienced players into two Arrays ///

for players in playersArray {
    if (players["Exeperience"] as? Bool == true) {
        expPlayers.append(players)
    } else {
        unexpPlayers.append(players)
    }
}

/// Next, I use a loop to continuously pull one Experienced and one Unexperienced player from each array then add them to the Dragons - while the number of Experienced players is less than ExpPlayers divided by 3, next by 2, etc. So 1/3 of the Experienced/Unexperienced players goto the Dragons, 1/3 to the Sharks, and 1/3 to the Raptors giving us even teams.


var x = 0

while x <= expPlayers.count / 3  {
    teamDragons.append(expPlayers[0])
    expPlayers.remove(at: 0)
    teamDragons.append(unexpPlayers[0])
    unexpPlayers.remove(at: 0)
    x += 1
}

var y = 0

while y <= expPlayers.count / 2  {
    teamSharks.append(expPlayers[0])
    expPlayers.remove(at: 0)
    teamSharks.append(unexpPlayers[0])
    unexpPlayers.remove(at: 0)
    y += 1
}

var z = 0

while expPlayers.count > 0  {
    teamRaptors.append(expPlayers[0])
    expPlayers.remove(at: 0)
    teamRaptors.append(unexpPlayers[0])
    unexpPlayers.remove(at: 0)
    z += 1
}





////////////////////////// Step 3 //////////////////////////////////




/// I've created for loops for each team. This pulls name & guardian key/value pairs and uses them in each letter. The letters for each team are then appended to a letters collection. ///


/// Dragons Players ///


var letters: [String] = []

for players in teamDragons {
    var playerName = (players["Name"] as! String)
    var guardianName = (players["Guardian"] as! String)
    var teamName = "Dragons"
    var practiceDate = "March 17th 1pm"
    
    var teamArray = "Hello \(playerName), I hope you are excited to kick off a tremendous soccer season! We are going to be the most dominant soccer team in the history of youth soccer. Please inform your parents \(guardianName), that you have been formally selected to join the \(teamName) and your first day of practice is \(practiceDate). Congratulations and prepare to be a part of one of the most incredible sports dynasties ever to walk the face of the earth."
    
    letters.append(teamArray)
    
}

/// Sharks Players ///

for players in teamSharks {
    var playerName = (players["Name"] as! String)
    var guardianName = (players["Guardian"] as! String)
    var teamName = "Sharks"
    var practiceDate = "March 17th, 3pm"
    
    var teamArray = "Hello \(playerName), I hope you are excited to kick off a tremendous soccer season! We are going to be the most dominant soccer team in the history of youth soccer. Please inform your parents \(guardianName), that you have been formally selected to join the \(teamName) and your first day of practice is \(practiceDate). Congratulations and prepare to be a part of one of the most incredible sports dynasties ever to walk the face of the earth."
    
    letters.append(teamArray)
    
}

/// Raptors Players ///

for players in teamRaptors {
    var playerName = (players["Name"] as! String)
    var guardianName = (players["Guardian"] as! String)
    var teamName = "Raptors"
    var practiceDate = "March 18th, 1pm"
    
    var teamArray = "Hello \(playerName), I hope you are excited to kick off a tremendous soccer season! We are going to be the most dominant soccer team in the history of youth soccer. Please inform your parents \(guardianName), that you have been formally selected to join the \(teamName) and your first day of practice is \(practiceDate). Congratulations and prepare to be a part of one of the most incredible sports dynasties ever to walk the face of the earth."
    
    letters.append(teamArray)
    
}

print(letters)
letters.count
