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
					"text": "[ You see a person approach, dressed from head to toe in the least form-fitting clothes imaginable. ]"
				},
				{
					"speaker": "",
					"text": "[ Baggy pants, puffy jacket with a collar that covers half their face, and the other half is obscured by large, dark sunglasses. The whole ensemble is topped off with a droopy bucket hat for good measure. ]"
				},
				{
					"speaker": "",
					"text": "[ It was almost giving 'three kids in a trench coat' vibes, if not for their height lacking just enough for that to be the case. ]"
				},
				{
					"speaker": "",
					"text": "[ Despite their best efforts to conceal their features, you can still catch the twitch of the muscles around their eyebrows indicating the rapidly shifty eyes behind the shades. ]"
				},
				{
					"speaker": "",
					"text": "[ Even though you haven't been in charge of this stall very long, you know enough to recognize what was happening here. ]"
				},
				{
					"speaker": "",
					"text": "[ Either this is someone who doesn't want to be seen perusing your merchandise, or you were about to get robbed. ]"
				},
				{
					"speaker": "???",
					"text": "Hi, is this where I get the seafood for, um... sapphic...? People...?"
				},
				{
					"speaker": "You",
					"text": "Sure is. Is there something you'd like to order?"
				},
				{
					"speaker": "???",
					"text": "Ah... I think so. Sorry, it's my first time here."
				},
				{
					"speaker": "You",
					"text": "That's perfectly fine. It's super simple. I have a menu here of the fish available today. Just pick one that you feel suits your specific needs."
				},
				{
					"speaker": "You",
					"text": "The rest is up to fate."
				},
				{
					"speaker": "",
					"text": "[ Their eyebrows become even twitchier as they survey the menu. At least it didn't seem like you were getting robbed today. ]"
				},
				{
					"speaker": "???",
					"text": "Can I ask what Secret Relationship does, exactly?"
				},
				{
					"speaker": "You",
					"text": "That's a popular one. Sometimes you want to date someone but it's dangerous if other people find out."
				},
				{
					"speaker": "You",
					"text": "Other times, it's just exciting to have something between you and another person that no one else knows about."
				},
				{
					"speaker": "You",
					"text": "Either way, this fish can make it so having a hidden lover would have easier circumstances."
				},
				{
					"speaker": "You",
					"text": "No guarantees, of course. But it's better if you and another person are already planning to go down this path."
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
					"text": "[ For a moment, you wonder if you know this person personally, but they didn't give off the impression that they know you. ] "
				},
				{
					"speaker": "",
					"text": "[ But it was best not to think too hard on why you might recognize them. People have their reasons for keeping secrets, especially in queer spaces. ]"
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
					"text": "A familiar amalgamation of fabric appears in your field of vision. ]"
				},
				{
					"speaker": "",
					"text": "[ The colour of the puffy jacket has changed (a very nice brand, no less), but the droopy bucket hat and gratuitously covered face were a perfect match. ]"
				},
				{
					"speaker": "",
					"text": "[ What didn't match, however, was the behaviour of the brow poking out above the large sunglasses. ]"
				},
				{
					"speaker": "",
					"text": "[ Gone was the nervous twitch. Instead, they sagged like the weight of reality itself sat upon them as easy as a bead of sweat on a warm day. Far too at home. ]"
				},
				{
					"speaker": "???",
					"text": "Um, hello."
				},
				{
					"speaker": "You",
					"text": "Hello again!"
				},
				{
					"speaker": "",
					"text": "[ That sagging brow suddenly shot up. ]"
				},
				{
					"speaker": "???",
					"text": "A-again? Oh, do you... recognize me after all?"
				},
				{
					"speaker": "You",
					"text": "I don't know your name or anything. But it's hard to miss your outfit."
				},
				{
					"speaker": "You",
					"text": "I hope you don't mind me saying, but you are the most conspicuously dressed inconspicuous person I have ever seen."
				},
				{
					"speaker": "???",
					"text": "Oh... I suppose you're right. I went a little overboard."
				},
				{
					"speaker": "???",
					"text": "I guess trying too hard not to be noticed loops back around into being too noticeable, huh?"
				},
				{
					"speaker": "You",
					"text": "It's fine. It still works, I can't tell who you might be under all of that, so just relax."
				},
				{
					"speaker": "You",
					"text": "Besides, it's easier for me this way. I remember what I got you last time. Secret Relationship, right?"
				},
				{
					"speaker": "You",
					"text": "Did it work out, or did you want to try another fish...?"
				},
				{
					"speaker": "",
					"text": "[Despite her gloomy demeanor, she brightens up a little.]"
				},
				{
					"speaker": "???",
					"text": "Oh, yes, it worked perfectly. I actually ate it with my..."
				},
				{
					"speaker": "???",
					"text": "...girlfriend..."
				},
				{
					"speaker": "???",
					"text": "It... felt like it gave us the bravery we needed to start something. And we did. And it's been great. Really great."
				},
				{
					"speaker": "???",
					"text": "I love her so much."
				},
				{
					"speaker": "???",
					"text": "It just... also isn't... easy."
				},
				{
					"speaker": "You",
					"text": "Ah. Yeah. Sorry about that."
				},
				{
					"speaker": "You",
					"text": "Tropes can be just as stressful as they are freeing and healing. Much like relationships and love in general."
				},
				{
					"speaker": "You",
					"text": "It's part of the experience. But Secret Relationship is a very specific beast in that way."
				},
				{
					"speaker": "???",
					"text": "Oh, don't get me wrong. I'm so grateful. This is everything I wanted for so long. I knew going into it that it wouldn't be a walk in the park."
				},
				{
					"speaker": "???",
					"text": "That's why I needed a fish for a boost in the first place but..."
				},
				{
					"speaker": "???",
					"text": "I don't know. I don't even know why I came back. I got what I wanted."
				},
				{
					"speaker": "You",
					"text": "I do have other fish for established couples as well who want to have certain experiences."
				},
				{
					"speaker": "You",
					"text": "There is a whole other world beyond just the part where the couple finally gets together."
				},
				{
					"speaker": "???",
					"text": "Really? But I don't even know what we could do in our circumstances..."
				},
				{
					"speaker": "???",
					"text": "Ugh, this is the problem. I don't know what I'm doing and because I'm in a secret relationship, the only person I can go to for advice is a fish lady!"
				},
				{
					"speaker": "???",
					"text": "...No offence."
				},
				{
					"speaker": "You",
					"text": "None taken. I am a fish lady."
				},
				{
					"speaker": "You",
					"text": "Look, I see a lot of different sapphics living out their sapphic lives sapphic-ly. I can certainly offer some informed advice."
				},
				{
					"speaker": "You",
					"text": "If I have a fish to go with the advice, even better. I'm all about customer satisfaction, no matter what that might look like."
				},
				{
					"speaker": "",
					"text": "[Said customer you're trying to satisfy suddenly becomes very nervous and shifty, like you've activated a fight or flight response.]"
				},
				{
					"speaker": "???",
					"text": "Um. Well. I, uh. Um. Um.... The thing is. You see..."
				},
				{
					"speaker": "???",
					"text": "................."
				},
				{
					"speaker": "???",
					"text": "Ugh, forget it. This was a mistake. I'm holding up business. I'm sorry for wasting your time."
				},
				{
					"speaker": "You",
					"text": "Hey, hey, hey, wait. Hold on. Are you in any trouble? Do you need help? I want to make sure you're okay."
				},
				{
					"speaker": "You",
					"text": "This is a safe space. I promise."
				},
				{
					"speaker": "???",
					"text": "I'm not in any trouble. Not yet, anyway."
				},
				{
					"speaker": "",
					"text": "[ She shifts on her feet for a moment, contemplating. ]"
				},
				{
					"speaker": "",
					"text": "[ Whatever gears are turning in her head seem to be actively in conflict, but even the most well-oiled machine can have a breaking point. ]"
				},
				{
					"speaker": "???",
					"text": "Fuck it. This isn't just about me anymore. I'll do whatever I need to, for her."
				},
				{
					"speaker": "",
					"text": "[ She pulls down her collar and rips off her glasses. When she does so, a curl of vibrant hair cascades down the side of her face from the inside of her bucket hat. ]"
				},
				{
					"speaker": "",
					"text": "[ Despite the rest of her being covered still, it was enough. You've seen this face many times. On billboards, on TV, on social media. ]"
				},
				{
					"speaker": "",
					"text": "[ It was unmistakable. ]"
				},
				{
					"speaker": "???",
					"text": "I don't know if this will mean anything to you or not, but my name is Avery. Avery Audrey. I'm... a pop star."
				},
				{
					"speaker": "",
					"text": "[ This did, in fact, mean something to you. ]"
				},
				{
					"speaker": "",
					"text": "[ You didn't follow her career closely or anything, but Avery Audrey was one of the biggest pop stars both domestically and internationally. She was a household name. ]"
				},
				{
					"speaker": "",
					"text": "[ Several of her songs were on your playlists, including her mega-hit \"Repeat After Me\". ]"
				},
				{
					"speaker": "",
					"text": "[ And at that moment, it dawns on you that one of the most visible public figures in the world is sapphic. There is a sense of elation in that. ]"
				},
				{
					"speaker": "",
					"text": "[ But not everyone would feel that way. ]"
				},
				{
					"speaker": "",
					"text": "[ And suddenly, everything made sense. ]"
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
					"text": "I'm glad you understand... So yeah, you're the first to know."
				},
				{
					"speaker": "Avery",
					"text": "Avery Audrey is attracted to women."
				},
				{
					"speaker": "Avery",
					"text": "And I was so marketed as the girl next door that would be the perfect girlfriend for any average guy. Then I fell for my backup dancer..."
				},
				{
					"speaker": "Avery",
					"text": "...who is also a girl..."
				},
				{
					"speaker": "You",
					"text": "And you're scared of the public backlash."
				},
				{
					"speaker": "Avery",
					"text": "Scared for me."
				},
				{
					"speaker": "Avery",
					"text": "Scared for my career."
				},
				{
					"speaker": "Avery",
					"text": "Scared for my girlfriend."
				},
				{
					"speaker": "Avery",
					"text": "I dragged her into this, no matter what. Even though we decided we were all in. And at the time, I felt that dating secretly would be enough."
				},
				{
					"speaker": "Avery",
					"text": "But hiding her away? It's harder than I thought."
				},
				{
					"speaker": "Avery",
					"text": "Not just the fear of being caught but..."
				},
				{
					"speaker": "Avery",
					"text": "I hate treating her like she's something to be ashamed of. Even if she says she doesn't feel that way."
				},
				{
					"speaker": "Avery",
					"text": "It sucks."
				},
				{
					"speaker": "You",
					"text": "Hey. It's not your fault. You have valid reasons for keeping this quiet. It's not a shame thing. It's a safety and comfort thing."
				},
				{
					"speaker": "You",
					"text": "And you deserve your privacy. Every sapphic does."
				},
				{
					"speaker": "You",
					"text": "Every sapphic should have a right to love as loudly or as quietly as they want."
				},
				{
					"speaker": "Avery",
					"text": "I know you're right. I just wish me and my girlfriend had that choice. "
				},
				{
					"speaker": "You",
					"text": "Me too. Believe me, if I had a fish that ended social stigma and ignorance and hatred over who people love, it would be my best seller."
				},
				{
					"speaker": "You",
					"text": "Hell, I'd give that out for free."
				},
				{
					"speaker": "Avery",
					"text": "I guess magic fish only go so far, huh?"
				},
				{
					"speaker": "You",
					"text": "Unfortunately."
				},
				{
					"speaker": "You",
					"text": "But hey, it's not without powers."
				},
				{
					"speaker": "You",
					"text": "My fish can't fix everything, or make miracles happen. They can just help you along in wherever you are in your life."
				},
				{
					"speaker": "You",
					"text": "If you want a suggestion..."
				},
				{
					"speaker": "Avery",
					"text": "Please."
				},
				{
					"speaker": "You",
					"text": "I have a Hurt/Comfort on the menu today."
				},
				{
					"speaker": "You",
					"text": "You and your girlfriend are going through a difficult period. And you only have each other."
				},
				{
					"speaker": "You",
					"text": "But because you have each other, the comfort you bring each other can help balance out the hurt. Even bring catharsis."
				},
				{
					"speaker": "You",
					"text": "It's not much, but..."
				},
				{
					"speaker": "Avery",
					"text": "No, that's wonderful. It won't invite more hurt, will it?"
				},
				{
					"speaker": "You",
					"text": "I don't claim to understand how all of the magic works, but it tends to attract the kind of experience you want out of the trope."
				},
				{
					"speaker": "You",
					"text": "You're already hurt. Let this give you both the space to enjoy some comfort."
				},
				{
					"speaker": "Avery",
					"text": "Sold. I want to comfort my girlfriend through this too. Even though I can't promise her this will get any better than how it is now."
				},
			],
			"after_transaction": [
				{
					"speaker": "You",
					"text": "I hope this helps, even a little."
				},
				{
					"speaker": "You",
					"text": "And on a personal note, I'm a fan, and in a world where straight is the default, I'm glad that you're one of us."
				},
				{
					"speaker": "You",
					"text": "I wish you the best."
				},
				{
					"speaker": "Avery",
					"text": "That... means a lot. It's nice to know someone is on our side, you know? Maybe..."
				},
				{
					"speaker": "Avery",
					"text": "...ah, never mind. I should go. My manager is probably tearing everything apart looking for me."
				},
				{
					"speaker": "Avery",
					"text": "Thank you again, fish lady."
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
					"text": "[ You almost don't recognize the approaching customer, in that you DO recognize them, but they're not usually so recognizable when you see them like this in person. ]"
				},
				{
					"speaker": "",
					"text": "[ It's Avery, and while she still has the sunglasses, her bucket hat has been replaced by a cap with loose, vibrant curls spilling out here and there. ]"
				},
				{
					"speaker": "",
					"text": "[ She isn't dressed like a pop star, so you'd have to be paying close attention to notice it was her. ]"
				},
				{
					"speaker": "",
					"text": "[ Her brow tells a different story today. It's stiff. Uneasy, but determined. ]"
				},
				{
					"speaker": "",
					"text": "[ A fire of authenticity contrasting the usual manufactured circumstances of her professional life. ]"
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
					"text": "Yes. I'm scared shitless, but yes."
				},
				{
					"speaker": "Avery",
					"text": "I had a long conversation with my girlfriend during the moments of peace we could find, thanks to your fish. And we decided we can't keep living like this."
				},
				{
					"speaker": "Avery",
					"text": "It's not good for us. And she's more important to me than... anything."
				},
				{
					"speaker": "Avery",
					"text": "I won't let fear stand in the way of her happiness."
				},
				{
					"speaker": "You",
					"text": "Whoa, that's huge! I'm sure you know the risks. What made you decide?"
				},
				{
					"speaker": "Avery",
					"text": "It's actually something you said last time. How straight is considered the default?"
				},
				{
					"speaker": "Avery",
					"text": "Whenever I thought about that, I got so angry just thinking about how I was just assumed to be straight because I fit a certain stereotype."
				},
				{
					"speaker": "Avery",
					"text": "I'm sick of it. So is my girlfriend. So, we're going to challenge the status quo."
				},
				{
					"speaker": "Avery",
					"text": "Together."
				},
				{
					"speaker": "Avery",
					"text": "Show that we don't fit into perfect little boxes. I might lose a lot, but I'm in a position where I can still support myself if everything goes wrong."
				},
				{
					"speaker": "Avery",
					"text": "And maybe by doing this, I can change some minds little by little, until there's no longer a need to come out for anyone."
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
					"text": "Remember that whole 'scared shitless' thing? I know we can't rely on your fish for everything, but..."
				},
				{
					"speaker": "Avery",
					"text": "I mean, this is a big life decision! If you have a fish with a high courage content, I sure could use it right now."
				},
				{
					"speaker": "You",
					"text": "I don't have anything direct like that. Hmm... Let's see..."
				},
				{
					"speaker": "You",
					"text": "May I ask a question? It's not about an autograph."
				},
				{
					"speaker": "Avery",
					"text": "Ha, go right ahead."
				},
				{
					"speaker": "You",
					"text": "Your girlfriend knows about this stall, right? You took a big risk coming out here every time, even in your disguise."
				},
				{
					"speaker": "You",
					"text": "Why didn't you send her? It'd be safer."
				},
				{
					"speaker": "Avery",
					"text": "Well... I'm the famous one in this relationship. I'm the problem."
				},
				{
					"speaker": "Avery",
					"text": "If not for me, we wouldn't have to stress in the first place. I guess I felt the responsibility to... be the one to fix it."
				},
				{
					"speaker": "Avery",
					"text": "I didn't want to put anything else on her."
				},
				{
					"speaker": "You",
					"text": "I see. It makes sense, from your perspective. But you said from the beginning, you only have each other. You're a team."
				},
				{
					"speaker": "You",
					"text": "She's agreed to walk this path with you. You shouldn't take this burden on alone. You're about to face a lot of scrutiny from all angles."
				},
				{
					"speaker": "You",
					"text": "You're going to need support, too. Let her. And let her have her agency to take on what she can handle, too."
				},
				{
					"speaker": "You",
					"text": "There's two people in a relationship, even when one is a world famous pop star."
				},
				{
					"speaker": "Avery",
					"text": "I..."
				},
				{
					"speaker": "Avery",
					"text": "..."
				},
				{
					"speaker": "Avery",
					"text": "I... know you're right. It's just hard. I love her so much. I can't help but want to protect her."
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
					"text": "Power Couple."
				},
				{
					"speaker": "You",
					"text": "Think about it. You're both about to be in the spotlight. You're going to want a strong, united front."
				},
				{
					"speaker": "You",
					"text": "The image of a Power Couple is alluring. Desirable. And it'll allow you to feel you're on equal footing in this."
				},
				{
					"speaker": "You",
					"text": "You can protect each other. If you want to make a statement and feel strong doing it, then there's no better stance to take."
				},
				{
					"speaker": "You",
					"text": "It might affect your public image, but..."
				},
				{
					"speaker": "You",
					"text": "At least you can feel proud of it. And your girlfriend."
				},
				{
					"speaker": "Avery",
					"text": "A complete rebrand, huh? Well, I guess it was inevitable. My managers will just have to deal, if they stick with me."
				},
				{
					"speaker": "Avery",
					"text": "And... I like the idea of seeing my girlfriend at my side and us being admired for our strength."
				},
				{
					"speaker": "Avery",
					"text": "I think that would set myself at ease too, seeing us like that."
				},
				{
					"speaker": "Avery",
					"text": "I can trust myself to let her take some of a burden if our whole thing is we're a team."
				},
				{
					"speaker": "Avery",
					"text": "Alright, talked myself into it. I'll take it."
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
					"text": "It's not that. I meant what I said before about not wanting to rely on your fish for everything."
				},
				{
					"speaker": "Avery",
					"text": "My girlfriend and I agreed. Since this was one of the biggest steps of our lives, we'd get a little magic help one more time. But after this, we're on our own."
				},
				{
					"speaker": "Avery",
					"text": "It feels... right. And if I have her beside me, I won't need the extra courage, right?"
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
					"text": "Anything for a fan."
				},
				{
					"speaker": "",
					"text": "[ She tilts her head and winks, throwing up two fingers cutely, and you swear you see a woosh of sparkles surround her. ]"
				},
				{
					"speaker": "",
					"text": "[ It's easy to see how her charisma has carried her to the top, as well as her music. ]"
				},
				{
					"speaker": "",
					"text": "[ You think that as long as she keeps that up and leans on her loved ones, she'll be just fine. ]"
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
					"text": "Same to you.",
				},
				{
					"speaker": "",
					"text": "[ She walks away, already pulling out her phone to no doubt get back to her busy schedule that was about to become even more hectic. ]"
				},
				{
					"speaker": "",
					"text": "[ No matter what was going to happen next, Avery has found a life-long fan in you. ]"
				},
				{
					"speaker": "",
					"text": "[ You are already thinking about adding more of her songs to your playlists as soon as you get the chance. ]"
				}
			]
		}
	],
	"Sophia": [
		{
			"visit": 0,
			"required_fish": "Flower Shop AU",
			"before_transaction": [
				{
			  "speaker": "",
			  "text": "[ It's not often you're caught unawares, but your attention must've been divided enough that you are almost startled by the sudden presence of a slender but defined hand sliding across the counter of your little stall. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Your eyes follow from the tips of the fingers and all the way up the arm to see the face of the owner. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Bright smile, and fiery eyes that practically gleamed, and there was a warmth to the fire rather than aggression. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You almost feel an impulse to shield your eyes from the light emanating from this possible patron that has appeared before you, in a manner of speaking. ]"
				},
				{
				  "speaker": "???",
				  "text": "So. Just to make sure I don't make a fool of myself immediately, is this the place that makes sapphic dreams come true?"
				},
				{
				  "speaker": "",
				  "text": "[ You blink rapidly, not expecting the question. Most of the clients you get are regulars and know exactly what they're getting into. ]"
				},
				{
				  "speaker": "",
				  "text": "[ In the short time you've been in charge of the stall, you haven't had to educate someone and correct any misinformation very often. ]"
				},
				{
				  "speaker": "You",
				  "text": "That's a bit of an exaggeration. I'm not really sure where you got your info, but the kind of magic done here is more of a guide, or a catalyst for certain experiences."
				},
				{
				  "speaker": "You",
				  "text": "There's no guarantees, you just have to be open to the possibilities of what the magic can do for you."
				},
				{
				  "speaker": "???",
				  "text": "So it's a placebo?"
				},
				{
				  "speaker": "",
				  "text": "[ You're taken aback once again. You don't like the accusation of what you do being fake. ]"
				},
				{
				  "speaker": "You",
				  "text": "Well, no—"
				},
				{
				  "speaker": "",
				  "text": "[ She throws her head back in boisterous laughter. It somehow resembles bells and chimes and a chorus of harps and violins and all those clichés. ]"
				},
				{
				  "speaker": "???",
				  "text": "I'm just teasing. Your services came highly recommended! That's enough for me you aren't running a fraudulent practice."
				},
				{
				  "speaker": "???",
				  "text": "Besides, even if you were, I'd take that chance. I'm desperate."
				},
				{
				  "speaker": "You",
				  "text": "Nice to meet you, Desperate. I'm a potential fraudster. "
				},
				{
				  "speaker": "",
				  "text": "[ She smirks and extends the hand that made such a strong, sudden impression on you in the first place. ]"
				},
				{
				  "speaker": "???",
				  "text": "Cute. My real name is Sophia. Nice to potentially be scammed by you."
				},
				{
				  "speaker": "",
				  "text": "[ Sophia winks, and you feel a prickle of heat creep up the back of your neck. It's so distracting that you almost forget to reach out and shake her hand. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You're not often knocked off balance like this. Something about this woman's aura is just so staggering. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You're not sure whether to be irritated or intrigued. ]"
				},
				{
				  "speaker": "You",
				  "text": "I suppose the only way to properly gain your trust is to let you experience it for yourself. So, what fish do you want?"
				},
				{
				  "speaker": "Sophia",
				  "text": "P-Pardon? Fish?"
				},
				{
				  "speaker": "You",
				  "text": "Oh wow, you weren't told much, huh? "
				},
				{
				  "speaker": "You",
				  "text": "They're magic fish, with the power of tropes that work specifically for sapphics."
				},
				{
				  "speaker": "Sophia",
				  "text": "Oh, that's ironic."
				},
				{
				  "speaker": "You",
				  "text": "How so?"
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm allergic to seafood."
				},
				{
				  "speaker": "You",
				  "text": "Ah."
				},
				{
				  "speaker": "You",
				  "text": "Well, that's not a problem. It's just how the magic takes form. "
				},
				{
				  "speaker": "You",
				  "text": "They're related in looks and texture but that's as far as it goes. I've never heard of someone with a seafood allergy who had a problem. "
				},
				{
				  "speaker": "Sophia",
				  "text": "You're really asking for a lot of trust here, aren't you?"
				},
				{
				  "speaker": "You",
				  "text": "Hey, you're the one who said you were desperate. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Ugh, bringing up my one moment of vulnerability. How cruel. "
				},
				{
				  "speaker": "Sophia",
				  "text": "But I concede. Do you have a menu, or...?"
				},
				{
				  "speaker": "You",
				  "text": "Just there."
				},
				{
				  "speaker": "Sophia",
				  "text": "...What is... Flower Shop... \"ow\"?"
				},
				{
				  "speaker": "You",
				  "text": "A-U. Alternate Universe. It's based on a trope. "
				},
				{
				  "speaker": "You",
				  "text": "Don't think about it too much. It won't actually bring you into a different reality. "
				},
				{
				  "speaker": "You",
				  "text": "It's supposed to evoke the experience of finding a connection somewhere you might have business with. "
				},
				{
				  "speaker": "You",
				  "text": "Sweet. Light. Fluffy. It's a popular one. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Fish that aren't actually fish that cause people to meet other people in specific ways? What exactly is the science behind that?"
				},
				{
				  "speaker": "You",
				  "text": "It's magic. Magic is famously not science. It can't be explained in a way that can be understood very easily. "
				},
				{
				  "speaker": "You",
				  "text": "Sometimes, it just works like that and that's okay. "
				},
				{
				  "speaker": "Sophia",
				  "text": "As a scientist, this is a concept I struggle with. "
				},
				{
				  "speaker": "You",
				  "text": "Then we definitely come from different worlds, I guess. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Quite the pair are we, no?"
				},
				{
				  "speaker": "You",
				  "text": "It's fine. I hold a lot of respect for science. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Then I hope you respect that I'm going to buy this magical fish and consume it as soon as I get a chance just to see what happens, as is the scientist thing to do. "
				},
				{
				  "speaker": "You",
				  "text": "I absolutely respect that. Especially since it means a purchase. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Cute. "
				},
			],
			"after_transaction": [
				{
				  "speaker": "Sophia",
				  "text": "Well, if this works, I guess I won't need your services again. "
				},
				{
				  "speaker": "You",
				  "text": "Who knows? A lot of people come back. There's a lot of sapphic experiences to be had. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Heh. Well if I ever find myself back here, maybe that wouldn't be so bad. You've piqued my curiosity, Cupcake."
				},
				{
				  "speaker": "You",
				  "text": "I'll be curious if my scam works or not. "
				},
				{
				  "speaker": "",
				  "text": "[ Sophia smirks again before leaving, and you decide that if Sophia ever does become a repeat customer, then you'll surely not be so caught off guard next time. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You just need to figure her out. Maybe you have a bit of an inclination for science as well. ]"
				},
			]
		},
		{
			"visit": 1,
			"required_fish": "Coffee Shop AU",
			"before_transaction": [
				{
				  "speaker": "Sophia",
				  "text": "Remind me how this works again?"
				},
				{
				  "speaker": "",
				  "text": "[ You look up quickly to see that Sophia had arrived at some point and was raising her eyebrow skeptically at you. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Damn. She caught you unawares again. ]"
				},
				{
				  "speaker": "You",
				  "text": "Remember? It's magic. It just sort of works. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Yeah, I know, but like— Conceptually. "
				},
				{
				  "speaker": "Sophia",
				  "text": "How is it supposed to work? Do I just wake up one day and my life suddenly feels like a Christmas romantic comedy? "
				},
				{
				  "speaker": "Sophia",
				  "text": "Because I haven't been getting that feeling. And it's not for lack of trying."
				},
				{
				  "speaker": "",
				  "text": "[ It's now you notice that Sophia is holding a small bouquet of various flowers in her hand. ]"
				},
				{
				  "speaker": "You",
				  "text": "Well, it looks like you caught someone's attention."
				},
				{
				  "speaker": "Sophia",
				  "text": "Oh, this? No, no. I bought this myself because I feel terrible going to a privately owned business without buying anything. "
				},
				{
				  "speaker": "Sophia",
				  "text": "That's part of why I ended up buying a fish while I have a seafood allergy. "
				},
				{
				  "speaker": "You",
				  "text": "Gee, thanks. "
				},
				{
				  "speaker": "You",
				  "text": "Did you actually go to a flower shop? "
				},
				{
				  "speaker": "You",
				  "text": "It's not that literal, you know. It's just based on the trope name but it's more about the vibe. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Yeah. I got that sense when you explained it. "
				},
				{
				  "speaker": "Sophia",
				  "text": "But like I said, I wasn't really seeing any results, so I thought, why the hell not? Might as well go to the source. "
				},
				{
				  "speaker": "Sophia",
				  "text": "And I don't know what your fish believe I'm into but burly dudes with what looked like mustard in his beard is a strange choice for me. "
				},
				{
				  "speaker": "You",
				  "text": "Aw. Sounds like you'll make a lovely couple. "
				},
				{
				  "speaker": "Sophia",
				  "text": "You're hilarious. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Truly. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm glad you can find the humour among the mounting evidence that you might be running a scam here. "
				},
				{
				  "speaker": "You",
				  "text": "Look. I'm sorry it didn't work out this time. I told you it's not guaranteed. "
				},
				{
				  "speaker": "You",
				  "text": "The magic sort of just encourages the experiences to happen. But there's more than one person involved and other people you could encounter have to be open to it, too."
				},
				{
				  "speaker": "You",
				  "text": "I can't just sell fish that force a connection. Then we'd be contending with issues of consent. "
				},
				{
				  "speaker": "You",
				  "text": "Besides, you'd want a genuine connection, wouldn't you?"
				},
				{
				  "speaker": "",
				  "text": "[ You notice Sophia's shoulders sag a bit, and her usual bright warmth dims a little. ]"
				},
				{
				  "speaker": "Sophia",
				  "text": "I guess that makes sense. So it's just that nobody is open to having these experiences with me. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Story of my life, I guess. "
				},
				{
				  "speaker": "You",
				  "text": "Hey, no. It's not a you thing. "
				},
				{
				  "speaker": "You",
				  "text": "It's more of, everyone has got something going on in their lives and sometimes the stars just have to align, even with the help of magic fish."
				},
				{
				  "speaker": "Sophia",
				  "text": "When the stars haven't aligned your entire life, it starts to weigh down a little. "
				},
				{
				  "speaker": "Sophia",
				  "text": "SIf you couldn't tell by now, I'm a little unlucky in love. And I just don't know why. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I've tried looking at it through the scientific method, but that yielded nothing. So I turned to magic, and even magic can't help me. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm feeling a little hopeless."
				},
				{
				  "speaker": "",
				  "text": "[ Once again, you're taken aback. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You agree, it's strange that someone like Sophia would struggle to find a girlfriend. ]"
				},
				{
				  "speaker": "",
				  "text": "[ She's gorgeous, personable, and she has little kind quirks like being compelled to support small businesses. ]"
				},
				{
				  "speaker": "",
				  "text": "[ It's yet another thing you feel you need to figure out about her.]"
				},
				{
				  "speaker": "You",
				  "text": "Here, look at it this way. "
				},
				{
				  "speaker": "You",
				  "text": "It was your first attempt using a magical method, and would a scientist ever stop after just one failed attempt, or would they do a bit more experimenting? "
				},
				{
				  "speaker": "You",
				  "text": "I've had many customers find success with another fish after others haven't worked out. "
				},
				{
				  "speaker": "You",
				  "text": "It's too early to throw in the towel. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Hmm, are you sure you're not just saying that to keep my business?"
				},
				{
				  "speaker": "",
				  "text": "[ Judging by the smirk that has reappeared on her face, you can tell she isn't being serious, but you decide to take it serious anyway. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You do feel compelled to help cheer her up. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You don't know her very well, but still, seeing Sophia frown feels wrong. ]"
				},
				{
				  "speaker": "You",
				  "text": "About that. I have a policy. "
				},
				{
				  "speaker": "You",
				  "text": "If a fish's magic is ineffective for someone, then the next fish is 50% off. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Oh, that's generous. Couldn't people take advantage of that? "
				},
				{
				  "speaker": "Sophia",
				  "text": "How would you be able to verify they weren't just lying to get cheaper fish?"
				},
				{
				  "speaker": "You",
				  "text": "I have my ways."
				},
				{
				  "speaker": "Sophia",
				  "text": "Let me guess. Magic?"
				},
				{
				  "speaker": "You",
				  "text": "You're starting to get it. "
				},
				{
				  "speaker": "Sophia",
				  "text": "And I guess I just have to accept that's just how it works, huh? "
				},
				{
				  "speaker": "Sophia",
				  "text": "Alright, fine. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Then in all your magical insight, be honest: am I doomed to be alone?"
				},
				{
				  "speaker": "You",
				  "text": "Definitely not. "
				},
				{
				  "speaker": "You",
				  "text": "There's someone out there for you. And it'll be worth the wait. "
				},
				{
				  "speaker": "You",
				  "text": "I can feel it. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Ha. That's... oddly comforting. "
				},
				{
				  "speaker": "Sophia",
				  "text": "The idea that it's out of my hands and I can't logic or rationalize about it. I just have to let it happen. "
				},
				{
				  "speaker": "You",
				  "text": "Well, you're not completely devoid of control. You still have some influence. "
				},
				{
				  "speaker": "You",
				  "text": "Like the fish. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Ah, right, can't forget your little scam, huh? "
				},
				{
				  "speaker": "Sophia",
				  "text": "Alright, for 50% off I'll try again. Nothing too wild and out there, though. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm still gathering early data. "
				},
				{
				  "speaker": "You",
				  "text": "It just so happens that today I have a Coffee Shop AU on the menu. "
				},
				{
				  "speaker": "You",
				  "text": "Or Coffee Shop ow, as some people might call it. "
				},
				{
				  "speaker": "Sophia",
				  "text": "You think you're sooo cute, don't you? "
				},
				{
				  "speaker": "Sophia",
				  "text": "And wait, how is that different than the Flower Shop AU? "
				},
				{
				  "speaker": "You",
				  "text": "Similar principle, but the Flower Shop AU invites a brighter and lighter encounter. "
				},
				{
				  "speaker": "You",
				  "text": "The Coffee Shop AU is more... sensual. Has more depth. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Damn, what are you trying to get me into?"
				},
				{
				  "speaker": "You",
				  "text": "You wanted to gather more data. This is the same framing, but different variables. "
				},
				{
				  "speaker": "You",
				  "text": "Great for cross-analysing results. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Okay, now you're speaking my language. Guess you don't just know magic, huh?"
				},
				{
				  "speaker": "You",
				  "text": "I go on Wikipedia deep dives sometimes just like everybody else. "
				},
				{
				  "speaker": "Sophia",
				  "text": "God, you really are cute. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm already going to buy the fish, you can tone it down. "
				},
				{
				  "speaker": "You",
				  "text": "Gotta still secure you as a repeat customer, don't I? "
				},
				{
				  "speaker": "You",
				  "text": "Here, I'll ring you up. "
				},
			],
			"after_transaction": [
				{
				  "speaker": "Sophia",
				  "text": "For the record, I don't think you're actually running a scam here. "
				},
				{
				  "speaker": "You",
				  "text": "I appreciate that. Considering I've not really given you a reason to trust me yet. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Hey, I ate your seafood while I have a seafood allergy and I didn't die. "
				},
				{
				  "speaker": "Sophia",
				  "text": "That gives you some credibility. "
				},
				{
				  "speaker": "You",
				  "text": "Is that part of your scientific method? "
				},
				{
				  "speaker": "Sophia",
				  "text": "Sure is. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Now I'm going to take this to the lab and do some more experimenting."
				},
				{
				  "speaker": "You",
				  "text": "I hope that means you're going to eat it and not dissect it for science."
				},
				{
				  "speaker": "Sophia",
				  "text": "Well now that you've given me the idea..."
				},
				{
				  "speaker": "You",
				  "text": "No no. I don't know what would happen. Magic, remember? "
				},
				{
				  "speaker": "You",
				  "text": "And I'd really prefer it if you didn't end up in an imploding fishy magical portal thing. "
				},
				{
				  "speaker": "Sophia",
				  "text": "As intriguing as that is, alright. Wouldn't want you to lose out on more 50% sales from me, right?"
				},
				{
				  "speaker": "You",
				  "text": "Right, you get it."
				},
				{
				  "speaker": "",
				  "text": "[ Sophia gives a salute with her slightly-wilted bouquet and departs with her new fish meal. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You hope she'll return. With good news, perhaps. ]"
				},
				{
				  "speaker": "",
				  "text": "[ If only so you can brag that you truly weren't a scam the whole time. ]"
				},
			]
		},
		{
			"visit": 2,
			"required_fish": "Soulmates",
			"before_transaction": [
				{
				  "speaker": "Sophia",
				  "text": "Hey, hot stuff!"
				},
				{
				  "speaker": "",
				  "text": "[ Miraculously, you don't jump this time. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Maybe you're getting used to Sophia's ability to just suddenly exist. In fact, you feel a sense of comfort at the sound of her voice. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Confirmation of her return. ]"
				},
				{
				  "speaker": "You",
				  "text": "Well, well, well. Hi there. "
				},
				{
				  "speaker": "You",
				  "text": "I see you have a half-eaten croissant in your hand. "
				},
				{
				  "speaker": "You",
				  "text": "Would that happen to be from a brand new girlfriend you happened to meet at a coffee shop or bakery or something adjacent? "
				},
				{
				  "speaker": "Sophia",
				  "text": "God, I wish. "
				},
				{
				  "speaker": "Sophia",
				  "text": "This croissant is delicious. I'd marry the person who made it, if the people who owned the café weren't an old hetero couple. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Again, not my style. "
				},
				{
				  "speaker": "You",
				  "text": "Wow, that good, huh? Should I be jealous? "
				},
				{
				  "speaker": "You",
				  "text": "I take pride in my cooking, you know. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Heh, if you must know, your cooking is so good that I've debated risking eating real seafood, even with my allergy. "
				},
				{
				  "speaker": "Sophia",
				  "text": "You didn't hear that from me, though. "
				},
				{
				  "speaker": "You",
				  "text": "Well I'm glad you like the taste at least. It sounds like it's falling short in the actual magic area. "
				},
				{
				  "speaker": "",
				  "text": "[ Sophia rests her elbows on the counter and tucks her head between her arms, clasping her hands behind her neck before letting out a frustrated groan. ]"
				},
				{
				  "speaker": "Sophia",
				  "text": "Are you absolutely sure there isn't anything wrong with me? "
				},
				{
				  "speaker": "Sophia",
				  "text": "Like, how am I this unlucky?"
				},
				{
				  "speaker": "Sophia",
				  "text": "I even had some promising encounters but then there would be something off. Like a wedding ring. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Or into cryptocurrency. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Or wanted by the law in 48 countries. "
				},
				{
				  "speaker": "You",
				  "text": "Damn. Either the fish you ate took sensual and full of depth too far, or you really do have some bad luck. "
				},
				{
				  "speaker": "Sophia",
				  "text": "And honestly, I can't even blame it all on bad luck. "
				},
				{
				  "speaker": "Sophia",
				  "text": "There were a few times where I could've made the first move and I just didn't because I feel so inexperienced. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I just get stuck in my own head. "
				},
				{
				  "speaker": "You",
				  "text": "Really? My impression has been you're pretty confident when it comes to announcing yourself. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Why, thank you. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I think. "
				},
				{
				  "speaker": "Sophia",
				  "text": "And it's easy when there's no expectations! When it's suddenly framed as potentially romantic, I lose my nerve. "
				},
				{
				  "speaker": "You",
				  "text": "I get that. Then let's do a bit of practice. "
				},
				{
				  "speaker": "",
				  "text": "[ Sophia quickly lifts her head, confused. ]"
				},
				{
				  "speaker": "Sophia",
				  "text": "Now what in the hell do you mean by that? "
				},
				{
				  "speaker": "You",
				  "text": "Role play. Just like they do in those coming-of-age movies. "
				},
				{
				  "speaker": "You",
				  "text": "I pretend I'm an unassuming random sapphic person. You pretend you think I'm pretty and want to strike up a conversation. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I don't have to pretend to think you're pretty."
				},
				{
				  "speaker": "You",
				  "text": "Great. The first step is already over. "
				},
				{
				  "speaker": "You",
				  "text": "Now begin."
				},
				{
				  "speaker": "You",
				  "text": "Oh, what a normal day this is, "
				},
				{
				  "speaker": "You",
				  "text": "where I'm doing my normal things, normally, just like any old day, standing here, "
				},
				{
				  "speaker": "You",
				  "text": "not expecting anyone to approach me and strike up a very engaging conversation while demonstrating their endearing qualities~"
				},
				{
				  "speaker": "Sophia",
				  "text": "You're... ridiculous. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Okay. Uh, hey, come here often?"
				},
				{
				  "speaker": "You",
				  "text": "Oh, my! I didn't see you there! "
				},
				{
				  "speaker": "You",
				  "text": "Well of course I do! I work here!"
				},
				{
				  "speaker": "Sophia",
				  "text": "Oh, you work here? "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm so sorry, I don't mean to bother you while you're on the clock. Let me just purchase something quick. "
				},
				{
				  "speaker": "You",
				  "text": "...I'm starting to understand why the Flower and Coffee Shop fish weren't a good fit. "
				},
				{
				  "speaker": "You",
				  "text": "Uh, ehem, oh it's not a problem, ma'am! "
				},
				{
				  "speaker": "You",
				  "text": "I get off work in about an hour if you'd like to chat about something else? If you'll still be around. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Oh, yeah? So if I stuck around, you wouldn't find it creepy? "
				},
				{
				  "speaker": "You",
				  "text": "I am giving you verbal confirmation that I am okay talking to you after I'm done my shift about whatever you want. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Oh,  I must've made an impression on you then if you're willing to spend your free time off the clock talking to little old me, hmm?"
				},
				{
				  "speaker": "You",
				  "text": "Ah, and I'm sure I haven't made an impression, the way you're going to wait an hour just to talk to me. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Maybe I just have something important to say. Aren't you curious about what that might be? "
				},
				{
				  "speaker": "You",
				  "text": "I have a feeling that no matter what it is, it'll be worth my time. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Guess you'll find out in an hour, no?"
				},
				{
				  "speaker": "You",
				  "text": "I'll be counting the minutes. "
				},
				{
				  "speaker": "Sophia",
				  "text": "...Wow, you're good at this. "
				},
				{
				  "speaker": "You",
				  "text": "You pick up on things only interacting with mainly sapphics all day. "
				},
				{
				  "speaker": "You",
				  "text": "And don't count yourself out. You hit a pretty good flow there. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Yeah, but, that might just be because I'm comfortable around you. "
				},
				{
				  "speaker": "Sophia",
				  "text": "A stranger, though? I don't know. "
				},
				{
				  "speaker": "Sophia",
				  "text": "What'd you say about the fish magic? It depends on the other person's willingness? "
				},
				{
				  "speaker": "Sophia",
				  "text": "I just... have to find the right person, I guess. Easier said than done. "
				},
				{
				  "speaker": "You",
				  "text": "Hmm. Tell you what. "
				},
				{
				  "speaker": "You",
				  "text": "I actually have a really special fish on the menu today. I don't offer it lightly. "
				},
				{
				  "speaker": "You",
				  "text": "If you want to pay another 50% discount. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Yeah, sure, why not? I think we've established I'll just blindly follow any of your recommendations at this point. "
				},
				{
				  "speaker": "Sophia",
				  "text": "What's the fish?"
				},
				{
				  "speaker": "You",
				  "text": "Soulmates."
				},
				{
				  "speaker": "Sophia",
				  "text": "Soulmates? Isn't that a little heavy for a trope? "
				},
				{
				  "speaker": "You",
				  "text": "Well, it's based on those tropes that you're tied to someone by fate, or you have a clock counting down until you meet your person. "
				},
				{
				  "speaker": "You",
				  "text": "So if there's someone out there for you, this fish may give you the opportunity to meet. Then, at least, you'll know you'll hit it off with the person. "
				},
				{
				  "speaker": "You",
				  "text": "It's a hard fish to catch, so I only offer it to special cases. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'm special, huh? I'll believe you meant it as a compliment rather than implying I'm such a hard customer to appease."
				},
				{
				  "speaker": "You",
				  "text": "Both things can be true. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Rude. And sweet. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Hm... Soulmates, huh? I'm a little nervous. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Either I finally meet a person and experience the love I've always wanted to, or it doesn't work and I have to face that I'm fundamentally broken. "
				},
				{
				  "speaker": "You",
				  "text": "Love often comes with risk. "
				},
				{
				  "speaker": "You",
				  "text": "Sometimes the hardest journeys result in the best payoffs. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I've said similar to other scientists at the lab. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Alright. One last experiment. Can Sophia find love?"
				},
				{
				  "speaker": "Sophia",
				  "text": "Gimme that fish. "
				},
			 ],
			"after_transaction": [
				{
				  "speaker": "You",
				  "text": "Well, you know where to find me if it doesn't work out."
				},
				{
				  "speaker": "Sophia",
				  "text": "I don't know. After this, I might just give up entirely and adopt 12 cats. "
				},
				{
				  "speaker": "You",
				  "text": "That's assuming it fails. If it works out, then bring your girlfriend by. "
				},
				{
				  "speaker": "You",
				  "text": "You can get a fish together. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Romantic. But, okay. Sure. I'll find an excuse. "
				},
				{
				  "speaker": "Sophia",
				  "text": "If it works. "
				},
				{
				  "speaker": "You",
				  "text": "When. You gotta want it. "
				},
				{
				  "speaker": "You",
				  "text": "Repeat after me. \"I want it\"."
				},
				{
				  "speaker": "Sophia",
				  "text": "I want it."
				},
				{
				  "speaker": "You",
				  "text": "Then it's gonna happen. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Alright. I'll trust the magic. And you. "
				},
				{
				  "speaker": "You",
				  "text": "That's the spirit."
				},
				{
				  "speaker": "",
				  "text": "[ Sophia shifts on her heels for a moment, reluctant. ]"
				},
				{
				  "speaker": "Sophia",
				  "text": "Well, I better get going. "
				},
				{
				  "speaker": "You",
				  "text": "Good luck, Sophia. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Thank you, cutie pie, for everything. "
				},
				{
				  "speaker": "",
				  "text": "[ You watch her walk away, and you feel a pang of regret. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Maybe the Soulmate fish was a mistake. ]"
				},
				{
				  "speaker": "",
				  "text": "[ If it doesn't work, Sophia will be devastated. You may have just set her up for failure. ]"
				},
				{
				  "speaker": "",
				  "text": "[ But it was out of your hands now. You just had to put faith in the magic. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Sometimes, it just works. ]"
				},
				{
				  "speaker": "",
				  "text": "[ But for some reason, the thought of it working doesn't give you much comfort either.]"
				},
			]
		},
		{
			"visit": 3,
			"required_fish": "",
			"before_transaction": [
				{
				  "speaker": "",
				  "text": "[ This time, there is no sudden manifestation. ]"
				},
				{
				  "speaker": "",
				  "text": "[ No loud, warm greeting or announcement of arrival. ]"
				},
				{
				  "speaker": "",
				  "text": "[ There is, instead, a slow and direct approach. A familiar face. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Sophia has returned, and she's holding a bouquet in one hand and a paper bag from a café in the other. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Surely it must be a gift for her girlfriend, and the fish must have worked. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You should feel happy. Another satisfied customer. ]"
				},
				{
				  "speaker": "Sophia",
				  "text": "Your fish don't work. "
				},
				{
				  "speaker": "",
				  "text": "[ Or not. ]"
				},
				{
				  "speaker": "You",
				  "text": "Huh? Okay, objectively not true, first of all. "
				},
				{
				  "speaker": "You",
				  "text": "Second of all, you didn't find someone? Even after the Soulmate fish?"
				},
				{
				  "speaker": "Sophia",
				  "text": "They clearly don't work for me specifically, because I did meet someone. "
				},
				{
				  "speaker": "Sophia",
				  "text": "And she was great. She was kind, smart, funny, but she wasn't my soulmate. "
				},
				{
				  "speaker": "You",
				  "text": "What made you decide that?"
				},
				{
				  "speaker": "Sophia",
				  "text": "Because I was on a date with her, we were talking, everything was going great, but I felt nothing. "
				},
				{
				  "speaker": "Sophia",
				  "text": "And I feel bad, because she was a great girl, but I couldn't be fully present. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Because despite me finally making this connection I've been craving my whole life, I couldn't enjoy it. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Because the whole time... "
				},
				{
				  "speaker": "Sophia",
				  "text": "I was just thinking of you."
				},
				{
				  "speaker": "",
				  "text": "[ You stare blankly at her. ]"
				},
				{
				  "speaker": "You",
				  "text": "You... what?"
				},
				{
				  "speaker": "Sophia",
				  "text": "I know. I know it's not very appropriate. "
				},
				{
				  "speaker": "Sophia",
				  "text": "You're at work and I'm a customer. But I don't know when else I can find you, and, well, love and science require risk, right? "
				},
				{
				  "speaker": "Sophia",
				  "text": "So, I went to the flower shop and coffee shop again. And I got you flowers and a croissant. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Because I think I like you. I think I really do. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Even though your magic fish don't work for me."
				},
				{
				  "speaker": "",
				  "text": "[ You watch as Sophia thrusts out the bouquet and bag towards you as you looked on, gobsmacked. ]"
				},
				{
				  "speaker": "",
				  "text": "[ This... has never happened before. Both the fact that your fish refuse to work consistently for someone, and that that someone would then turn around an confess to YOU. ]"
				},
				{
				  "speaker": "",
				  "text": "[ It didn't make any sense. The Soulmate fish in particular should have found her someone, and it did, but it apparently wasn't... you. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Who runs a stall. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Where you had a bright and fluffy encounter. ]"
				},
				{
				  "speaker": "",
				  "text": "[ And a deep and sensual one. ]"
				},
				{
				  "speaker": "",
				  "text": "[ And the whole time, you felt drawn to her, like you were supposed to meet this way the whole time... ]"
				},
				{
				  "speaker": "",
				  "text": "[ Oh. ]"
				},
				{
				  "speaker": "",
				  "text": "[ OH. ]"
				},
				{
				  "speaker": "You",
				  "text": "Excuse me. I told you, my fish do work."
				},
				{
				  "speaker": "Sophia",
				  "text": "That's what you're focusing on right now? I'm confessing!"
				},
				{
				  "speaker": "You",
				  "text": "Yeah, to me, at my place of business. Who you couldn't stop thinking about even after you found someone nice. "
				},
				{
				  "speaker": "You",
				  "text": "It's almost like magic. "
				},
				{
				  "speaker": "Sophia",
				  "text": "............................................."
				},
				{
				  "speaker": "Sophia",
				  "text": ".....................oh."
				},
				{
				  "speaker": "You",
				  "text": "My thoughts exactly."
				},
				{
				  "speaker": "Sophia",
				  "text": "So. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Would you like to go out sometime?"
				},
				{
				  "speaker": "You",
				  "text": "I dunno... "
				},
				{
				  "speaker": "You",
				  "text": "You kept calling me a scammer and insisting my fish don't work... "
				},
				{
				  "speaker": "Sophia",
				  "text": "Listen. I can change. Just give me a chance. "
				},
				{
				  "speaker": "You",
				  "text": "Heh. I know a place. It's a popular restaurant among other witches. "
				},
				{
				  "speaker": "You",
				  "text": "No seafood. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Sounds perfect. Here, you take these and... I'll take your number so we can plan?"
				},
				{
				  "speaker": "You",
				  "text": "Easiest sale I could ever make. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Damn. Still cute. "
				},
			],
			"after_transaction": [
				{
				  "speaker": "Sophia",
				  "text": "So. Magic. "
				},
				{
				  "speaker": "Sophia",
				  "text": "It just works, huh?"
				},
				{
				  "speaker": "You",
				  "text": "Sometimes love is the same. Even when you don't understand it. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I wish science were that easy. "
				},
				{
				  "speaker": "You",
				  "text": "Trust me. It's not easy. There's a lot of effort that goes along with it to make the magic last. "
				},
				{
				  "speaker": "Sophia",
				  "text": "Heh. Then I look forward to doing a lot of data collection with you this time. "
				},
				{
				  "speaker": "You",
				  "text": "I have a feeling the results will be pretty stellar."
				},
				{
				  "speaker": "Sophia",
				  "text": "It's just a hypothesis, but... me too. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'll let you get back to work. I actually didn't buy anything this time, not that I need to anymore. "
				},
				{
				  "speaker": "Sophia",
				  "text": "I'll text you later?"
				},
				{
				  "speaker": "You",
				  "text": "I can't wait. "
				},
				{
				  "speaker": "",
				  "text": "[ She smiles and walks away, glancing back for a moment at you and the flowers and croissant you're clutching close to your heart before continuing her departure. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Nobody ever told you the magic from the fish could UNO Reverse and work on you. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Maybe it wasn't supposed to. But that's what magic and love have in common. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Sometimes, it just does. ]"
				}
			]
		},
	],
	"Asani": [
		{
			"visit": 0,
			"required_fish": "Meet Cute",
			"before_transaction": [
				{
				  "speaker": "",
				  "text": "[ You know you have a niche market, so often you just see many people pass your stall by throughout the day. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Other times, you would get a group of friends buying up a bunch of different fish but there would be outliers that didn't partake. ]"
				},
				{
				  "speaker": "",
				  "text": "[ They would just be there to observe and support. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You recognize one of those people approaching now, not surrounded by friends this time. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Just on their own, seeming to exude effort to look small in this moment. ]"
				},
				{
				  "speaker": "You",
				  "text": "Hello, welcome! I've seen you around before."
				},
				{
				  "speaker": "",
				  "text": "[ The customer jumps a little, as if surprised that the corporeal form inhabited could be perceived so easily. ]"
				},
				{
				  "speaker": "???",
				  "text": "Oh, yes! Hi. I've been here before. My name is Asani. "
				},
				{
				  "speaker": "Asani",
				  "text": "My friends love this place but I've never built up the nerve to try it."
				},
				{
				  "speaker": "You",
				  "text": "Decided the day is today?"
				},
				{
				  "speaker": "Asani",
				  "text": "I think so. I was nearby and I decided to just impulsively... browse. "
				},
				{
				  "speaker": "You",
				  "text": "There's no pressure. I know it can seem daunting but you'll only get out of the fish as much or as little as you want. "
				},
				{
				  "speaker": "You",
				  "text": "It's worth trying at least once, if you're curious about it. "
				},
				{
				  "speaker": "Asani",
				  "text": "Yeah, but, would it work? "
				},
				{
				  "speaker": "You",
				  "text": "No guarantees. There's a bunch of factors involved and the magic doesn't exactly fit into a nice box. "
				},
				{
				  "speaker": "You",
				  "text": "But it... inspires life to happen in a certain way, I would say."
				},
				{
				  "speaker": "Asani",
				  "text": "No, I get that. It works for my friends all the time, that's why they love it. "
				},
				{
				  "speaker": "Asani",
				  "text": "But I never tried it because they told me they weren't sure if it would work for me specifically, and I'm scared it won't. "
				},
				{
				  "speaker": "You",
				  "text": "I see. Well these fish do only work for sapphics, so if you're straight—"
				},
				{
				  "speaker": "Asani",
				  "text": "Oh, dear god, no. No. "
				},
				{
				  "speaker": "Asani",
				  "text": "Not straight. Absolutely not. "
				},
				{
				  "speaker": "Asani",
				  "text": "I'm gay as hell. "
				},
				{
				  "speaker": "You",
				  "text": "Then I don't see the problem. You can peruse the menu and prove your friends wrong. "
				},
				{
				  "speaker": "",
				  "text": "[ You've become pretty good at reading people in the time you've run this stall, so you can tell Asani's head is full of an inner debate that you're not privy to. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "I just don't know what I'll do if they're right. "
				},
				{
				  "speaker": "You",
				  "text": "Hm. "
				},
				{
				  "speaker": "You",
				  "text": "Well, if you want to take the plunge and give it a shot, I can start you with a fish with a very, very high success rate. "
				},
				{
				  "speaker": "Asani",
				  "text": "That is tempting. Which one is that? It feels like sapphic experiences never come easy. "
				},
				{
				  "speaker": "You",
				  "text": "True, but the magic will be most effective if you put in a little effort, too. That goes with anything. "
				},
				{
				  "speaker": "Asani",
				  "text": "I figured. "
				},
				{
				  "speaker": "Asani",
				  "text": "My friends will often text the group chat about how they're \"going fishing\", which means they're going out to try and see if the fish magic will happen. "
				},
				{
				  "speaker": "You",
				  "text": "I'm certain I've sold this fish to them before. "
				},
				{
				  "speaker": "You",
				  "text": "It's called Meet Cute. "
				},
				{
				  "speaker": "Asani",
				  "text": "Oh yeah! It's one of my friends' favourites. "
				},
				{
				  "speaker": "You",
				  "text": "Thought so. It's a great one because it's low stress. You run into people everywhere. "
				},
				{
				  "speaker": "You",
				  "text": "If you're worried about it not working for you, then this has the highest probability of putting you in a situation where it will work. "
				},
				{
				  "speaker": "Asani",
				  "text": "Ah, god, if it doesn't work after this pitch, then I really am in trouble. "
				},
				{
				  "speaker": "You",
				  "text": "Maybe your friends can help you, since they know how this works and know you best. "
				},
				{
				  "speaker": "You",
				  "text": "Hopefully they want it to work for you despite their initial opinions. "
				},
				{
				  "speaker": "Asani",
				  "text": "Yeah. I don't know. "
				},
				{
				  "speaker": "Asani",
				  "text": "I didn't tell them I was thinking of coming here because I didn't want them to talk me out of it. "
				},
				{
				  "speaker": "You",
				  "text": "Sounds like you want it for yourself, then. And that's probably enough. "
				},
				{
				  "speaker": "You",
				  "text": "You can't let your friends dictate things for you, after all. "
				},
				{
				  "speaker": "Asani",
				  "text": "...You're right. "
				},
				{
				  "speaker": "Asani",
				  "text": "Yeah. Yeah! Okay! "
				},
				{
				  "speaker": "Asani",
				  "text": "One Meet Cute fish please!"
				},
				{
				  "speaker": "You",
				  "text": "I'll whip that up for you right now."
				},
			],
			"after_transaction": [
				{
				  "speaker": "You",
				  "text": "Here you go. "
				},
				{
				  "speaker": "You",
				  "text": "Eat it while it's fresh, put yourself out there, and after a few days if nothing happens, come back here and we'll figure out something that will work for you. "
				},
				{
				  "speaker": "Asani",
				  "text": "I hope it works the first time. Save us some trouble. "
				},
				{
				  "speaker": "Asani",
				  "text": "And me some mental turmoil. "
				},
				{
				  "speaker": "You",
				  "text": "Hey. These fish will work for you. I promise. "
				},
				{
				  "speaker": "",
				  "text": "[ Asani beams happily. You swear you see a bit of mistiness in Asani's eye. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "Who am I to argue with an expert, I guess? "
				},
				{
				  "speaker": "Asani",
				  "text": "Alright. I'll go try it. "
				},
				{
				  "speaker": "Asani",
				  "text": "Whether it works or not, I'll let you know. "
				},
				{
				  "speaker": "You",
				  "text": "Please. "
				},
				{
				  "speaker": "You",
				  "text": "I am invested in proving your friends wrong. "
				},
				{
				  "speaker": "Asani",
				  "text": "Aha, they mean well, they just... I think they're looking out for me. "
				},
				{
				  "speaker": "Asani",
				  "text": "I don't know. We'll find out. "
				},
				{
				  "speaker": "You",
				  "text": "You sure will. "
				},
				{
				  "speaker": "",
				  "text": "[ Asani gives a half, uneasy smile and leaves with the magical fish meal. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You know people have all sort of circumstances and situations that go along with their varied lives. ]"
				},
				{
				  "speaker": "",
				  "text": "[ People were complicated. And you didn't always understand what was going on with each individual person. ]"
				},
				{
				  "speaker": "",
				  "text": "[ But you always hoped that, no matter what, they walked away happy. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You don't know exactly what kind of complicated dynamics were in play with Asani & friends, ]"
				},
				{
				  "speaker": "",
				  "text": "[ but you will do everything in your magical fish power to make sure Asani can one day walk away with a full smile instead. ]"
				},
			]
		},
		{
			"visit": 1,
			"required_fish": "Situationship",
			"before_transaction": [
				{
				  "speaker": "",
				  "text": "[ You see Asani approaching once again, still alone and without the usual group of friends. ]"
				},
				{
				  "speaker": "",
				  "text": "[ A quick assessment tells you Asani is still feeling a little awkward about visiting the stall, and there was no aura of confidence of a successful conclusion. ]"
				},
				{
				  "speaker": "",
				  "text": "[ But there was also no hint of failure. ]"
				},
				{
				  "speaker": "",
				  "text": "[ If anything, Asani just looked more confused than before. ]"
				},
				{
				  "speaker": "You",
				  "text": "Hey again! How'd it go?"
				},
				{
				  "speaker": "Asani",
				  "text": "Is there like, a tell? Some sort of confirmation that it worked? "
				},
				{
				  "speaker": "Asani",
				  "text": "Does a bell go off? Do I get a pop up telling me that my fish buff proc'd? "
				},
				{
				  "speaker": "Asani",
				  "text": "How can I be sure the fish actually worked for me? "
				},
				{
				  "speaker": "You",
				  "text": "Well, did you have a meet cute?"
				},
				{
				  "speaker": "Asani",
				  "text": "Yes, I think? "
				},
				{
				  "speaker": "Asani",
				  "text": "Several, actually. "
				},
				{
				  "speaker": "Asani",
				  "text": "I kept running into cute people cutely everywhere. "
				},
				{
				  "speaker": "You",
				  "text": "I mean, that sounds pretty conclusive. "
				},
				{
				  "speaker": "Asani",
				  "text": "Is it, though? "
				},
				{
				  "speaker": "Asani",
				  "text": "You said the Meet Cute fish is so successful because it's so likely to happen. "
				},
				{
				  "speaker": "Asani",
				  "text": "When I told my friends, one of them said it was probably just a coincidence. "
				},
				{
				  "speaker": "Asani",
				  "text": "That she can have a meet cute all the time even without a fish, and that's probably what happened for me. "
				},
				{
				  "speaker": "You",
				  "text": "Huh? "
				},
				{
				  "speaker": "You",
				  "text": "Why go out of her way to tell you reasons it couldn't have worked even though all signs point toward it working?"
				},
				{
				  "speaker": "Asani",
				  "text": "My friends said they're just trying to manage my expectations in case I come back for another fish. "
				},
				{
				  "speaker": "Asani",
				  "text": "They don't want me to waste my money. "
				},
				{
				  "speaker": "You",
				  "text": "...Feel free to not answer if this is too personal, but, why are they so convinced the fish won't work for you? "
				},
				{
				  "speaker": "",
				  "text": "[ Asani seems to almost sink into the ground at the question, hands fidgeting with each other anxiously. ]"
				},
				{
				  "speaker": "",
				  "text": "[ It was as if Asani was bracing for judgement. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "Well. "
				},
				{
				  "speaker": "Asani",
				  "text": "Last year I realized I'm bigender. "
				},
				{
				  "speaker": "Asani",
				  "text": "I came out to them, said I'm both femme and masc and to start using the pronouns he/she for me. And they were cool with it. "
				},
				{
				  "speaker": "Asani",
				  "text": "But I guess, because of that, they feel like my masc side cancels out my femme side that is attracted to other femmes. "
				},
				{
				  "speaker": "Asani",
				  "text": "So they had concerns about me actually being... sapphic. "
				},
				{
				  "speaker": "You",
				  "text": "..................Huh. "
				},
				{
				  "speaker": "Asani",
				  "text": "What? Is that really a problem? "
				},
				{
				  "speaker": "You",
				  "text": "No, not at all. "
				},
				{
				  "speaker": "You",
				  "text": "I'm just trying really hard to not say a bunch of rude things about your friends. "
				},
				{
				  "speaker": "Asani",
				  "text": "Oh. It's... not like that. "
				},
				{
				  "speaker": "Asani",
				  "text": "They're understanding. "
				},
				{
				  "speaker": "Asani",
				  "text": "They're just looking out for me. "
				},
				{
				  "speaker": "You",
				  "text": "By invalidating you? "
				},
				{
				  "speaker": "You",
				  "text": "Sorry, I just... "
				},
				{
				  "speaker": "You",
				  "text": "I find it really strange that someone believes a part of you cancels out another part of you instead of seeing it as part of your whole. "
				},
				{
				  "speaker": "",
				  "text": "[ He seems taken aback by your statement. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Not in an angry way, but just that she's shocked she's hearing that kind of statement at all. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "No, I mean... "
				},
				{
				  "speaker": "Asani",
				  "text": "I guess it's a valid concern? Gender is weird and so is sexuality and I guess I just... "
				},
				{
				  "speaker": "Asani",
				  "text": "I also want to know if I'm actually sapphic while being masc because who wants to choose a gender? Not me. "
				},
				{
				  "speaker": "Asani",
				  "text": "And I figured if anything could parse this gender fuckery, it'd be magical fish."
				},
				{
				  "speaker": "You",
				  "text": "So you're trying to figure out if you really are sapphic?"
				},
				{
				  "speaker": "Asani",
				  "text": "Yeah. I guess. "
				},
				{
				  "speaker": "Asani",
				  "text": "It might sound stupid, but it's important to me. "
				},
				{
				  "speaker": "You",
				  "text": "Because being sapphic is important to you? "
				},
				{
				  "speaker": "Asani",
				  "text": "Well, I— No? "
				},
				{
				  "speaker": "Asani",
				  "text": "Yes? "
				},
				{
				  "speaker": "Asani",
				  "text": "Maybe? "
				},
				{
				  "speaker": "Asani",
				  "text": "I just need to know. "
				},
				{
				  "speaker": "You",
				  "text": "You were scared of it not working before."
				},
				{
				  "speaker": "Asani",
				  "text": "Yeah, but that's because... "
				},
				{
				  "speaker": "Asani",
				  "text": "I really like the idea of me being sapphic because it just feels right, but if I'm not, then... "
				},
				{
				  "speaker": "Asani",
				  "text": "That's... that's fine. I can live with that. "
				},
				{
				  "speaker": "You",
				  "text": "Asani, you don't need a fish to tell you you're sapphic. "
				},
				{
				  "speaker": "You",
				  "text": "You're a femme. You're attracted to femmes. "
				},
				{
				  "speaker": "You",
				  "text": "You're also masc but the literal entry level requirements are there. "
				},
				{
				  "speaker": "Asani",
				  "text": "I just... I won't feel like I belong until I'm sure. "
				},
				{
				  "speaker": "You",
				  "text": "Do your friends make you feel like you don't belong? "
				},
				{
				  "speaker": "",
				  "text": "[ He looked a little pained at the question. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "They don't mean to, I don't think. "
				},
				{
				  "speaker": "Asani",
				  "text": "But yeah, they often exclude me out of conversations about their relationships because I wouldn't understand because I'm not a lesbian because I'm a man who is attracted to femmes."
				},
				{
				  "speaker": "Asani",
				  "text": "And they're not incorrect. I don't identify with the label \"lesbian\", "
				},
				{
				  "speaker": "Asani",
				  "text": "but I wish I didn't feel excluded from the sapphic experience because of that. "
				},
				{
				  "speaker": "You",
				  "text": "I say the fish caters to sapphics for a reason. "
				},
				{
				  "speaker": "You",
				  "text": "You're included."
				},
				{
				  "speaker": "Asani",
				  "text": "That's why I was so intrigued by this place, because maybe I did belong in those conversations. "
				},
				{
				  "speaker": "Asani",
				  "text": "But sometimes I worry my friends are right and I can't just... be both without feeling excluded one way or another."
				},
				{
				  "speaker": "You",
				  "text": "Alright. That's it. "
				},
				{
				  "speaker": "You",
				  "text": "I'm going to give you a fish so specific that they won't be able to argue that it didn't work for you. "
				},
				{
				  "speaker": "Asani",
				  "text": "No, no."
				},
				{
				  "speaker": "Asani",
				  "text": "I'd actually prefer something vague again. "
				},
				{
				  "speaker": "You",
				  "text": "What? Why? "
				},
				{
				  "speaker": "Asani",
				  "text": "Because. I don't know. "
				},
				{
				  "speaker": "Asani",
				  "text": "Then I can keep believing. "
				},
				{
				  "speaker": "You",
				  "text": "Asani..."
				},
				{
				  "speaker": "Asani",
				  "text": "It's okay. Really. "
				},
				{
				  "speaker": "Asani",
				  "text": "I still have hope. That's why I'm here. "
				},
				{
				  "speaker": "Asani",
				  "text": "And if it works or doesn't work, it doesn't matter right? "
				},
				{
				  "speaker": "Asani",
				  "text": "I just... want to belong. "
				},
				{
				  "speaker": "Asani",
				  "text": "I want to enjoy the fish with my friends. "
				},
				{
				  "speaker": "You",
				  "text": "Repeat after me. "
				},
				{
				  "speaker": "You",
				  "text": "You are sapphic. "
				},
				{
				  "speaker": "You",
				  "text": "The fish will work for you. "
				},
				{
				  "speaker": "Asani",
				  "text": "I don't know if I'll ever be sure of that, is the problem. "
				},
				{
				  "speaker": "Asani",
				  "text": "I think I'll always have a voice in my head feeding me doubts. "
				},
				{
				  "speaker": "You",
				  "text": "Does the voice belong to you, or your friends?"
				},
				{
				  "speaker": "",
				  "text": "[ Asani tears his gaze away from you, ignoring the question and instead looking at the menu. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "Here. What about Situationship? "
				},
				{
				  "speaker": "Asani",
				  "text": "It's funny, because my sexuality and gender are in a situationship. Get it? "
				},
				{
				  "speaker": "You",
				  "text": "You don't have to do this to yourself. "
				},
				{
				  "speaker": "Asani",
				  "text": "This is what I want. I'm comfortable with this. "
				},
				{
				  "speaker": "Asani",
				  "text": "Please?"
				},
				{
				  "speaker": "You",
				  "text": "There are way better fish—"
				},
				{
				  "speaker": "Asani",
				  "text": "Please?"
				},
				{
				  "speaker": "",
				  "text": "[ You sigh. The customer is always right. ]"
				},
				{
				  "speaker": "You",
				  "text": "Coming right up. "
				},
				],
							"after_transaction": [
				{
				  "speaker": "You",
				  "text": "Just promise me. "
				},
				{
				  "speaker": "You",
				  "text": "If you magically end up in a situationship after this, "
				},
				{
				  "speaker": "You",
				  "text": "then maybe consider that your feelings are right about something that you and only you can ever truly feel for yourself? "
				},
				{
				  "speaker": "Asani",
				  "text": "Heh. I don't know why this is so important to you, but thank you. "
				},
				{
				  "speaker": "Asani",
				  "text": "I'll... try. "
				},
				{
				  "speaker": "",
				  "text": "[ Asani gives another half smile and walks away. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You feel a pit in your stomach. The happiness of your customers was always important to you. ]"
				},
				{
				  "speaker": "",
				  "text": "[ The world was hard enough on sapphics. You just wanted to bring a bit of joy to their lives, if you could. ]"
				},
				{
				  "speaker": "",
				  "text": "[ But some people were in situations that they couldn't walk away from with a full smile no matter what. ]"
				},
				{
				  "speaker": "",
				  "text": "[ And one of your biggest regrets of the job was that you didn't have a fish that guaranteed happiness for those who deserved it. ]"
				},
			]
		},
		{
			"visit": 2,
			"required_fish": "Friends to Lovers",
			"before_transaction": [
				{
				  "speaker": "",
				  "text": "[ Usually, when you sell a Situationship fish, you don't see that person the next time looking particularly fulfilled. ]"
				},
				{
				  "speaker": "",
				  "text": "[ You sell them anyway, because sometimes that's all someone has the emotional bandwidth for. ]"
				},
				{
				  "speaker": "",
				  "text": "[ But to your surprise, you see Asani approaching. And for the first time ever, her smile is reaching his eyes. ]"
				},
				{
				  "speaker": "Asani",
				  "text": "Guess what."
				},
				{
				  "speaker": "You",
				  "text": "You got in a situationship? "
				},
				{
				  "speaker": "Asani",
				  "text": "Sure did. Guess with who?"
				},
				{
				  "speaker": "You",
				  "text": "I couldn't begin to imagine. Lady Gaga?"
				},
				{
				  "speaker": "Asani",
				  "text": "God, wouldn't that be something. "
				},
				{
				  "speaker": "Asani",
				  "text": "No, it was one of my friends. "
				},
				{
				  "speaker": "You",
				  "text": "I have mixed feelings on this. "
				},
				{
				  "speaker": "Asani",
				  "text": "Me too! "
				},
				{
				  "speaker": "Asani",
				  "text": "But one of them started being extra flirty with me and started insinuating she had been attracted to me for a while,"
				},
				{
				  "speaker": "Asani",
				  "text": "but it was all vague and neither of us would address it and, "
				},
				{
				  "speaker": "Asani",
				  "text": "gods it was just... so sapphic. "
				},
				{
				  "speaker": "Asani",
				  "text": "The yearning. The intimate touches and not wanting to ruin it by acknowledging it. "
				},
				{
				  "speaker": "Asani",
				  "text": "The fish did its work. "
				},
				{
				  "speaker": "You",
				  "text": "So you admit the sapphic fish that works for sapphic people worked because you're sapphic? "
				},
				{
				  "speaker": "Asani",
				  "text": "It was... hard to deny, I admit. "
				},
				{
				  "speaker": "Asani",
				  "text": "I just felt so connected to myself and how I was feeling. And then something liberating happened. "
				},
				{
				  "speaker": "You",
				  "text": "What?"
				},
				{
				  "speaker": "Asani",
				  "text": "I got rejected! It was incredible. You'll never believe how it played out. It involved you, actually. "
				},
				{
				  "speaker": "You",
				  "text": "Me??"
				},
				{
				  "speaker": "Asani",
				  "text": "Yep! My friend finally told me she thought of coming here to buy a Friends to Lovers fish to help make us official. "
				},
				{
				  "speaker": "Asani",
				  "text": "But then she decided against it, because she thought dating someone who was also a man would mean she wasn't sapphic anymore. "
				},
				{
				  "speaker": "You",
				  "text": "That's... awful. "
				},
				{
				  "speaker": "Asani",
				  "text": "I know, right?! It was amazing! "
				},
				{
				  "speaker": "You",
				  "text": "I'm shocked you seem so happy about it. "
				},
				{
				  "speaker": "You",
				  "text": "I'd be pissed. "
				},
				{
				  "speaker": "Asani",
				  "text": "I was! That's why I'm so happy! "
				},
				{
				  "speaker": "Asani",
				  "text": "We were in the most sapphic-feeling situation ever and she let her definitions of a label get in the way and invalidate it? "
				},
				{
				  "speaker": "Asani",
				  "text": "That's when I realized: my friends are assholes. "
				},
				{
				  "speaker": "You",
				  "text": "God, I'm glad you said it. "
				},
				{
				  "speaker": "Asani",
				  "text": "I also realized that I thought I was trying to use the fish to prove to myself that I'm sapphic, but I always knew that about myself. "
				},
				{
				  "speaker": "Asani",
				  "text": "I was just trying to prove it to my friends. And I decided I wasn't going to live like that anymore!"
				},
				{
				  "speaker": "You",
				  "text": "Damn right."
				},
				{
				  "speaker": "Asani",
				  "text": "So I cut them out of my life. "
				},
				{
				  "speaker": "You",
				  "text": "Hell yeah you did. "
				},
				{
				  "speaker": "Asani",
				  "text": "And then I came here."
				},
				{
				  "speaker": "You",
				  "text": "And now you're here!"
				},
				{
				  "speaker": "Asani",
				  "text": "And now I'm going to order a Friends to Lovers fish!"
				},
				{
				  "speaker": "You",
				  "text": "You've lost me. "
				},
				{
				  "speaker": "Asani",
				  "text": "Haha, it's not for that friend. I cut them all out, remember? "
				},
				{
				  "speaker": "Asani",
				  "text": "But when we first talked, you said the fish can give us as little or as much as we want, right? "
				},
				{
				  "speaker": "You",
				  "text": "Right. "
				},
				{
				  "speaker": "Asani",
				  "text": "Turns out, I'm in the market for some new friends. "
				},
				{
				  "speaker": "Asani",
				  "text": "I'm glad I cut those people out, but I don't want to be lonely. And you don't have many platonic-based fish. "
				},
				{
				  "speaker": "Asani",
				  "text": "So I figured I'd ask for Friends to Lovers and at least hope for the friends part. If lovers come from that, it's a bonus. "
				},
				{
				  "speaker": "Asani",
				  "text": "But right now, "
				},
				{
				  "speaker": "Asani",
				  "text": "my priority is to surround myself with people who actually accept me for all of me,"
				},
				{
				  "speaker": "Asani",
				  "text": "and don't decide that there are parts that need to be alienated because they don't fit in a certain box for them. "
				},
				{
				  "speaker": "You",
				  "text": "A little unconventional, but I dig it. "
				},
				{
				  "speaker": "You",
				  "text": "Luckily, I happen to have one on the menu. "
				},
				{
				  "speaker": "Asani",
				  "text": "Ugh, I love kismet. I just hope these new friends won't end up like the last ones. "
				},
				{
				  "speaker": "You",
				  "text": "Like I said, you get what you want out of the fish, whatever that might look like. "
				},
				{
				  "speaker": "You",
				  "text": "But you have to put yourself out there too, and in the right spaces where that can happen. "
				},
				{
				  "speaker": "Asani",
				  "text": "Well, I've been eying some inclusive communities I've been waiting to join. "
				},
				{
				  "speaker": "You",
				  "text": "Sounds like a perfect way to start. "
				},
			],
			"after_transaction": [
				{
				  "speaker": "You",
				  "text": "I know we don't know each other very well, but I'm proud of you. "
				},
				{
				  "speaker": "Asani",
				  "text": "That means a lot. "
				},
				{
				  "speaker": "Asani",
				  "text": "Thank you for validating me when no one else would. And your fish. "
				},
				{
				  "speaker": "You",
				  "text": "You were always exactly who you are, but yes,"
				},
				{
				  "speaker": "You",
				  "text": "it's nice to surround yourself with voices in your head that are telling you validating things from time to time. "
				},
				{
				  "speaker": "Asani",
				  "text": "In the future, I won't give voices that don't as much mind. "
				},
				{
				  "speaker": "Asani",
				  "text": "They don't know me as well as I do. "
				},
				{
				  "speaker": "You",
				  "text": "Now go enjoy your grand gay life. My fish will be here if you need them. "
				},
				{
				  "speaker": "Asani",
				  "text": "Haha, I'll be back. Hopefully with some new friends. "
				},
				{
				  "speaker": "Asani",
				  "text": "If you see my old friends, just enjoy taking their money."
				},
				{
				  "speaker": "You",
				  "text": "No promises I won't give them a piece of my mind. "
				},
				{
				  "speaker": "Asani",
				  "text": "Heh. "
				},
				{
				  "speaker": "Asani",
				  "text": "I guess I've already found a new friend. "
				},
				{
				  "speaker": "You",
				  "text": "Always happy to help a fellow sapphic. We gotta look out for each other. "
				},
				{
				  "speaker": "You",
				  "text": "It's why your ex-friends pissed me off so much. "
				},
				{
				  "speaker": "Asani",
				  "text": "And now I've realized that, too! I feel like a brand new Asani! "
				},
				{
				  "speaker": "Asani",
				  "text": "But also, exactly who I always was? I don't know. Gender fuckery. "
				},
				{
				  "speaker": "You",
				  "text": "Cheers to that, friend. "
				},
				{
				  "speaker": "",
				  "text": "[ Asani beams, even more than before, and he gives an enthusiastic wave before heading off. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Fish can only do so much. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Sometimes, you have to make connections yourself to create a lasting change for your life. The fish just provide a little push in the right direction. ]"
				},
				{
				  "speaker": "",
				  "text": "[ And when you get the right push by the right people, it almost always ends with a full, genuine smile. ]"
				},
				{
				  "speaker": "",
				  "text": "[ Your favourite part of the job. ]"
				}
			]
		}
	]
}

# OUTRO BELOW
#{
  #"speaker": "",
  #"text": "[ You feel a sense of accomplishment wash over you, knowing you finished yet another good day's work of helping sapphics to the best of your fishing ability. ]"
#},
#{
  #"speaker": "",
  #"text": "[ Tropes are considered clichés. You know that. ]"
#},
#{
  #"speaker": "",
  #"text": "[ But the truth is, they are simply relatable experiences that can happen to anyone, and we bond in that shared experience. ]"
#},
#{
  #"speaker": "",
  #"text": "[ Whether it's characters in media, ]"
#},
#{
  #"speaker": "",
  #"text": "[ or someone trying to find solace in a life they can't live openly, ]"
#},
#{
  #"speaker": "",
  #"text": "[ or someone still trying to find themselves, ]"
#},
#{
  #"speaker": "",
  #"text": "[ or someone who can't make that connection no matter what they do, ]"
#},
#{
  #"speaker": "",
  #"text": "[ or even the owner of a fish stall who wasn't even searching. ]"
#},
#{
  #"speaker": "",
  #"text": "[ These clichés are beloved, especially by the ones who don't see themselves reflected in these tropes very often. ]"
#},
#{
  #"speaker": "",
  #"text": "[ But reframed under the sapphic umbrella, what was cliché suddenly feels fresh and new. Like magic. ]"
#},
#{
  #"speaker": "",
  #"text": "[ The reality is that these experiences are for sapphics, too. Whatever that might end up looking like. ]"
#},
#{
  #"speaker": "",
  #"text": "[ And for everyone else, ]"
#},
#{
  #"speaker": "",
  #"text": "[ Well, ]"
#},
#{
  #"speaker": "",
  #"text": "[ There's still plenty of fish. ]"
#},
#{
  #"speaker": "",
  #"text": "[ ...What? ]"
#},
#{
  #"speaker": "",
  #"text": "[ Too cliché? ]"
#}
