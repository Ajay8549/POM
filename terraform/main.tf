provider "aws" {
  region = "us-east-1"
}

resource "aws_lex_bot" "dummy_bot" {
  name        = "DummyLexBot"
  description = "A dummy chatbot deployed via GitHub Actions"
  locale      = "en-US"
  voice_id    = "Joanna"
  child_directed = false

  clarification_prompt {
    message = "Sorry, I didn't understand that."
    max_attempts = 2
  }

  abort_statement {
    message = "Sorry, I can't help you with that."
  }

  intent {
    intent_name = "HelloWorldIntent"
    sample_utterances = ["Hello", "Hi", "Hey"]
    response = "Hello! How can I assist you today?"
  }
}
