class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 5 }

  before_save :format_title

  after_create :send_notification

  def short_title
    title.truncate(10)
  end

  def short_description
    description.truncate(10)
  end

  def send_notification
    puts "Post criado!"
  end

  private

  def format_title
    self.title = title.capitalize
  end
end
