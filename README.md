## PBEmojiLabel

This is a UILabel category which allows you to insert Emojis you use in [Campfire](http://campfirenow.com/), [GitHub](https://github.com/), [Basecamp](http://basecamp.com/), [Turntable.fm](http://turntable.fm/), [Teambox](http://teambox.com/), [Trac](http://trac.edgewall.org/) and [Flowdock](https://www.flowdock.com/) without the need to calculate where to insert some UIImages representing the Emojis.

![Screenshot](https://raw.github.com/nerdishbynature/PBEmojiLabel/master/Screenshot.png "Screenshot")

# How does it work?

It's as simple as A-B-C, all the supported Emojis are in the EmojiList.plist.
Each key (the emoji code) contains a value with the represented iOS unicode character.
When you call `setEmojiText:` the label iterates through the keys and searches in your text for a result.

# But, is it slow?

As far as I know, not at all.

# Contributing

You can see all available emojis here:

http://www.emoji-cheat-sheet.com/

And the iOS representation here:

http://arashnorouzi.wordpress.com/2011/08/31/adding-graphics-and-emoji-characters-to-apple-push-notifications/

Please be sure to NOT edit the plist using Xcode because it makes some weird XML-Encoding which the label fails to interpret as an Emoji.
