// created 14 Jun 2016
// David Welsh

// this program will be used to divide children into three soccer teams based on experience
//****************************************************************************************************


// An array of dictionaries for everyone in the league
var soccerLeague = [
    [
        "name": "Joe Smith",
        "height": "42",
        "experience": "YES",
        "parents": "Jim and Jan SMith"],
    [
        "name": "Jill Tanner",
        "height": "36",
        "experience": "YES",
        "parents": "Clara Tanner"],
    [
        "name": "Bill Bon",
        "height": "43",
        "experience": "YES",
        "parents": "Sara and Jenny Bon"],
    [
        "name": "Eva Gorgon",
        "height": "45",
        "experience": "NO",
        "parents": "Wendy and Mike Gordon"],
    [
        "name": "Matt Gill",
        "height": "40",
        "experience": "NO",
        "parents": "Charles and Sylvia Gill"],
    [
        "name": "Kimmy Stein",
        "height": "41",
        "experience": "NO",
        "parents": "Bill and Hillary Stein"],
    [
        "name": "Sammy Adams",
        "height": "45",
        "experience": "NO",
        "parents": "Jeff Adams"],
    [
        "name": "Karl Saygen",
        "height": "42",
        "experience": "YES",
        "parents": "Heather Bledsoe"],
    [
        "name": "Suzane Greenberg",
        "height": "44",
        "experience": "YES",
        "parents": "Henrietta Dumas"],
    [
        "name": "Sal Dali",
        "height": "41",
        "experience": "NO",
        "parents": "Gala Dali"],
    [
        "name": "Joe Kavalier",
        "height": "39",
        "experience": "NO",
        "parents": "Sam and Elaine Kavalier"],
    [
        "name": "Ben Finkelstein",
        "height": "44",
        "experience": "NO",
        "parents": "Aaron and Jill FInkelstein"],
    [
        "name": "Diego Soto",
        "height": "41",
        "experience": "YES",
        "parents": "Robin and Sarika Soto"],
    [
        "name": "Chloe Alaska",
        "height": "47",
        "experience": "NO",
        "parents": "David and Jamie Alaska"],
    [
        "name": "Arnold Willis",
        "height": "43",
        "experience": "NO",
        "parents": "Claire Willis"],
    [
        "name": "Phillip Helm",
        "height": "44",
        "experience": "YES",
        "parents": "Thomas Helm and Eva Jones"],
    [
        "name": "Les Clay",
        "height": "42",
        "experience": "YES",
        "parents": "Wyonna Brown"],
    [
        "name": "Herschel Krustofski",
        "height": "45",
        "experience": "YES",
        "parents": "Hyman and Krustofski"]
    
]

// empty array cells that will divide the players up by experience level, along with their parents
var experiencedPlayers = [String]()
var experiencedPlayersParents = [String]()
var nonexperiencedPlayers = [String]()
var nonexperiencedPlayersParents = [String]()

// team names
var teamDragons = [String]()
var teamRaptors = [String]()
var teamSharks = [String]()

//The total number of palyers in the league
var numberOfPlayers = soccerLeague.count

// allowing for counting idex in logic

var index = 0
var counter1 = 0
var counter2 = 0

//  Assigning players into a seperate array based on skill level
while index < numberOfPlayers {
    if soccerLeague[index]["experience"] == "YES" {
        experiencedPlayers.append(soccerLeague[index]["name"]!)
        experiencedPlayersParents.append(soccerLeague[index]["parents"]!)
        index += 1
    }else {
        nonexperiencedPlayers.append(soccerLeague[index]["name"]!)
        nonexperiencedPlayersParents.append(soccerLeague[index]["parents"]!)
        index += 1
    }
}

// Assigning the experienced players to teams using a while loop coupled with an if statement.  Also sends out personal letters to the parents for the team their child is on plus the first practice
while counter1 < numberOfPlayers {
    if teamDragons.count < 3 {
        teamDragons.append(experiencedPlayers[counter1])
        
        print("Dear \(experiencedPlayersParents[counter1]), your child \(experiencedPlayers[counter1]) is playing for the Dragons!  Practice will start on March 17th at 1:00 pm")
        
    }else if teamRaptors.count < 3 {
        teamRaptors.append(experiencedPlayers[counter1])
        print("Dear \(experiencedPlayersParents[counter1]), your child \(experiencedPlayers[counter1]) is playing for the Raptors!  Practice will start on March 18th at 1:00 pm")
    }else if teamSharks.count < 3 {
        teamSharks.append(experiencedPlayers[counter1])
        print("Dear \(experiencedPlayersParents[counter1]), your child \(experiencedPlayers[counter1]) is playing for the Sharks!  Practice will start on March 17th at 3:00 pm")
    }
    counter1 += 1
}

// Assigning the nonexperienced players to teams using a while loop coupled with an if statement.  Also sends out personal letters to the parents for the team their child is on plus the first practice
while counter2 < nonexperiencedPlayers.count {
    if teamDragons.count < 6 {
        teamDragons.append(nonexperiencedPlayers[counter2])
        print("Dear \(nonexperiencedPlayersParents[counter2]), your child \(nonexperiencedPlayers[counter2]) is playing for the Dragons!  Practice will start on March 17th at 1:00 pm")
        
    }else if teamRaptors.count < 6 {
        teamRaptors.append(nonexperiencedPlayers[counter2])
        print("Dear \(nonexperiencedPlayersParents[counter2]), your child \(nonexperiencedPlayers[counter2]) is playing for the Raptors!  Practice will start on March 18th at 1:00 pm")
        
    }else if teamSharks.count < 6 {
        teamSharks.append(nonexperiencedPlayers[counter2])
        print("Dear \(nonexperiencedPlayersParents[counter2]), your child \(nonexperiencedPlayers[counter2]) is playing for the Sharks!  Practice will start on March 17th at 3:00 pm")
    }
    counter2 += 1
}

// testing to check the teams
print(teamRaptors)
print(teamSharks)
print(teamDragons)

















