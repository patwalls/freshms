class Project < ActiveRecord::Base

  def set_leaked
    if !leaked && leaked?
      self.update(leaked: true, leak_date: Time.now)
    end
  end

  def set_project_attributes
    scraped_data = WebScraper.set_attributes(link)
    update(scraped_data)
  end

  private

  def leaked?
    WebScraper.leaked?(link)
  end
end
