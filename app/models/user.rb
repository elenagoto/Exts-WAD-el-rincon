class User < ApplicationRecord
  # Callbacks
  before_validation :downcase_email
  before_validation :downcase_username
  after_initialize :default_role!
  after_initialize :default_bio!

  # Validation rules
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true
  validates :role, inclusion: { in: %w(registered author admin) }
  has_secure_password

  # Relationships
  has_many :posts, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked_posts, through: :bookmarks, source: :post
  has_many :comments, dependent: :destroy

  # Uploader
  mount_uploader :avatar, AvatarUploader

  def self.from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.username = auth.info.name.tr(" ", "_")
      user.email = auth.info.email
      if auth.info.uid
        user.uid = auth.info.uid
      end
      user.password = user.password_confirmation = SecureRandom.hex
    end
  end

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
  def default_bio!
    self.bio ||= 'No bio'
  end


end
