
class Alias < ActiveRecord::Base
  belongs_to :aliasable, :polymorphic => true
end
