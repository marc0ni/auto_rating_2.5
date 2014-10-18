class Policy < ActiveRecord::Base
  belongs_to :submission
  belongs_to :proposal
end
