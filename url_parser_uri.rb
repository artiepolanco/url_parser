class UrlParser

  require "uri"
  require "uri/query_params"

  def initialize (url)
    @uri = URI(url)
  end

  def scheme
    @uri.scheme
  end

  def domain
    @uri.host
  end

  def port
    @uri.port.to_s
  end

  def path
    @uri.path.delete("/") == "" ? nil : @uri.path.delete("/")
  end

  def query_string
    URI::QueryParams.parse(@uri.query)
  end

  def fragment_id
    @uri.fragment
  end
end

t = UrlParser.new "https://calendar.google.com/calendar/render?mode=day&date=20170424T185803&pli=1#main_7%7Cday-1+24230+24230+24230"
p t.scheme
p t.domain
p t.port
p t.path
p t.query_string
p t.fragment_id
