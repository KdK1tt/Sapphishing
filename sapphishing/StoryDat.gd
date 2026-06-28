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
		},
		{
			"visit": 1,
			"required_fish": "Hurt Comfort",
			"before_transaction": [
				{
					"speaker": "Narration",
					"text": "A familiar amalgamation of fabric appears in your field of vision. The colour of the puffy jacket has changed (a very nice brand, no less), but the droopy bucket hat and gratuitously covered face were a perfect match. What didn't match, however, was the behaviour of the brow poking out above the large sunglasses. Gone was the nervous twitch. Instead, they sagged like the weight of reality itself sat upon them as easy as a bead of sweat on a warm day. Far too at home."
				},
				{
					"speaker": "???",
					"text": "Um, hello."
				},
				{
					"speaker": "Player",
					"text": "Hello again! "
				},
				{
					"speaker": "???",
					"text": "[That sagging brow suddenly shot up.] \n \n A-again? Oh, do you… recognize me after all?"
				},
				{
					"speaker": "Player",
					"text": "I don't know your name or anything. But it's hard to miss your outfit. I hope you don't mind me saying, but you are the most conspicuously dressed inconspicuous person I have ever seen."
				},

				{
					"speaker": "???",
					"text": "Oh… I suppose you're right. I went a little overboard. I guess trying too hard not to be noticed loops back around into being too noticeable, huh?"
				},
				{
					"speaker": "Player",
					"text": "It's fine. It still works, I can't tell who you might be under all of that, so just relax. Besides, it's easier for me this way. I remember what I got you last time. Secret Relationship, right? Did it work out, or did you want to try another fish…?"
				},
				{
					"speaker": "???",
					"text": "[Despite her gloomy demeanor, she brightens up a little.] \n \n Oh, yes, it worked perfectly. I actually ate it with my… girlfriend… it felt like it gave us the bravery we needed to start something. And we did. And it's been great. Really great. I love her so much. It just… also isn't… easy."
				},
				{
					"speaker": "Player",
					"text": "Ah. Yeah. Sorry about that. Tropes can be just as stressful as they are freeing and healing. Much like relationships and love in general. It's part of the experience. But Secret Relationship is a very specific beast in that way. "
				},
				{
					"speaker": "???",
					"text": "Oh, don't get me wrong. I'm so grateful. This is everything I wanted for so long. I knew going into it that it wouldn't be a walk in the park. That's why I needed a fish for a boost in the first place but… I don't know. I don't even know why I came back. I got what I wanted."
				},
				{
					"speaker": "Player",
					"text": "I do have other fish for established couples as well who want to have certain experiences. There is a whole other world beyond just the part where the couple finally gets together."
				},
				{
					"speaker": "???",
					"text": "Really? But I don't even know what we could do in our circumstances… Ugh, this is the problem. I don't know what I'm doing and because I'm in a secret relationship, the only person I can go to for advice is a fish lady! \n …No offence."
				},
				{
					"speaker": "Player",
					"text": "None taken. I am a fish lady. Look, I see a lot of different sapphics living out their sapphic lives sapphic-ly. I can certainly offer some informed advice. If I have a fish to go with the advice, even better. I'm all about customer satisfaction, no matter what that might look like."
				},
				{
					"speaker": "???",
					"text": "[Said customer you're trying to satisfy suddenly becomes very nervous and shifty, like you've activated a fight or flight response.] \n \n Um. Well. I, uh. Um. Um…. The thing is. You see…"
				},
				{
					"speaker": "???",
					"text": "…………………… \n \n Ugh, forget it. This was a mistake. I'm holding up business. I'm sorry for wasting your time."
				},
				{
					"speaker": "Player",
					"text": "Hey, hey, hey, wait. Hold on. Are you in any trouble? Do you need help? I want to make sure you're okay. This is a safe space. I promise."
				},
				{
					"speaker": "???",
					"text": "I'm not in any trouble. Not yet, anyway."
				},
				{
					"speaker": "Narrator",
					"text": "[She shifts on her feet for a moment, contemplating. Whatever gears are turning in her head seem to be actively in conflict, but even the most well-oiled machine can have a breaking point.]"
				},
				{
					"speaker": "???",
					"text": "Fuck it. This isn't just about me anymore. I'll do whatever I need to, for her."
				},
				{
					"speaker": "Narrator",
					"text": "[She pulls down her collar and rips off her glasses. When she does so, a curl of vibrant hair cascades down the side of her face from the inside of her bucket hat. Despite the rest of her being covered still, it was enough. You've seen this face many times. On billboards, on TV, on social media. It was unmistakable.]"
				},
				{
					"speaker": "???",
					"text": "I don't know if this will mean anything to you or not, but my name is Avery. Avery Audrey. I'm… a pop star."
				},
				{
					"speaker": "Narrator",
					"text": "[This did, in fact, mean something to you. You didn't follow her career closely or anything, but Avery Audrey was one of the biggest pop stars both domestically and internationally. She was a household name. Several of her songs were on your playlists, including her mega-hit ''Repeat After Me''. And at that moment, it dawns on you that one of the most visible public figures in the world is sapphic. There is a sense of elation in that. But not everyone would feel that way. And suddenly, everything made sense.] "
				},
				{
					"speaker": "Player",
					"text": "Okay. Yeah. I get why you want to keep your relationship under wraps."
				},
				{
					"speaker": "Avery",
					"text": "So I guess you do recognize me."
				},
				{
					"speaker": "Player",
					"text": "I'll try not to be weird about it."
				},
				{
					"speaker": "Avery",
					"text": "I appreciate that. Please, please don't tell anyone. Especially about why I'm here in the first place."
				},
				{
					"speaker": "Player",
					"text": "No, I get it. I do. Not on the same level, but we have to do what we can to protect ourselves and our loved ones from people who refuse to understand, right?"
				},
				{
					"speaker": "Avery",
					"text": "I'm glad you understand… So yeah, you're the first to know. Avery Audrey is attracted to women. And I was so marketed as the girl next door that would be the perfect girlfriend for any average guy. Then I fell for my backup dancer… who is also a girl…"
				},
				{
					"speaker": "Player",
					"text": "And you're scared of the public backlash."
				},
				{
					"speaker": "Avery",
					"text": "Scared for me. Scared for my career. Scared for my girlfriend. I dragged her into this, no matter what. Even though we decided we were all in. And at the time, I felt that dating secretly would be enough. But hiding her away? It's harder than I thought. Not just the fear of being caught but… I hate treating her like she's something to be ashamed of. Even if she says she doesn't feel that way. It sucks."
				},
				{
					"speaker": "Player",
					"text": "Hey. It's not your fault. You have valid reasons for keeping this quiet. It's not a shame thing. It's a safety and comfort thing. And you deserve your privacy. Every sapphic does. Every sapphic should have a right to love as loudly or as quietly as they want."
				},
				{
					"speaker": "Avery",
					"text": "I know you're right. I just wish me and my girlfriend had that choice. "
				},
				{
					"speaker": "Player",
					"text": "Me too. Believe me, if I had a fish that ended social stigma and ignorance and hatred over who people love, it would be my best seller. Hell, I'd give that out for free."
				},
				{
					"speaker": "Avery",
					"text": "I guess magic fish only go so far, huh?"
				},
				{
					"speaker": "Player",
					"text": "Unfortunately. But hey, it's not without powers. My fish can't fix everything, or make miracles happen. They can just help you along in wherever you are in your life. If you want a suggestion…"
				},
				{
					"speaker": "Avery",
					"text": "Please."
				},
				{
					"speaker": "Player",
					"text": "I have a Hurt/Comfort on the menu today. You and your girlfriend are going through a difficult period. And you only have each other. But because you have each other, the comfort you bring each other can help balance out the hurt. Even bring catharsis. It's not much, but…"
				},
				{
					"speaker": "Avery",
					"text": "No, that's wonderful. It won't invite more hurt, will it?"
				},
				{
					"speaker": "Player",
					"text": "I don't claim to understand how all of the magic works, but it tends to attract the kind of experience you want out of the trope. You're already hurt. Let this give you both the space to enjoy some comfort."
				},
				{
					"speaker": "Avery",
					"text": "Sold. I want to comfort my girlfriend through this too. Even though I can't promise her this will get any better than how it is now."
				},
			],
			"after_transaction": [
				{
					"speaker": "Player",
					"text": "I hope this helps, even a little. And on a personal note, I'm a fan, and in a world where straight is the default, I'm glad that you're one of us. I wish you the best."
				},
				{
					"speaker": "Avery",
					"text": "That… means a lot. It's nice to know someone is on our side, you know? Maybe……. ah, never mind. I should go. My manager is probably tearing everything apart looking for me. Thank you again, fish lady."
				},
				{
					"speaker": "Player",
					"text": "Hey, it's my job!"
				}
			]
		}
	]
}
