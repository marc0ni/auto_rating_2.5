class Submission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :account
  belongs_to :policy
  belongs_to :proposal
  belongs_to :risk
  belongs_to :deductible
  belongs_to :limit
  
  models = [':proposals', ':risks', ':deductibles', ':limits']
  
  accepts_nested_attributes_for { |models| models.all? { |l,m | }
      :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, 
      :allow_destroy => true }
    
  def after_save
    if self.models[0].name == ""
      self.models[0].delete
    end
  end  
end
