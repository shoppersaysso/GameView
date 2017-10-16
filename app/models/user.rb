class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_reader :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_attached_file :avatar, default_url: 'users/thumb/default.png', styles: { thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_many :games
  has_many :reviews

  def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
   end
  end

  def level_up
    self.gameview_level += 1
    self.save
  end

  def level_down
    self.gameview_level -= 1
    self.save
  end

  def level
    level = []
    case self.gameview_level
      when 0
      level = "Newbie"
      when 1, 2, 3
      level = "Beginner Gamer"
      when 4, 5, 6
      level = "Average Gamer"
      when 7, 8, 9
      level = "Advanced Gamer"
      when 10
      level = "Power Gamer"
      end
      return level
  end

  def avatar_url
    avatar.url(:thumb)
  end



end
