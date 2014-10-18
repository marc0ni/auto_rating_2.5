class Account < ActiveRecord::Base
  belongs_to :agent
  belongs_to :submission
  belongs_to :proposal
end
