class UrlParser

  def initialize (url)
    @url = url
  end

  def scheme
    url_s = @url.split(/\W+/)
    if url_s[0].include? "http"
      url_s[0]
    else
      nil
    end
  end

  def domain
    @url.split("/")[2].split(":")[0]
  end

  def port
    url_split_for_port = @url.split(":")[-1].split("/")[0] || 80
    url_split = @url.split(/\W+/)
    if url_split_for_port == ""
      if url_split[0].include? "https"
        "443"
      else
        "80"
      end
    else
      url_split_for_port
    end
  end

  def path
    url_s = @url.split("/")[-1].split(/\W+/)[0]
    if url_s == ""
      nil
    else
      url_s
    end
  end

  def query_string
    url_split = @url.split("?")[-1].split("#")[0].split(/\W+/)
    hash = {}
    if url_split[3] == nil
      hash[url_split[0]] = url_split[1]
    else
      hash[url_split[0]] = url_split[1]
      hash[url_split[2]] = url_split[3]
    end
    hash
  end

  def fragment_id
    @url.split("#")[-1]
  end
end



# t = UrlParser.new ("https://calendar.google.com/calendar/render?mode=day&date=20170424T185803&pli=1#main_7%7Cday-1+24230+24230+24230")
# p t.scheme
# p t.domain
# p t.port
# p t.path
# p t.query_string
