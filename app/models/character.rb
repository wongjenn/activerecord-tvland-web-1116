class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  # def build_show(hash)
  #   new_show = Show.new(hash)
  #   self.show = new_show
  #   new_show.name
  # end
end
