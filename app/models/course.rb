class Course < ApplicationRecord
  belongs_to :user
  #has_rich_text :content
  belongs_to :level
  belongs_to :material
  has_many :exercices


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
