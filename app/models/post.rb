class Post < ApplicationRecord
  # Validation rules
  validate :tag_list_count
  validates :title, presence: true

  # Relationships
  has_many :taggings
  has_many :tags, through: :taggings

  # Methods

  def self.tagged_with(name)
    Tag.find_by!(name: name).posts
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggins).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
  
  private 
  def tag_list_count
    errors[:tags] << '3 tags maximum' if tags.count > 3
  end

end
