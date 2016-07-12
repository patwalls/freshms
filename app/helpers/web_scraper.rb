require 'nokogiri'
require 'open-uri'
require 'chronic'

class WebScraper
  def self.leaked?(path)
    doc = Nokogiri::HTML(open(
      'http://hasitleaked.com' + path,
      'User-Agent' => 'firefox')
    ).at_css('.fontello-icon-droplet')
    is_a_leak(doc)
  end

  def self.set_attributes(path)
    doc = Nokogiri::HTML(open(
      'http://hasitleaked.com' + path,
      'User-Agent' => 'firefox')
    )
    {
      title: doc.at_css('#album-name').children.first.inner_text,
      artist: doc.at_css('#artist-name').children.first.inner_text,
      anticipated_release_date: parse_date(
        doc
          .at_css('.fontello-icon-calendar-alt')
          .children
          .first
          .inner_text
      )
    }
  end

  private

  def self.parse_date(date_string)
    Chronic.parse(date_string)
  end

  def self.is_a_leak(result)
    result.children.first.inner_text.include?('Leaked')
  end
end
