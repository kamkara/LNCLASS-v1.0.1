class Exercice < ApplicationRecord

  #RELATIONS
  belongs_to :user
  belongs_to :course
  has_rich_text :content

  #SLUG
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end

end


