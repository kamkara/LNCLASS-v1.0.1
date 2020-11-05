class Course < ApplicationRecord
  belongs_to :user
  #has_rich_text :content
  #has_many :exercices, dependent: :destroy


  #VALIDATIONS

  #PRESENTE
  validates :title,
            :content,
            :level_id,
            :material_id,
            :author, presence: true
  #SLUG
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end

end
