class User < ActiveRecord::Base
EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..30 }
validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
validates :password, :confirmation => true #password_confirmation attr
validates_length_of :password, :in => 6..20, :on => :create


#attr_accessible :gallery_id, :name, :image, :remote_image_url
#belongs_to :gallery
#mount_uploader :image, ImageUploader
def self.create_with_omniauth(auth)
	create! do |user|
	user.facebook = 1
	user.highest1 = 0
	user.highest2 = 0
	user.highest3 = 0
#	user.id = auth['uid']
	if auth['info']
	user.username = auth['info']['email'] || ""
	user.email = auth['info']['email'] || ""
	end
	user.password = auth['info']['name'] || ""
	end
end
def self.authenticate(username_or_email="", login_password="")
	if EMAIL_REGEX.match(username_or_email)
		user = User.find_by_email(username_or_email)
	else
		user = User.find_by_username(username_or_email)
	end
	if user && user.match_password(login_password)
		return user
	else
		return false
	end
end
def match_password(login_password="")
	password == login_password
end
def highest_1(mark)
	if mark > highest1
		highest1=mark
	end
	save
end
def highest_2(mark)
	if mark > user.highest2
		user.highest1=mark
	end
end
def highest_3(mark)
	if mark > user.highest3
		user.highest3=mark
	end
end
end