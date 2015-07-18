window.Links = {
	strs: ["When I decide to do things, I do them properly. - Naruto",
				 "To lose faith in the solubility of the problems would in effect mean ceasing to be a scientist. - Thomas Kuhn",
				 "But think of Adam and Eve like an imaginary number, like the square root of minus one; you can never see any concrete proof that it exists, but if you include it in your equations, you can calculate all manner of things that couldn't be imagined without it. - The Golden Compass",
				 "The more labels you have for yourself, the dumber they make you. - Paul Graham",
				 "'Innovation' defined as moving the pieces around and adding more processing power is not some Big Idea that will disrupt a broken status quo: that precisely is the broken status quo. - Benjamin Bratton",
         "All we have to decide is what to do with the time that is given us. - LOTR",
         "I think it's impossible to really know someone, what they want, what they believe, and not love them the way they love themselves. - Ender's Game",
         "A creative man is motivated by the desire to achieve, not by the desire to beat others. - Ayn Rand",
         "Man cannot survive except through his mind. He comes on earth unarmed. His brain is his only weapon. The mind is an attribute of the individual. - Ayn Rand",
         "Because the beauty of the human body is that it hasn't a single muscle which doesn't serve its purpose; that there's not a line wasted; that every detail of it fits one idea, the idea of a man and the life of a man. - Ayn Rand",
         "Man is least himself when he talks in his own person. Give him a mask, and he will tell you the truth. - Oscar Wilde",
         "Faced with mortality, scientific knowledge can provide only an ounce of certainty: Yes, you will die. But one wants a full pound of certainty, and that is not on offer.",
         "There are two ways of constructing a software design: One way is to make it so simple that there are obviously no deficiencies and the other way is to make it so complicated that there are no obvious deficiencies. - C.A.R. Hoare",
         "You might say that so much emptiness makes the tiny bits of matter that much more meaningful - simply by the fact that, against all odds, they aren't empty.If you're drowning in the middle of the ocean, a floating piece of driftwood is a pretty big deal.",
         "With so much emptiness, aren't stars, planets, and people just glitches in an otherwise elegant and uniform nothingness, like pieces of lint on a black sweater? But without the tiny dots for it to stretch between, there would be no emptiness to measure, and for that matter, no one around to measure it.",
				 "It's not about what's lasting or permanent, it's about individual voices coming together for a moment. And that moment lasts the length of a breath.",
         "If you wish to make an apple pie from scratch, you must first invent the universe. - Carl Sagan",
         "You can’t just place a LISP book on top of an x86 chip and hope that the hardware learns about lambda calculus by osmosis.",
         "People live their lives bound by what they accept as correct and true. That’s how they define Reality. But what does it mean to be “correct” or “true”? Merely vague concepts… Their Reality may all be a mirage. Can we consider them to simply be living in their own world, shaped by their beliefs?",
         "Bro, you don't work hard. I just worked a 4700-hour week digging a tunnel under Mordor with a screwdriver.",
         "This is what it is to learn programming. You get to know your useful tools, then you look around, and there are some handy new tools nearby and those tools show you the bottomless horror that was always right next to your desk.",
         "Most people don't even know what sysadmins do, but trust me, if they all took a lunch break at the same time they wouldn't make it to the deli before you ran out of bullets protecting your canned goods from roving bands of mutants.",
         "You immerse yourself in a world of total meaninglessness where all that matters is a little series of numbers went into a giant labyrinth of symbols and a different series of numbers or a picture of a kitten came out the other end.",
         "All programmers are forcing their brains to do things brains were never meant to do in a situation they can never make better, ten to fifteen hours a day, five to seven days a week, and every one of them is slowly going mad.",
				 "Don't regret anything you do, because in the end it makes you who you are.",
         "Math is the great mental bogeyman of an unconfident America.",
         "A violin is nothing more than a piece of wood and a dead cat. But it’s a piece of technology",
				 "You have to be able to accept what your ignorances are in order to do good science. To reject your own ignorance just casts you into a silly state where you're a lesser scientist",
         "“Imagination is more important than knowledge. Knowledge is limited. Imagination encircles the world."]


	initialize: ->
		divElement = $('.content').children()[0]
		# $(divElement).css("min-height",$(window).height())
		$(divElement).css("min-width",$(window).width() - $('nav').width())

}

$ ->

	Links.initialize()

	$('.quotes p').html("<i class='fa fa-quote-left'></i>" + Links.strs[Math.floor(Math.random()*Links.strs.length)] + "<i class='fa fa-quote-right'></i>");

	$(window).resize ->
		Links.initialize()

	$('a.nav-link').on 'click', (e) ->
		$('.nav-link.active').removeClass('active')
		$(e.currentTarget).addClass('active')
		$.ajax(url: $(e.currentTarget).attr('data-href'))


	# $('.home').css("left", "-150%")
	# $('nav').css("left", "-150%")

	$('.background-image').load ->
		$('.container').animate
			left: '0', 500, ->
				$('nav').animate
					left: '0', 500
