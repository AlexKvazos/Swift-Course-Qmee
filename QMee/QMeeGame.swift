import Foundation

/**
 * Holds Questions
 **/
class QMeeGame {

    // Keep track of the current question
    var currentQuestionIndex = 0
    var currentScore = 0
    
    // Question list
    var questions = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]
    
    // Question images list
    var questionImageNames = ["1", "2", "3", "4", "5", "6"]
    
    // Get the next question by skipping an index
    func getNextQuestion() -> String {
        if currentQuestionIndex == (questions.count - 1) {
            currentQuestionIndex = 0
        } else {
            currentQuestionIndex += 1
        }
        
        return questions[currentQuestionIndex]
    }
    
    // Get the question image of the current index
    func getQuestionImageName() -> String {
        return questionImageNames[currentQuestionIndex]
    }

}
