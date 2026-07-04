extends Node

var npc_themes := {
	"Avery": "res://sweet_talk_wip03.mp3"
	}

var npc_orders := {
	"Avery": [
		{
			"visit": 0,
			"required_fish": "Secret Relationship",
			"before_transaction": [
				{
					"speaker": "",
					"text": "[You see a person approach, dressed from head to toe in the least form-fitting clothes imaginable. Baggy pants, puffy jacket with a collar that covers half their face, and the other half is obscured by large, dark sunglasses. The whole ensemble is topped off with a droopy bucket hat for good measure. \n It was almost giving 'three kids in a trench coat' vibes, if not for their height lacking just enough for that to be the case.]"
				},
				{
					"speaker": "",
					"text": "[Despite their best efforts to conceal their features, you can still catch the twitch of the muscles around their eyebrows indicating the rapidly shifty eyes behind the shades. Even though you haven't been in charge of this stall very long, you know enough to recognize what was happening here.]"
				},
				{
					"speaker": "",
					"text": "[Either this is someone who doesn't want to be seen perusing your merchandise, or you were about to get robbed.]"
				},
				{
					"speaker": "???",
					"text": "Hi, is this where I get the seafood for, um… sapphic…? People…?"
				},
				{
					"speaker": "You",
					"text": "Sure is. Is there something you'd like to order?"
				},
				{
					"speaker": "???",
					"text": "Ah… I think so. Sorry, it's my first time here."
				},
				{
					"speaker": "You",
					"text": "That's perfectly fine. It's super simple. I have a menu here of the fish available today. Just pick one that you feel suits your specific needs. The rest is up to fate."
				},
				{
					"speaker": "",
					"text": "[Their eyebrows become even twitchier as they survey the menu. At least it didn't seem like you were getting robbed today.]"
				},
				{
					"speaker": "???",
					"text": "Can I ask what Secret Relationship does, exactly?"
				},
				{
					"speaker": "You",
					"text": "That's a popular one. Sometimes you want to date someone but it's dangerous if other people find out. Other times, it's just exciting to have something between you and another person that no one else knows about."
				},
				{
					"speaker": "You",
					"text": "Either way, this fish can make it so having a hidden lover would have easier circumstances. No guarantees, of course. But it's better if you and another person are already planning to go down this path."
				},
				{
					"speaker": "???",
					"text": "Yes! Oh my god, that would be perfect. How many do I need?"
				},
				{
					"speaker": "You",
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
					"speaker": "You",
					"text": "Sure. I get it. You're not the first customer I've had that required discretion."
				},
				{
					"speaker": "You",
					"text": "Besides, I'm not even sure what I would tell anyone. A pile of clothes and sunglasses came to my stall today?"
				},
				{
					"speaker": "???",
					"text": "Oh, haha, good point, I guess. I'm just nervous you would recognize me through the disguise, that's all."
				},
				{
					"speaker": "",
					"text": "[For a moment, you wonder if you know this person personally, but they didn't give off the impression that they know you. But it was best not to think too hard on why you might recognize them. People have their reasons for keeping secrets, especially in queer spaces.] "
				},
				{
					"speaker": "You",
					"text": "Whoever you are, your secret's safe with me. Promise."
				},
				{
					"speaker": "???",
					"text": "Thank you. That means a lot. And thank you for the fish!"
				},
				{
					"speaker": "You",
					"text": "Hope things work out for you!"
				}
			]
		},
		{
			"visit": 1,
			"required_fish": "Hurt Comfort",
			"before_transaction": [
				{
					"speaker": "",
					"text": "A familiar amalgamation of fabric appears in your field of vision. The colour of the puffy jacket has changed (a very nice brand, no less), but the droopy bucket hat and gratuitously covered face were a perfect match. What didn't match, however, was the behaviour of the brow poking out above the large sunglasses. Gone was the nervous twitch. Instead, they sagged like the weight of reality itself sat upon them as easy as a bead of sweat on a warm day. Far too at home."
				},
				{
					"speaker": "???",
					"text": "Um, hello."
				},
				{
					"speaker": "You",
					"text": "Hello again! "
				},
				{
					"speaker": "???",
					"text": "[That sagging brow suddenly shot up.] \n \n A-again? Oh, do you… recognize me after all?"
				},
				{
					"speaker": "You",
					"text": "I don't know your name or anything. But it's hard to miss your outfit. I hope you don't mind me saying, but you are the most conspicuously dressed inconspicuous person I have ever seen."
				},

				{
					"speaker": "???",
					"text": "Oh… I suppose you're right. I went a little overboard. I guess trying too hard not to be noticed loops back around into being too noticeable, huh?"
				},
				{
					"speaker": "You",
					"text": "It's fine. It still works, I can't tell who you might be under all of that, so just relax. Besides, it's easier for me this way. I remember what I got you last time. Secret Relationship, right? Did it work out, or did you want to try another fish…?"
				},
				{
					"speaker": "???",
					"text": "[Despite her gloomy demeanor, she brightens up a little.] \n \n Oh, yes, it worked perfectly. I actually ate it with my… girlfriend… it felt like it gave us the bravery we needed to start something. And we did. And it's been great. Really great. I love her so much. It just… also isn't… easy."
				},
				{
					"speaker": "You",
					"text": "Ah. Yeah. Sorry about that. Tropes can be just as stressful as they are freeing and healing. Much like relationships and love in general. It's part of the experience. But Secret Relationship is a very specific beast in that way. "
				},
				{
					"speaker": "???",
					"text": "Oh, don't get me wrong. I'm so grateful. This is everything I wanted for so long. I knew going into it that it wouldn't be a walk in the park. That's why I needed a fish for a boost in the first place but… I don't know. I don't even know why I came back. I got what I wanted."
				},
				{
					"speaker": "You",
					"text": "I do have other fish for established couples as well who want to have certain experiences. There is a whole other world beyond just the part where the couple finally gets together."
				},
				{
					"speaker": "???",
					"text": "Really? But I don't even know what we could do in our circumstances… Ugh, this is the problem. I don't know what I'm doing and because I'm in a secret relationship, the only person I can go to for advice is a fish lady! \n …No offence."
				},
				{
					"speaker": "You",
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
					"speaker": "You",
					"text": "Hey, hey, hey, wait. Hold on. Are you in any trouble? Do you need help? I want to make sure you're okay. This is a safe space. I promise."
				},
				{
					"speaker": "???",
					"text": "I'm not in any trouble. Not yet, anyway."
				},
				{
					"speaker": "",
					"text": "[She shifts on her feet for a moment, contemplating. Whatever gears are turning in her head seem to be actively in conflict, but even the most well-oiled machine can have a breaking point.]"
				},
				{
					"speaker": "???",
					"text": "Fuck it. This isn't just about me anymore. I'll do whatever I need to, for her."
				},
				{
					"speaker": "",
					"text": "[She pulls down her collar and rips off her glasses. When she does so, a curl of vibrant hair cascades down the side of her face from the inside of her bucket hat. Despite the rest of her being covered still, it was enough. You've seen this face many times. On billboards, on TV, on social media. It was unmistakable.]"
				},
				{
					"speaker": "???",
					"text": "I don't know if this will mean anything to you or not, but my name is Avery. Avery Audrey. I'm… a pop star."
				},
				{
					"speaker": "",
					"text": "[This did, in fact, mean something to you. You didn't follow her career closely or anything, but Avery Audrey was one of the biggest pop stars both domestically and internationally. She was a household name. Several of her songs were on your playlists, including her mega-hit ''Repeat After Me''. And at that moment, it dawns on you that one of the most visible public figures in the world is sapphic. There is a sense of elation in that. But not everyone would feel that way. And suddenly, everything made sense.] "
				},
				{
					"speaker": "You",
					"text": "Okay. Yeah. I get why you want to keep your relationship under wraps."
				},
				{
					"speaker": "Avery",
					"text": "So I guess you do recognize me."
				},
				{
					"speaker": "You",
					"text": "I'll try not to be weird about it."
				},
				{
					"speaker": "Avery",
					"text": "I appreciate that. Please, please don't tell anyone. Especially about why I'm here in the first place."
				},
				{
					"speaker": "You",
					"text": "No, I get it. I do. Not on the same level, but we have to do what we can to protect ourselves and our loved ones from people who refuse to understand, right?"
				},
				{
					"speaker": "Avery",
					"text": "I'm glad you understand… So yeah, you're the first to know. Avery Audrey is attracted to women. And I was so marketed as the girl next door that would be the perfect girlfriend for any average guy. Then I fell for my backup dancer… who is also a girl…"
				},
				{
					"speaker": "You",
					"text": "And you're scared of the public backlash."
				},
				{
					"speaker": "Avery",
					"text": "Scared for me. Scared for my career. Scared for my girlfriend. I dragged her into this, no matter what. Even though we decided we were all in. And at the time, I felt that dating secretly would be enough. But hiding her away? It's harder than I thought. Not just the fear of being caught but… I hate treating her like she's something to be ashamed of. Even if she says she doesn't feel that way. It sucks."
				},
				{
					"speaker": "You",
					"text": "Hey. It's not your fault. You have valid reasons for keeping this quiet. It's not a shame thing. It's a safety and comfort thing. And you deserve your privacy. Every sapphic does. Every sapphic should have a right to love as loudly or as quietly as they want."
				},
				{
					"speaker": "Avery",
					"text": "I know you're right. I just wish me and my girlfriend had that choice. "
				},
				{
					"speaker": "You",
					"text": "Me too. Believe me, if I had a fish that ended social stigma and ignorance and hatred over who people love, it would be my best seller. Hell, I'd give that out for free."
				},
				{
					"speaker": "Avery",
					"text": "I guess magic fish only go so far, huh?"
				},
				{
					"speaker": "You",
					"text": "Unfortunately. But hey, it's not without powers. My fish can't fix everything, or make miracles happen. They can just help you along in wherever you are in your life. If you want a suggestion…"
				},
				{
					"speaker": "Avery",
					"text": "Please."
				},
				{
					"speaker": "You",
					"text": "I have a Hurt/Comfort on the menu today. You and your girlfriend are going through a difficult period. And you only have each other. But because you have each other, the comfort you bring each other can help balance out the hurt. Even bring catharsis. It's not much, but…"
				},
				{
					"speaker": "Avery",
					"text": "No, that's wonderful. It won't invite more hurt, will it?"
				},
				{
					"speaker": "You",
					"text": "I don't claim to understand how all of the magic works, but it tends to attract the kind of experience you want out of the trope. You're already hurt. Let this give you both the space to enjoy some comfort."
				},
				{
					"speaker": "Avery",
					"text": "Sold. I want to comfort my girlfriend through this too. Even though I can't promise her this will get any better than how it is now."
				},
			],
			"after_transaction": [
				{
					"speaker": "You",
					"text": "I hope this helps, even a little. And on a personal note, I'm a fan, and in a world where straight is the default, I'm glad that you're one of us. I wish you the best."
				},
				{
					"speaker": "Avery",
					"text": "That… means a lot. It's nice to know someone is on our side, you know? Maybe……. ah, never mind. I should go. My manager is probably tearing everything apart looking for me. Thank you again, fish lady."
				},
				{
					"speaker": "You",
					"text": "Hey, it's my job!"
				}
			]
		},
				{
			"visit": 2,
			"required_fish": "Power Couple",
			"before_transaction": [
				{
					"speaker": "",
					"text": "[You almost don't recognize the approaching customer, in that you DO recognize them, but they're not usually so recognizable when you see them like this in person. It's Avery, and while she still has the sunglasses, her bucket hat has been replaced by a cap with loose, vibrant curls spilling out here and there. She isn't dressed like a pop star, so you'd have to be paying close attention to notice it was her. Her brow tells a different story today. It's stiff. Uneasy, but determined. A fire of authenticity contrasting the usual manufactured circumstances of her professional life.]"
				},
				{
					"speaker": "You",
					"text": "Hi there, er, ma'am. Can I get you something?"
				},
				{
					"speaker": "Avery",
					"text": "It's fine, fish lady. I won't have to sneak around much longer anyway."
				},
				{
					"speaker": "You",
					"text": "Don't tell me you got caught? Outed?"
				},
				{
					"speaker": "Avery",
					"text": "No, actually. But I am going to get outed. By me."
				},
				{
					"speaker": "You",
					"text": "You're coming out?"
				},
				{
					"speaker": "Avery",
					"text": "Yes. I'm scared shitless, but yes. I had a long conversation with my girlfriend during the moments of peace we could find, thanks to your fish. And we decided we can't keep living like this. It's not good for us. And she's more important to me than… anything. I won't let fear stand in the way of her happiness."
				},
				{
					"speaker": "You",
					"text": "Whoa, that's huge! I'm sure you know the risks. What made you decide?"
				},
				{
					"speaker": "Avery",
					"text": "It's actually something you said last time. How straight is considered the default? Whenever I thought about that, I got so angry just thinking about how I was just assumed to be straight because I fit a certain stereotype. I'm sick of it. So is my girlfriend. So, we're going to challenge the status quo. Together. Show that we don't fit into perfect little boxes. I might lose a lot, but I'm in a position where I can still support myself if everything goes wrong. And maybe by doing this, I can change some minds little by little, until there's no longer a need to come out for anyone."
				},
				{
					"speaker": "You",
					"text": "Lofty goal."
				},
				{
					"speaker": "Avery",
					"text": "For sure. But we all have to start somewhere."
				},
				{
					"speaker": "You",
					"text": "Wise words. How can I help?"
				},
				{
					"speaker": "Avery",
					"text": "Remember that whole 'scared shitless' thing? I know we can't rely on your fish for everything, but… I mean, this is a big life decision! If you have a fish with a high courage content, I sure could use it right now."
				},
				{
					"speaker": "You",
					"text": "I don't have anything direct like that. Hmm… Let's see… may I ask a question? It's not about an autograph."
				},
				{
					"speaker": "Avery",
					"text": "Ha, go right ahead."
				},
				{
					"speaker": "You",
					"text": "Your girlfriend knows about this stall, right? You took a big risk coming out here every time, even in your disguise. Why didn't you send her? It'd be safer."
				},
				{
					"speaker": "Avery",
					"text": "Well… I'm the famous one in this relationship. I'm the problem. If not for me, we wouldn't have to stress in the first place. I guess I felt the responsibility to… be the one to fix it. I didn't want to put anything else on her."
				},
				{
					"speaker": "You",
					"text": "I see. It makes sense, from your perspective. But you said from the beginning, you only have each other. You're a team. She's agreed to walk this path with you. You shouldn't take this burden on alone. You're about to face a lot of scrutiny from all angles. You're going to need support, too. Let her. And let her have her agency to take on what she can handle, too. There's two people in a relationship, even when one is a world famous pop star."
				},
				{
					"speaker": "Avery",
					"text": "I…\n…\n I… know you're right. It's just hard. I love her so much. I can't help but want to protect her."
				},
				{
					"speaker": "You",
					"text": "Alright. That settles it. I have the fish for you."
				},
				{
					"speaker": "Avery",
					"text": "What is it?"
				},
				{
					"speaker": "You",
					"text": "Power Couple."
				},
				{
					"speaker": "Avery",
					"text": "Power Couple?"
				},
				{
					"speaker": "You",
					"text": "Power Couple. Think about it. You're both about to be in the spotlight. You're going to want a strong, united front. The image of a Power Couple is alluring. Desirable. And it'll allow you to feel you're on equal footing in this. You can protect each other. If you want to make a statement and feel strong doing it, then there's no better stance to take. It might affect your public image, but… at least you can feel proud of it. And your girlfriend."
				},
				{
					"speaker": "Avery",
					"text": "A complete rebrand, huh? Well, I guess it was inevitable. My managers will just have to deal, if they stick with me. And… I like the idea of seeing my girlfriend at my side and us being admired for our strength. I think that would set myself at ease too, seeing us like that. I can trust myself to let her take some of a burden if our whole thing is we're a team. Alright, talked myself into it. I'll take it."
				},
				{
					"speaker": "You",
					"text": "Coming right up."
				},
			],
			"after_transaction": [
				{
					"speaker": "Avery",
					"text": "Alright, fish lady. Thanks for everything. I really appreciate everything you've done, but this will be the last time I'm going to be your customer."
				},
				{
					"speaker": "You",
					"text": "Oh yeah? If you're worried about bringing me bad publicity, it's not a problem."
				},
				{
					"speaker": "Avery",
					"text": "It's not that. I meant what I said before about not wanting to rely on your fish for everything. My girlfriend and I agreed. Since this was one of the biggest steps of our lives, we'd get a little magic help one more time. But after this, we're on our own. It feels… right. And if I have her beside me, I won't need the extra courage, right?"
				},
				{
					"speaker": "You",
					"text": "Sounds like you don't even need the Power Couple fish. You already are one."
				},
				{
					"speaker": "Avery",
					"text": "Teehee. Well, I already paid for this one. It can't hurt, right?"
				},
				{
					"speaker": "You",
					"text": "I'll miss the business, but you standing on your own two feet is more important. I'll be following your story closely, from afar, over the internet and other forms of media."
				},
				{
					"speaker": "Avery",
					"text": "Hey now, this isn't goodbye! If I'm still allowed to have concerts, don't be surprised if someone in a business suit slides some VIP tickets across your stall one day."
				},
				{
					"speaker": "You",
					"text": "I would definitely happily accept."
				},
				{
					"speaker": "Avery",
					"text": "Anything for a fan. \n \n [She tilts her head and winks, throwing up two fingers cutely, and you swear you see a woosh of sparkles surround her. It's easy to see how her charisma has carried her to the top, as well as her music. You think that as long as she keeps that up and leans on her loved ones, she'll be just fine]"
				},
				{
					"speaker": "You",
					"text": "You are very good at that."
				},
				{
					"speaker": "Avery",
					"text": "Well, it's my job. Here's to two professional sapphics who are excellent at what they do."
				},
				{
					"speaker": "You",
					"text": "Cheers to that. Good luck. With everything."
				},
				{
					"speaker": "Avery",
					"text": "Same to you. \n \n [She walks away, already pulling out her phone to no doubt get back to her busy schedule that was about to become even more hectic. No matter what was going to happen next, Avery has found a life-long fan in you. You are already thinking about adding more of her songs to your playlists as soon as you get the chance.]",
				}
			]
		}
	]
}
