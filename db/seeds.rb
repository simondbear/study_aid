# DESTROY EVERYTHING
Subject.destroy_all
Resource.destroy_all
Exercise.destroy_all


# CREATE EVERYTHING
s1 = Subject.create( :name => "Javascript", :image_url => "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png" )
s2 = Subject.create( :name => "Ruby", :image_url => "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png" )
s3 = Subject.create( :name => "HTML", :image_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1000px-HTML5_logo_and_wordmark.svg.png" )

r1 = Resource.create( :name => "Anonymous Functions in Javascript", :description => "This is a guide talking about Anonymous functions in JS", :url => "http://en.wikibooks.org/wiki/JavaScript/Anonymous_Functions" )
r2 = Resource.create( :name => "Anonymous Functions in Ruby", :description => "https://robots.thoughtbot.com/back-to-basics-anonymous-functions-and-closures" )
r3 = Resource.create( :name => "HTML Elements", :description => "HTML Elements", :url => "https://developer.mozilla.org/en/docs/Web/HTML/Element" )

e1 = Exercise.create( :name => "Write some anonymous functions", :description => "Please", :difficulty => 5 )
e2 = Exercise.create( :name => "Write some anonymous functions", :description => "Please", :difficulty => 3 )
e3 = Exercise.create( :name => "Write some HTML", :description => "Please", :difficulty => 1 )


# ASSOCIATE EVERYTHING
s1.resources << r1
s2.resources << r2
s3.resources << r3

s1.exercises << e1
s2.exercises << e2
s3.exercises << e3