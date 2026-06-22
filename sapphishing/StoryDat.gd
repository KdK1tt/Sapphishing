extends Node

var npc_orders := {
	"Avery": [
		{
			"visit": 0,
			"required_fish": "Secret Relationship",
			"before_transaction": [
				{
					"speaker": "Narration",
					"text": "You see a person approach, dressed from head to toe in the least form-fitting clothes imaginable. Baggy pants, puffy jacket with a collar that covers half their face, and the other half is obscured by large, dark sunglasses. The whole ensemble is topped off with a droopy bucket hat for good measure."
				},
				{
					"speaker": "Narration",
					"text": "It was almost giving 'three kids in a trench coat' vibes, if not for their height lacking just enough for that to be the case."
				},
				{
					"speaker": "Narration",
					"text": "Despite their best efforts to conceal their features, you can still catch the twitch of the muscles around their eyebrows indicating the rapidly shifty eyes behind the shades. "
				},
				{
					"speaker": "Narration",
					"text": "Even though you haven't been in charge of this stall very long, you know enough to recognize what was happening here. "
				},
				{
					"speaker": "Narration",
					"text": "Either this is someone who doesn't want to be seen perusing your merchandise, or you were about to get robbed."
				},

				{
					"speaker": "???",
					"text": "Hi, is this where I get the seafood for, um… sapphic…? People…?"
				},
				{
					"speaker": "Player",
					"text": "Sure is. Is there something you'd like to order?"
				},
				{
					"speaker": "???",
					"text": "Ah… I think so. Sorry, it's my first time here."
				},
				{
					"speaker": "Player",
					"text": "That's perfectly fine. It's super simple. I have a menu here of the fish available today. Just pick one that you feel suits your specific needs. The rest is up to fate."
				},
				{
					"speaker": "Narration",
					"text": "Their eyebrows become even twitchier as they survey the menu. At least it didn't seem like you were getting robbed today."
				},
				{
					"speaker": "???",
					"text": "Can I ask what Secret Relationship does, exactly?"
				},
				{
					"speaker": "Player",
					"text": "That's a popular one. Sometimes you want to date someone but it's dangerous if other people find out. Other times, it's just exciting to have something between you and another person that no one else knows about."
				},
				{
					"speaker": "Player",
					"text": "Either way, this fish can make it so having a hidden lover would have easier circumstances. No guarantees, of course. But it's better if you and another person are already planning to go down this path."
				},
				{
					"speaker": "???",
					"text": "Yes! Oh my god, that would be perfect. How many do I need?"
				},
				{
					"speaker": "Player",
					"text": "Just the one will be enough."
				},
				{
					"speaker": "???",
					"text": "I'll take it! Thank you soooo much."
				}
			],
			"after_transaction": [
				{
					"speaker": "???",
					"text": "Um. Can I ask that you don't tell anyone I was here? It's really important."
				},
				{
					"speaker": "Player",
					"text": "Sure. I get it. You're not the first customer I've had that required discretion."
				},
				{
					"speaker": "Player",
					"text": "Besides, I'm not even sure what I would tell anyone. A pile of clothes and sunglasses came to my stall today?"
				},
				{
					"speaker": "???",
					"text": "Oh, haha, good point, I guess. I'm just nervous you would recognize me through the disguise, that's all."
				},
				{
					"speaker": "Narration",
					"text": "For a moment, you wonder if you know this person personally, but they didn't give off the impression that they know you. But it was best not to think too hard on why you might recognize them. People have their reasons for keeping secrets, especially in queer spaces."
				},
				{
					"speaker": "Player",
					"text": "Whoever you are, your secret's safe with me. Promise."
				},
				{
					"speaker": "???",
					"text": "Thank you. That means a lot. And thank you for the fish!"
				},
				{
					"speaker": "Player",
					"text": "Hope things work out for you!"
				}
			]
		}
	]
}
