class User < ActiveRecord::Base
  has_many :powerliftings, dependent: :destroy
end
