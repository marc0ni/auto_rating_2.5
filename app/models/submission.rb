class Submission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :account
  belongs_to :policy
  belongs_to :proposal
  belongs_to :risk
  belongs_to :deductible
  belongs_to :limit
end
