class UrlParser
  attr_accessor :scheme,
                :domain,
                :port,
                :query_string,
                :fragment_id

  def initialize(url)
    @url = url
  end

  def scheme
    @url.split(":").first
  end

  def domain
    @url.split(":")[1].split("//").last
    # @url.split(":")[1].scan(/\w+/).join(".")
  end

  def port
    if (@url.split(":").last.split("/").first == "" && self.scheme == "http")
      "80"
    elsif (@url.split(":").last.split("/").first == "" && self.scheme == "https")
      "443"
    else
      @url.split(":").last.split("/").first
    end
  end

  def path
    if @url.split("/").last.split("?").first == ""
      return nil
    else
      @url.split("/").last.split("?").first
    end
  end

  def query_string
    key_value_pairs = @url.split("?").last.scan(/\w+/)[0..-3] || nil
    Hash[*key_value_pairs]
  end

  def fragment_id
    @url.split("#").last
  end
end

parsed_url = UrlParser.new("http://www.google.com:60/search?q=cat&name=Tim#img=FunnyCat")


p parsed_url.scheme
p parsed_url.domain
p parsed_url.port
p parsed_url.path
p parsed_url.query_string
p parsed_url.fragment_id
