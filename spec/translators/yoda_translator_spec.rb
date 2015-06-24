require 'spec_helper'

RSpec.describe YodaTranslator do
  it 'should parse given html page to text' do
    text = <<-YODA


<!-- Copyright ©2004, Matthew Ainge & Recurring Dreams -->
<!-- Yoda-Speak Generator (Yodatron) v2.0 build begun 13 June 2005 11:09 -->



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
		<meta name="author" content="Matthew Ainge">
  		<meta name="copyright" content="&copy; 2005 Recurring Dreams">
  		<meta name="keywords" content="yoda, yoda speech, generator, yoda speak, sentence, grammar, grammer, speech, yoda speach, speach, yoda talking, yoda talk, yodaise, yodarise, talk like yoda, star wars, yoda translator, jedi master, jedi trainer, yoda wisdom, speak like yoda, learn yoda, yodish">
  		<meta name="date" content="2005-06-23T012:30:00+00:00">
  		<meta name="description" content="Generate Yoda-speak">

  		<title>Learn to Talk Like Yoda with the Yoda-Speak Generator</title>

	<!-- Create a Favourites Icon link to appear in the browser address field and on the favourites list. -->
		<link rel="icon" href="yodaspeak.ico" type="image/x-icon">
		<link rel="shortcut icon" href="yodaspeak.ico" type="image/x-icon">
		<link rel="stylesheet" type="text/css" href="yodaspeak.css">
		<script language="JavaScript" type="text/javascript" src="yodaspeakjs.js"></script>

	<!-- Place this tag in your head or just before your close body tag -->
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js">
		  {lang: 'en-GB'}
		</script>
	</head>
	<body onLoad="getGoing()">
		<div style='position:absolute; top:0px; right:0px; padding:10px;'>
			<!-- Place this tag where you want the +1 button to render -->
			<g:plusone></g:plusone>
		</div>

		<div style='text-align:center;'>
			<script type="text/javascript"><!--
				google_ad_client = "ca-pub-1836874439442426";
				/* Above Content Leaderboard */
				google_ad_slot = "5123117188";
				google_ad_width = 728;
				google_ad_height = 90;
				//-->
				</script>
				<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
			</script>
		</div>

		<div id='title'>
			<!-- <h3 style='margin-bottom:5px;'>Learn to Talk Like Yoda with The Yoda Speak Generator</h3> -->
			<div id='siteTitle'>
				<img src='img/ys-title.png' width='572' height='155' alt='To talk like Yoda learn, with the Yoda-Speak Generator'>
				<p><span id='totalYodas'>5607052</span><br><span id='totalYodasDesc'>yoderisings so far</span></p>
			</div>

			<!-- <h4>There's currently a problem with the site  - as a result, the forums and shoutbox are offline while it's being fixed. (11/10/06)</h4> -->
			<!-- <h4><a href='http://www.yodaspeak.co.uk/forum/' target='_self'>Bored? Come to the forums</a></h4> -->
			<!-- <h5 style='margin-top:0px;'><a href='why22.php'>But why the 22nd?</a></h5> -->
		</div>

		<div class='newsHold'>

			<div class='news'>
				<h3>Latest Result</h3>
				<div id='latestResultContainer'><div id='latestResult' style="opacity:1; filter:'alpha(opacity:100)';">Test.  </div></div>
				<h4><a href='favs.php' target='_parent'>See Yoda's favourite results</a></h4>
			</div>

			<div class='shout'>
				<h3>Wisdom/Chat Box</h3>
				Share your wise words, or just stay and chat.  Note - Whatever you say will be yoda-spoken.


				<form action='index.php' method='post' id='shoutForm'>
						<div class='formRow'>
							You are?<br><input style='font-size:7pt;' type='text' name='ShoutWho' value='' maxlength='30' size='25' title='What do you call yourself?'><br>
							Speak!<br><textarea style='font-size:7pt;'  name='ShoutText' rows='2' cols='25' title='Type your shout out / wise words here.'></textarea><br>
						</div>
						<div class='formRow'>
							<input class='button' type='submit' name='go' value='Shout it' title='Hit me and let the fun commence'>
						</div>
				</form>

		<div class='shouted' id='shouted'><div id='s36457Container'><div class='shouty' title='24/06/15 16:54:26' id='s36457'><h4>anon</h4>In class, he is.  Yes,<br>hmmm.</div></div><div id='s36456Container'><h3>Tuesday 23/06/15</h3><div class='shouty' title='23/06/15 23:12:14' id='s36456'><h4>JJ the Wonder Tard</h4>Another day, to eat more<br>tasty boogers. And<br>cheeseburgers!</div></div><div id='s36455Container'><div class='shouty' title='23/06/15 22:48:05' id='s36455'><h4>Your mom</h4>Lonely and other things<br>random yoda spam new this<br>is a joke trolling haha,<br>I am.  Yeesssssss.</div></div><div id='s36454Container'><div class='shouty' title='23/06/15 22:45:43' id='s36454'><h4>Your mom</h4>Good lol, soap and water<br>is.</div></div><div id='s36453Container'><div class='shouty' title='23/06/15 22:45:16' id='s36453'><h4>Your mom</h4>With soap and water go<br>wash your mouth out!</div></div><div id='s36452Container'><div class='shouty' title='23/06/15 19:58:51' id='s36452'><h4>Robert mcgill</h4>Like a girl, boba fett<br>screams.  Herh herh herh.</div></div><div id='s36451Container'><div class='shouty' title='23/06/15 19:50:20' id='s36451'><h4>Robert mcgill</h4>Me well alone you dark<br>tongued one leave.</div></div><div id='s36450Container'><div class='shouty' title='23/06/15 5:20:54' id='s36450'><h4>anon</h4>Of you please shut up can<br>all because I am trying<br>to get some sleep time.</div></div><div id='s36449Container'><h3>Monday 22/06/15</h3><div class='shouty' title='22/06/15 20:04:29' id='s36449'><h4>JJ the Wonder Tard</h4>Mmmmm...My boogers taste<br>good.  Herh herh herh.</div></div><div id='s36448Container'><div class='shouty' title='22/06/15 19:29:19' id='s36448'><h4>Blah blah</h4>Join the dark side of the<br>force, I will, like my<br>role model just:  Anakin.</div></div><div id='s36447Container'><div class='shouty' title='22/06/15 1:51:51' id='s36447'><h4>Happy National Retard Day</h4>And cheeseburgers.  My<br>mouth at once 3 or 4 in.<br>And diabetes, I like<br>diabetes.  Yes, hmmm.</div></div><div id='s36446Container'><div class='shouty' title='22/06/15 1:50:51' id='s36446'><h4>Happy National Retard Day</h4>Apple juice and eating my<br>own boogers I like. <br>Yeesssssss.</div></div><div id='s36445Container'><h3>Sunday 21/06/15</h3><div class='shouty' title='21/06/15 23:42:20' id='s36445'><h4>katie</h4>Happy fathers day.</div></div><div id='s36444Container'><div class='shouty' title='21/06/15 20:09:15' id='s36444'><h4>Yoda, duh!</h4>Like a mad genius you<br>play the guitar, and very<br>proud of how far you have<br>come, am I!  Yeesssssss.</div></div><div id='s36443Container'><div class='shouty' title='21/06/15 11:36:11' id='s36443'><h4>anon</h4>Hello.  Hmmmmmm.</div></div><div id='s36442Container'><div class='shouty' title='21/06/15 5:39:33' id='s36442'><h4>You I help can?</h4>You I can help, hmm? <br>Yeesssssss.</div></div><div id='s36441Container'><div class='shouty' title='21/06/15 4:57:33' id='s36441'><h4>Can help I you?</h4>You can help I, hmm?</div></div><div id='s36440Container'><div class='shouty' title='21/06/15 4:50:42' id='s36440'><h4>I you help can?</h4>You I help can, hmm?</div></div><div id='s36439Container'><div class='shouty' title='21/06/15 4:46:17' id='s36439'><h4>Help can I you?</h4>You I help can, hmm?</div></div><div id='s36438Container'><div class='shouty' title='21/06/15 4:41:53' id='s36438'><h4>I help you can?</h4>You help can I.  Yes,<br>hmmm.</div></div><div id='s36437Container'><div class='shouty' title='21/06/15 4:38:24' id='s36437'><h4>You help can I?</h4>Help you I can.</div></div><div id='s36436Container'><div class='shouty' title='21/06/15 0:30:32' id='s36436'><h4>Can I help you?</h4>You I can help.</div></div><div id='s36435Container'><h3>Saturday 20/06/15</h3><div class='shouty' title='20/06/15 23:52:29' id='s36435'><h4>androiddev</h4>For android can I use<br>this web service, hmm? <br>Hmmmmmm.</div></div><div id='s36434Container'><div class='shouty' title='20/06/15 17:20:18' id='s36434'><h4>MC Douche-A-Bag</h4>Lie, you like big butts<br>and you cannot.  You<br>other brothers, deny, <br>cannot. When with an<br>itty-bitty waist a girl<br>walks in, and your face a<br>big thing in, sprung, you<br>get.  Herh herh herh.</div></div><div id='s36433Container'><div class='shouty' title='20/06/15 15:19:44' id='s36433'><h4>ASDF</h4>Overused, may the forth<br>be with you is, and shut<br>up about it, everyone<br>should!</div></div><div id='s36432Container'><div class='shouty' title='20/06/15 15:18:59' id='s36432'><h4>ASDF</h4>The orphans; all dead,<br>are they!  Do this, what<br>kind of a man would, hmm?<br> [skateboards].</div></div><div id='s36431Container'><div class='shouty' title='20/06/15 15:17:02' id='s36431'><h4>Biscuit</h4>Sad, I am sad.  Yes,<br>hmmm.</div></div><div id='s36430Container'><div class='shouty' title='20/06/15 15:14:30' id='s36430'><h4>Can You Hear Me, World?</h4>Seen what is under<br>anakin's helmet, have I,<br>and pretty trust me it is<br>not.  Hmmmmmm.</div></div><div id='s36429Container'><div class='shouty' title='20/06/15 15:12:35' id='s36429'><h4>ffak</h4>Speak like jarjar, meesa<br>can!  Hmmmmmm.</div></div><div id='s36428Container'><div class='shouty' title='20/06/15 15:11:22' id='s36428'><h4>YodellingYoda</h4>Nice, butts are, he said<br>in a manic voice!!!  Yes,<br>hmmm.</div></div><div id='s36427Container'><div class='shouty' title='20/06/15 15:09:38' id='s36427'><h4>YodellingYoda</h4>I be in your arms again<br>want to.  I miss those<br>arms.  Me so close I miss<br>you pulling.  To<br>suffocate you with a<br>pillow I miss your stupid<br>snoring and wanting. <br>Yeesssssss.</div></div><div id='s36426Container'><div class='shouty' title='20/06/15 15:08:40' id='s36426'><h4>YodellingYoda</h4>Jealous, everyone who<br>hates on taylor swift is!<br> She makes good music,<br>put even the moseisley<br>band to shame, that<br>would!  Yeesssssss.</div></div><div id='s36425Container'><div class='shouty' title='20/06/15 15:01:39' id='s36425'><h4>Doctor Emmet Brown</h4>Get into the delorean,<br>marty, and with you bring<br>the girl.  Going back to<br>the future to screw it<br>all up again, we are,<br>hmm, hmm?!  Yeesssssss.</div></div><div id='s36424Container'><div class='shouty' title='20/06/15 15:00:13' id='s36424'><h4>Grumpy Yodes</h4>Seriously, though, luke;<br>how get you so big on<br>food like this, hmm?  Of<br>bantha poop it tastes! <br>Hmmmmmm.</div></div><div id='s36423Container'><div class='shouty' title='20/06/15 14:59:14' id='s36423'><h4>Grumpy Yodes</h4>Robbery, this is, punk. <br>Your hands up put, and<br>your lightsabres on the<br>ground!</div></div><div id='s36422Container'><div class='shouty' title='20/06/15 14:57:28' id='s36422'><h4>Grumpy Yodes</h4>Me in the leg he stabbed,<br>aaaah!  Too great, the<br>pain is, retire early at<br>the age of 993, I must! <br>Herh herh herh.</div></div><div id='s36421Container'><div class='shouty' title='20/06/15 14:56:09' id='s36421'><h4>E.L James</h4>Something wrong with me<br>there sometimes I wonder<br>if is.  Spent too long in<br>the company of my<br>literary romantic heroes<br>I perhaps have, and far<br>too high, consequently my<br>ideals and expectations<br>are.  Yeesssssss.</div></div><div id='s36420Container'><div class='shouty' title='20/06/15 14:46:36' id='s36420'><h4>oifxthrdcrdgcf xrs</h4>Yutgjhtbygfdjygutgty. <br>Hmmmmmm.</div></div><div id='s36419Container'><div class='shouty' title='20/06/15 14:46:06' id='s36419'><h4>oifxthrdcrdgcf xrs</h4>Gtvfyvdfgerr.</div></div><div id='s36418Container'><div class='shouty' title='20/06/15 14:41:45' id='s36418'><h4>Madonna</h4>More manners then you,<br>chewbacca has. <br>Yeesssssss.</div></div><div id='s36417Container'><div class='shouty' title='20/06/15 14:30:45' id='s36417'><h4>Mikasa Pinata</h4>If you give a slave his<br>own slaves, enslaved<br>himself he can be tricked<br>into thinking he is not. <br>Yeesssssss.</div></div><div id='s36416Container'><div class='shouty' title='20/06/15 10:43:19' id='s36416'><h4>RadicalRabbits</h4>To talk like yoda learn,<br>with...The yoda-speak<br>generator!</div></div><div id='s36415Container'><div class='shouty' title='20/06/15 10:42:21' id='s36415'><h4>RadicalRabbits</h4>Alan:  This, what kind of<br>park is, hmm?  Hammond: <br>Right up your alley, is<br>it.  Yeesssssss.</div></div><div id='s36414Container'><div class='shouty' title='20/06/15 10:40:15' id='s36414'><h4>RadicalRabbits</h4>Experience an<br>unforgettable journey, 65<br>million years in the<br>makingz, that is,<br>Yeesssssss.</div></div><div id='s36413Container'><div class='shouty' title='20/06/15 10:39:09' id='s36413'><h4>RadicalRabbits</h4>Seek advice, you mus!</div></div><div id='s36412Container'><div class='shouty' title='20/06/15 10:38:17' id='s36412'><h4>RadicalRabbits</h4>You love me, and frozen<br>in time, am I.  For that<br>flesh of mine hungry. But<br>compete with the she-wolf<br>that has brought me to my<br>knees, I cannot.</div></div><div id='s36411Container'><div class='shouty' title='20/06/15 10:36:52' id='s36411'><h4>RadicalRabbits</h4>Your wise words share, or<br>just stay and chat.  Note<br>- whatever you say,<br>yoda-spoken, will be. <br>Herh herh herh.</div></div><div id='s36410Container'><div class='shouty' title='20/06/15 10:35:54' id='s36410'><h4>RadicalRabbits</h4>Oer nine-thousand, it is!<br> One simplys not play<br>lego jurassic world for<br>less than five minutes. <br>Lol, not sure if I<br>should...Or roflmao. <br>Yeesssssss.</div></div><div id='s36409Container'><div class='shouty' title='20/06/15 1:01:20' id='s36409'><h4>Jerk Drool</h4>Question:  To eat what's<br>the hardest part of a<br>vegetable, hmm?  . <br>
Answer:  The<br>wheelchair.  Yes, hmmm.</div></div><div id='s36408Container'><div class='shouty' title='20/06/15 0:25:29' id='s36408'><h4>Joe Cool</h4>Me no questions ask, you<br>no lies tell, I will. <br>Yeesssssss.</div></div></div>
			</div>

			<div class='news'>
				<h3>Latest Changes</h3>
				<ul>
					<li><b>2014-0-06: </b>Apologies to anyone who uses it atm but I've had to disable the web service URLs temporarily.  Something is destroying the CPU and memory usage of this site and it's been okay since taking off the webservice.  I'll try to track down exactly what's caused the disruption and do what I can about it, k boys and girls.</li>
				</ul>
				<h4><a href='changes.php' target='_parent'>See more changes</a></h4>

				<h3>Feedback</h3>
				<ul>
					<li><b>2007-05-22: </b> Submitted: "Worthless piece of bantha fodder, this yoda converter is.  Yeesssssss."  This made me chuckle. :)</li>
				</ul>
			</div>

			<div class='links'>
				<h3>What else do I do?</h3>
				<ul>
					<li><a href='http://www.facebook.com/matthew.ainge'><b>Facebook :O</b></a></li>
					<li><a href='http://yodaspeak.co.uk.mybrute.com'><b>My Brute - Become Yoda's Pupil!</b></a></li>
					<li><a href='http://recurring.deviantart.com'><b>deviantArt Gallery</b></a></li>
					<!-- No one cares :D <li><a href='http://gun-wharf.myminicity.com'><b>Our workplace as a minicity</b></a></li> -->
					<li><a href='http://www.llamalan.co.uk'><b>LAN events</b></a></li>
					<li><a href='http://recurring.spaces.live.com'><b>Blog</b></a></li>
					<li><a href='http://www.vaderranger.co.uk'><b>My Darth Vader costuming efforts (in progress)</b></a></li>
				</ul>
			</div>
		</div>

		<div class='leftHold'>

			<div class='adlinks'>
				<script type="text/javascript"><!--
				google_ad_client = "pub-1836874439442426";
				/* 200x90 Link Unit within right column */
				google_ad_slot = "4513789282";
				google_ad_width = 200;
				google_ad_height = 90;
				//-->
				</script>
				<script type="text/javascript"
				src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
				</script>
			</div>

			<div class='info'>
				<h3>Intro - Read This First</h3>
				<p>Learn how to talk like Yoda. Type or paste in a bunch of text, and find out just how <b><a href='http://www.answers.com/Yoda' target='parent' title='What do I mean by Yoda?'>Yoda</a></b> may have said it, in his Yodish way.</p>
				<p>Try it with jokes, emails, song lyrics, card messages, whatever!</p>
				<p>Initial development based on this fine essay on the rules of 'Yodish': <a href='http://www.yodajeff.com/pages/talk/yodish.shtml' target='_blank'>Yodish Analysis!</a></p>
				<p>Tips:</p>
				<ul>
					<li>Please don't just try "Hello."  Nothing will change.  Yoda won't answer back, he'll just repeat.  It's not the same thing as a conversation.</li>
					<li>Yoda speaks short sentences for a reason.  If the result is total garbage, that could be why!</li>
					<li>Make sure you use proper english <b><a href='http://www.answers.com/grammar' target='parent' title='What do I mean by grammar?'>grammar</a></b> and <b><a href='http://www.answers.com/punctuation' target='parent' title='What do I mean by punctuation?'>punctuation</a></b>, our little green friend can't read your mind.  "Don't", instead of "Dont", and so on.</li>
					<li>The exception is this: You should use extra punctuation if a sentence contains more than one <b><a href='http://www.answers.com/clause' target='parent' title='What do I mean by clause?'>clause</a></b>, often split with 'and', 'or', etc.  For example: <i>"Put your hands up <b>and</b> step away from the turnip."</i> should be <i>"Put your hands up, and step away from the turnip."</i> or <i>"Put your hands up.  Step away from the turnip."</i></li>
					<li>If using <b><a href='http://www.answers.com/commas' target='parent' title='What do I mean by commas?'>commas</a></b> and <b><a href='http://www.answers.com/full stops' target='parent' title='What do I mean by full stops?'>full stops</a></b> in <b><a href='http://www.answers.com/currencies' target='parent' title='What do I mean by currencies?'>currencies</a></b> or <b><a href='http://www.answers.com/initialisms' target='parent' title='What do I mean by initialisms?'>initialisms</a></b>, do not use spaces.</li>
					<li>The use of <b><a href='http://www.answers.com/parenthesis' target='parent' title='What do I mean by parenthesis?'>parenthesis</a></b> is not yet recommended, though I will work on them.</li>
					<li>If there are issues and a sentence is not yoderising as you think it should, it could also be because I haven't yet included all the words I need to in the search formulas.  Help me improve it by using the button given!</li>
				</ul>
			</div>


			<div class='uber'>
				<form action='index.php' method='post'>
					u:<input type='text' name='loginUN'><br>
					p:<input type='password' name='loginPW'><br>
					<input type='submit' value='Go' name='takeAction'>				</form>
			</div>
		</div>

		<div style='padding-left:220px; padding-right:220px;'>
			Convert your English text into Yoda-speak!  <i>This is not a chatbot, nor does it generate any audio.</i>.  If you've not used this before, <b>please</b> read and understand the tips to the left.  Thanks.<!-- <b>Important:</b> Each of sentence <b><a href='http://www.answers.com/clause' target='parent' title='What do I mean by clause?'>clause</a></b> must be separated by punctuation.  e.g. "Oops, I did it again" or "Take off your coat, and make yourself comfortable." -->
			<form action='index.php' method='post'>
				<div class='formRow'>
					Type away<br><img style='padding-left:0px;'src='./yoda-small1.gif' alt='Yoda' title='Yoda' id='InputYoda' width='31' height='30'><br>
					<textarea name='YodaMe' rows='5' cols='60' title='Enter standard English here, anything you want to see become yoda-speak.'>TEST</textarea>
				</div>
				<div class='formRow'>
					<input class='button' type='submit' name='go' value='Convert to Yoda-Speak!' title='Convert your standard English text into Yoda-speak by whacking this button!'>
					<br>
					&nbsp;&nbsp;&nbsp;<input type='checkbox' name='mood' value='ON'  title='See the full effect of your words by checking this box.'>: Show 'Force Orientation' meter
				</div>				<div class='formRow'>
					<br><b>Result not what you expected?</b><br>
					<input class='button' type='submit' name='report' value='Seek advice, you must!' title='Just a few pointers for the picky! :-)'>
				</div>
			</form>
		</div>


				<div style='text-align:center;'>
				<center>
				<div style='width:530px;'>
					<div class='block' id='result'>&nbsp;
					<img src='yoda.png' style='float:left; margin-right:-40px; position:absolute; top:0px; left:0px; z-index:2;' title='When 900 years you reach, look as good you will not.'>
					<div style='padding-left:260px;'>
						<span style='white-space:nowrap;'>
							<textarea style='margin-top:0px; padding:5px 1px 5px 45px; width:250px;' name='YodaSpeak' rows='15' cols='30' readonly>Test.  Yes, hmmm.</textarea>
						</span>
					</div>
					<div class='block' style='text-align:center; font-size:10px; height:6px;width:300px;padding-top:4px;margin-left:200px;'>
											</div>
				</div></div></center></div>

			<div align='center' class='otherInfo'>
			<div class='otherInfoBlock'>
				<table>
					<tr>
						<td>
							<div style='margin-bottom:5px;'>
								<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
								<!-- Larger block right of main content -->
								<ins class="adsbygoogle"
								     style="display:inline-block;width:336px;height:280px"
								     data-ad-client="ca-pub-1836874439442426"
								     data-ad-slot="6891530784"></ins>
								<script>
								(adsbygoogle = window.adsbygoogle || []).push({});
								</script>
							</div>
						</td>
						<td>
							<div class='bruteLinks' style='margin-bottom:5px;'>
								<p><a href='http://yodaspeak.co.uk.mybrute.com'>Become Yoda's Pupil on MyBrute.com!</a></p>
								<p>Already his pupil?<br><a href='http://mybrute.com/team/154825'>Join his clan - only 50 spaces max!</a></p>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div class='otherInfoBlock'>
				<div>
					<p id='TLYDNotify' style='margin-top:10px;'>
						<!-- <a href='http://www.talklikeyodaday.tk' target='_blank'> -->
						<span style='font-size:1.2em; font-weight:bold; line-height:0.8em;'>
							May 21st is Talk Like Yoda Day!
						</span><!--</a>-->
					</p>
					<span id='theDayCon'>Time until Talk Like Yoda Day:<br>
<span id='theDay'><span id='countW'>47</span> <span id='weekP'>weeks</span>, <span id='countD'>2</span> <span id='dayP'>days</span>, <span id='countH'>4</span> <span id='hourP'>hours</span>, <span id='countM'>5</span> <span id='minuteP'>minutes</span>, <span id='countS'>0</span> <span id='secondP'>seconds</span> <span id='timezone'>(GMT)</span><br><span id='countTZ'>&nbsp;</span></span>					</span>
					<span id="sTime" style="display:none;">1435175700</span>&nbsp;<span id="yTime" style="display:none;">1463788800</span>
				</div>

				<div>
					<p style='margin-top:2em;'><span style='font-size:1.5em; font-weight:bold;'>You asked for it, and here it is:</span><br>
					<b><a style='font-size:1.5em;' href='http://www.yodaspeak.co.uk/webservice/yodatalk.php?wsdl'>The Yoda-Speak Web Service!</a></b><br>
					If you use the yodaspeak web service anywhere, I'd really appreciate it if you left a shout in the shoutbox on the right, saying who you are and where you're using it.  Just so I know he's staying out of trouble.</p>
				</div>
			</div>
		</div>

		<div class='footer'>
			<p><a href='http://www.yodaspeak.co.uk/privacy.php'>Privacy Policy</a></p>
			<p><a href='http://www.siteadvisor.com/sites/yodaspeak.co.uk' target='_blank'>Is this site safe to use?</a></p>

			 <p>
				 <a href="http://www.google.com/ig/adde?moduleurl=http://www.yodaspeak.co.uk/webservice/yodagoogle.xml"><img src="http://buttons.googlesyndication.com/fusion/add.gif" style="width:104px; height:17px;border:0px;" alt="Add to iGoogle" /></a><br>
				 <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;" src="valid-html401-blue.png" alt="Valid HTML 4.01 Transitional" height="31" width="88"></a>
				 <a href="http://jigsaw.w3.org/css-validator/validator?uri=http://www.yodaspeak.co.uk/"><img style="border:0;width:88px;height:31px" src="valid-css-blue.png" alt="Valid CSS!"></a>
			</p>

			<div class='disclaimer'>
				<p style='margin-top:15px;'>DISCLAIMER:  This site is in no way sponsored or endorsed by: George Lucas, Lucasfilm Ltd., LucasArts Entertainment Co., or any affiliates.
				Star Wars and all its characters are © and TM Lucasfilm Ltd.</p>
				<p>This site is just for fun and to celebrate what Lucas created in Yoda.</p>

				<p>I am not responsible for the content in the 'Latest Result' and 'Shout Your Wisdom' boxes as these are updated with each person's use of this webpage.
				This content comes from the different people from all over the world dynamically.  If you see anything offensive there before I do, it's just bad timing.</p>
			</div>
		</div>
	</body>
</html>

    YODA
    yoda_translator = YodaTranslator.new(nil)
    expect(yoda_translator.parse(text)).to eq('Test.  Yes, hmmm.')
  end
end