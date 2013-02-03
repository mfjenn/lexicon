class Word < ActiveRecord::Base
  attr_accessible :definition, :example, :scope, :synonyms, :term
  belongs_to :user
  validates_presence_of :user
end
