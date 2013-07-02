
class Alias < ActiveRecord::Base
  belongs_to :aliasable, :polymorphic => trur
end
