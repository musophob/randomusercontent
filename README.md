# Random User Content (ryc) #

Generates random user content in your applications. Great for prototyping!


## Huh? ##

Currently ryc can puts a comment, author or URL from a random youtube video. Each time its called the content will be different. More services and content types might be available in the future. 


## Buy It ##

    gem install ryc


## Do It ##

With the gem installed, call `Ryc.method` anywhere and watch the magic ensue. 

Currently available methods:

    Ryc.comment
    Ryc.username
    Ryc.url


## Upgrade It ##

* Add more platforms as content sources (twitter, facebook, ...)
* Add a method that outputs a hash of all content types from the same source page instead of picking a random source for each type.
* Remove dependency on randomyoutubecomment.com by generating a random youtube id from within the gem itself.
* Optional arguments:
    * `length(n1, n2)` to select only content with a total character count between `n1` and `n2`.
    * `(rating(pg|pg13|r|nc17)` to choose the level of profanity that best suites your needs. Pass `nc17 ` to `puts` raw unfiltered content. 


## Fix It ##

Gladly accepted in the form of pull requests :)


## Platform Support ##

It works on `ruby 2.0.0p247 (2013-06-27 revision 41674) [universal.x86_64-darwin13]`. The end.


## Credits ##

Big up to [http://randomyoutubecomment.com/](http://randomyoutubecomment.com/) for figuring out how to successfully load a random youtube video in under 20 minutes!


## License ##

    def nil
    end
