class Link < ApplicationRecord
  belongs_to :user
  has_many :visits

  validates :slug, presence: true
  validates :target_url, presence: true

  def standardize_target_url!
    target_url.gsub!("http://", "")
    target_url.gsub!("https://", "")
  end

  def visit_count
    visits.count
  end

end
