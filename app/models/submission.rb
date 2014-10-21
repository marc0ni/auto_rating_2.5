class Submission < ActiveRecord::Base
  belongs_to :agent
  belongs_to :account
  belongs_to :policy
  belongs_to :proposal
  belongs_to :risk
  belongs_to :deductible
  belongs_to :limit
  
  accepts_nested_attributes_for :proposals,
      :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, 
      :allow_destroy => true
      
  accepts_nested_attributes_for :risks,
      :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, 
      :allow_destroy => true
      
  accepts_nested_attributes_for :deductibles,
      :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, 
      :allow_destroy => true
      
  accepts_nested_attributes_for :limits,
          :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }, 
          :allow_destroy => true
  
    
  def after_save
    if self.proposals[0].name == ""
      self.proposals[0].delete
    end
    
    if self.risks[0].name == ""
      self.risks[0].delete
    end
    
    if self.deductibles[0].name == ""
      self.deductibles[0].delete
    end
    
    if self.limits[0].name == ""
      self.limits[0].delete
    end
    
  end  
end
