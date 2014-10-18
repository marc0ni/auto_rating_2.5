class Agent < ActiveRecord::Base
  belongs_to :account
  belongs_to :submission
  belongs_to :proposal
  belongs_to :policy
end
