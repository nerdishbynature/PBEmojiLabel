## PBEmojiLabel

This is a UILabel subclass which allows you to insert Emojis you use in Campfire, GitHub, Basecamp, Turntable.fm, Teambox, Trac and Flowdock without the need calculate where to insert some UIImages representing the Emojis.

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