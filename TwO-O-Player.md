# TwO-O-Player Math Game
2-Player (math) game where players take turn answering simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Classes
Nouns that could translate into classes:
* Players
* Questions
* Game

## Roles

### > Players:
* Represents each player in the game. It will have information about their lives and scores.
  
  * Have lives
  * Have scores
  * Initialize with 3 lives and 0 for score

### > Questions:
* Represents the creation and validation of questions/answers

  * Generate questions
  * Validate answers given by players

### > Game
* Manages the game

  * initialize: game has 2 players and starts with one question
  * Game loop: will change players after each round
  * Current player: check which player should be playing each round
  * End game: Check if any players has lost all lives, giving the win to other player