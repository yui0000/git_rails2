require 'mechanize'

def scraping_image(link)
   agent = Mechanize.new
   page = agent.get(link)
   image_url = page.at('.entry-content img').get_attribute('src')
   return image_url
end

links = []
agent = Mechanize.new
current_page = agent.get("http://review-movie.herokuapp.com/")
element = current_page.search('.entry-title a')

element.each do |ele|
    links << ele.get_attribute('href')
end

links.each do |link|
    puts scraping_image('http://review-movie.herokuapp.com/' + link)
end