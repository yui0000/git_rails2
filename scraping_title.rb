require 'mechanize'

agent = Mechanize.new
page = agent.get("http://review-movie.herokuapp.com/")
element = page.search('.entry-title a')

element.each do |ele|
    puts ele.inner_text
end