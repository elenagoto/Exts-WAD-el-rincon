class Tag < ApplicationRecord
  # Callbacks
  before_validation :downcase_name

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  # Relationships
  has_many :taggings, dependent: :destroy
  has_many :posts, through: :taggings

  # Scope
  scope :tag_counts, -> { select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id') }

  # Methods
  private

  def downcase_name
    self.name = name.downcase.strip
  end
end
