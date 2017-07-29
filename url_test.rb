# url = "http://www.google.com:60/search?q=cat&name=Tim#img=FunnyCat"
url = "https://www.google.com/?q=cat#img=FunnyCat"

# url_s = url.split(/\W+/)
# if url_s[0].include? "http"
#   p url_s[0]
# else
#   nil
# end

# p url.split(/\W+/)
# p url[/com.*/].split(/\W+/)

hash = {}
url_split = url.split("?")[-1].split("#")[0].split(/\W+/)
p url_split = url.split("?")[-1].split("#")[0].split(/\W+/)
if url_split[3] == nil
  hash[url_split[0]] = url_split[1]
else
  hash[url_split[0]] = url_split[1]
  hash[url_split[2]] = url_split[3]
end

p hash
