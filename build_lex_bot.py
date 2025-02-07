import json
import boto3

def create_lex_bot():
    with open('bot.json') as json_file:
        bot_definition = json.load(json_file)

    client = boto3.client('lex-models')
    response = client.put_bot(
        name=bot_definition['metadata']['name'],
        intents=bot_definition['intents'],
        # Add other required parameters here
    )
    print(response)

if __name__ == "__main__":
    create_lex_bot()