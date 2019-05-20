class User < ApplicationRecord
  belongs_to :gender
  belongs_to :group
end
