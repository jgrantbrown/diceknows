class User < ActiveRecord::Base

  validates_presence_of :username, uniqueness: true
  validates_presence_of :password
  validates_presence_of :email, uniqueness: true

  has_secure_password

  def slug
    self.username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    self.all.find {|user| user.slug == slug}
  end
end
