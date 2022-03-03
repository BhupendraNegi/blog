class Animal

    def method_missing(method, *args, &block)
  
      return super(method, *args, &block) unless method.to_s.include?("can")
  
  
      self.class.send(:define_method, method) do
  
        puts "#{method} created"
  
      end
  
    end
  
    self.send(method, *args, &block)
  
  end
  
  
  dog = Animal.new
  
  
#   dog.swim? # undefined method `swim?' for #<Animal:0x0000000141834fe0> (NoMethodError)
  
  
  dog.can_swim?