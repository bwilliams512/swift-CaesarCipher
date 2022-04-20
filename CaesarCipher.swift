/*
The Caesar’s Cipher is one of the simplest and most widely known encryption techniques.
It is named after Julius Caesar because it was used by the Roman Empire to encode military secrets.

This program encrypts a message by shifting each letter three places to the right.
*/

var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var secretMessage = "hello"
// Uncomment line below to print secretMessage
// print(secretMessage)

// Convert secretMessage from text string to an array
var message = Array(secretMessage)
// Uncomment line below to print message as an array
// print(message)

for i in 0 ..< message.count {

  for j in 0 ..< alphabet.count {

    if message[i] == alphabet[j] {

      message[i] = alphabet[(j+3) % 26]
      break

    }

  }

}

print(message)

// Output: ["k", "h", "o", "o", "r"]
