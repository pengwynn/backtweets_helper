## Backtweets Helper

Simple helper to write Backtweets widgets for those that don't like to get their hands dirty with JavaScript.

## Installation

    script/plugin install git://github.com/pengwynn/backtweets_helper.git

## Usage

### Tweetcount

    <-- Simple count -->
    <%= backtweets_count -%>
    
    <-- Compact size -->
    <%= backtweets_count(:size => 'small', :src => 'RT @pengwynn') -%>
    
    # full options http://www.backtype.com/widgets/tweetcount
    
    # Parameter       Default                     Description
    # ___________     __________                  ________________
    #
    # url             Current URL                 The URL to measure tweets for
    # title           Title of current page       The title of the page for retweets
    # src                                         Leading text for retweets
    # via             true                        If tweets contain '(via @BackType)'
    # links           false                       If links should be opened in new windows
    # size            "large"                     Size of button ("large" or "small")
    # api_key         Awe.sm                      API Key for custom URL shortener
    # short_url       Generated (bt.io)           Specify the pre-shortened URL that you would like to use
    # background                                  Button background color (e.g. 'FFFFFF')
    # border                                      Button border color (e.g. 'CCCCCC')
    # text                                        Button text color (e.g. '000000')
    
### Comments widget

    <%= backtweets_comments('pengwynn') -%>
    
### Blogroll widget

    <%= backtweets_blogroll('pengwynn') -%>
    
### Search widget

    <%= backtweets_search('iphone') -%>


Copyright (c) 2009 [Wynn Netherland](http://wynnnetherland.com), released under the MIT license
