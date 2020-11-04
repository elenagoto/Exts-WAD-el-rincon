class User < ApplicationRecord
  # Callbacks
  before_validation :downcase_email
  before_validation :downcase_username
  after_initialize :default_role!

  # Validation rules
  validates :name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false } 
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :role, inclusion: { in: %w(registered author admin) }

  # Relationships
  has_many :posts
  has_secure_password


  # Methods
  private

  def downcase_email
    self.email = email.downcase
  end
  def downcase_username
    self.username = username.downcase
  end

  def default_role!
    self.role ||= 'registered'
  end
end
