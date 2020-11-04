class User < ApplicationRecord
  # Callbacks
  before_validation :downcase_email
  after_initialize :default_role!

  # Validation rules
  validates :name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :role, inclusion: { in: %w(registered author admin) }

  # Relationships
  has_many :posts
  has_secure_password


  # Methods
  private

  def downcase_email
    self.email = email.downcase
  end

  def default_role!
    self.role ||= 'registered'
  end
end
