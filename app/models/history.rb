class History < ActiveRecord::Base
  belongs_to :player
  belongs_to :user

  default_scope { order(created_at: :desc) }
end
