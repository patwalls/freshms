require 'nokogiri'
require 'open-uri'

class WebScraper
  def self.leaked?(path='/2015/frank-ocean-boys-dont-cry/')
    doc = Nokogiri::HTML(open(
      'http://hasitleaked.com' + path,
      'User-Agent' => 'firefox')
    ).at_css('.fontello-icon-droplet')
    is_a_leak(doc)
  end

  private

  def self.is_a_leak(result)
    result.children.first.inner_text.include?('Leaked')
  end
end
