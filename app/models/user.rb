class User < ActiveRecord::Base
  has_secure_password

  has_many :registrations, inverse_of: :login, as: :login, dependent: :destroy, class_name: "TwoFactorAuth::Registration"

end
