class UrlParser

  def initialize(url)
    @url = url
  end

  def scheme
    url_s = @url.split(/\W+/)
    (url_s[0].include? "http") ? url_s[0] : nil
  end

  def domain
    @url.split("/")[2].split(":")[0]
  end

  def port
    url_split_for_port = @url.split(":")[-1].split("/")[0] || 80
    url_split = @url.split(/\W+/)
    return url_split_for_port unless url_split_for_port.empty?
    url_split[0].include?("https") ? "443" : "80"
  end

  def path
    url_s = @url.split("/")[-1].split(/\W+/)[0]
    (url_s == "") ? nil : url_s
  end

  def query_string
    key_value_pairs = @url.split("?").last.scan(/\w+/)[0..-3] || nil
    Hash[*key_value_pairs]
  end

  def fragment_id
    @url.split("#")[-1]
  end
end
