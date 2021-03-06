class Post < ApplicationRecord
  # Callbacks

  # Validation rules
  validates :tags, length: { maximum: 3, message: ": 3 are the maximum allowed." }
  validates :title, :body, presence: true

  # Relationships
  belongs_to :user
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks
  has_many :comments, dependent: :destroy

  # Pagination
  paginates_per 6

  # Scopes
  scope :most_recent, -> { order(created_at: :desc).limit(6) }
  scope :title_contains, ->(term) { where('lower(title) LIKE ?', "%#{term}%") }
  scope :body_contains, ->(term) { where('lower(body) LIKE ?', "%#{term}%") }
  scope :tags_contain, ->(term) { joins(:tags).where('tags.name LIKE ?', "%#{term}%") }
  scope :search, ->(search_term) { title_contains(search_term) | tags_contain(search_term) | body_contains(search_term) }
  scope :tagged_with, ->(name) { Tag.find_by!(name: name).posts }

  # Methods

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
