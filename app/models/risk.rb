class Risk < ActiveRecord::Base
  belongs_to :submission
  belongs_to :details
end
