# README 

## URL PARSER

### Description

This project is a URL PARSER that will parse any URL given. The **url_parser** file does not use the **URI Module**. The **url_parser_uri** file actually uses the URI module. It was created as my third wyncode project.

### Installation 

To install just download the the **url_parser.rb** file and run from your terminal. The **url_parser_uri.rb** will require the installation of the **uri-query_params** gem.

You can download this gem here : https://rubygems.org/gems/uri-query_params

or you can install the gem from your Terminal using:

```bash

gem install uri-query_params

```

### Usage

Upon installation and download of file. Replace the URL already in the file with the URL you would like to parse:

```ruby

t = UrlParser.new "https://calendar.google.com/calendar/render?mode=day&date=20170424T185803&pli=1#main_7%7Cday-1+24230+24230+24230"

```

Save the file and run again from the Terminal. _Viola_! Your URL is now parsed.
