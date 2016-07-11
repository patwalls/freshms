class Project < ActiveRecord::Base

  def set_leaked
    if !leaked && leaked?
      leaked = true
      self.save!
    end
  end

  private

  def leaked?
    WebScraper.leaked?(link)
  end
end
