class Post < ApplicationRecord
  # Validation rules
  validate :tag_list_count
  validates :title, presence: true

  # Relationships
  has_many :taggings
  has_many :tags, through: :taggings

  # Scopes
  scope :most_recent, -> { order(created_at: :desc).limit(6) }
  scope :title_contains, ->(term) { where('title LIKE ?', "%#{term}%") }
  scope :tags_contain, ->(term) { joins(:tags).where('tags.name LIKE ?', "%#{term}%") }
  scope :search, ->(search_term) { title_contains(search_term) | tags_contain(search_term) }
  scope :tagged_with, ->(name) { Tag.find_by!(name: name).posts }

  # Methods
  # def tag_list
  #   tags.map(&:name).join(', ')
  # end

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
