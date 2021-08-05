
import Foundation

struct Story {
    var storyText: String
    var choice1: String
    var choice1Destination: Int
    var choice2: String
    var choice2Destination: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.storyText = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}
