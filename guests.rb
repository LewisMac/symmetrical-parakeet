
class Guest
attr_reader :name
  def initialize(name)
    @name = name
  end
  
  # def give_id()
  #   return "#{@name}#{Counter.new()}"
  # end

end



# class Counter
#   def initialize()
#     @counter = 0
#   end

#   def new_person()
#     @counter += 1
#   end
# end