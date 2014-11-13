class LineItem < ActiveRecord::Base
  belongs_to :tool
  belongs_to :issuance
end
