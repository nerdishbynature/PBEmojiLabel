Pod::Spec.new do |s|
  s.name         = "PBEmojiLabel"
  s.version      = "0.1"
  s.summary      = "This is a UILabel category which allows you to insert Emojis you use in Campfire, GitHub, Basecamp, Turntable.fm, Teambox, Trac and Flowdock without the need to calculate where to insert some UIImages representing the Emojis."
  s.homepage     = "https://github.com/nerdishbynature/PBEmojiLabel"
  s.license      = 'MIT'
  s.author       = { "Piet Brauer" => "piet@nerdishbynature.com" }
  s.source       = { :git => "https://github.com/nerdishbynature/PBEmojiLabel.git", :tag => "1.0" }
  s.source_files = 'Classes', '*'
  s.exclude_files = 'PBEmojiLabelParser/'
  s.exclude_files = 'PBEmojiLabelParser.xcodeproj'
  s.exclude_files = 'README.md'
  s.exclude_files = 'Screenshot.png'
end