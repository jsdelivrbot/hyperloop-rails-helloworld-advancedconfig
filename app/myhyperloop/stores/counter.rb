class Counter < Hyperloop::Store
   state tries: 0, scope: :class, reader: true

  def self.increment!
    mutate.tries(state.tries + 1)
  end

  def self.clear!
  	mutate.tries 0
  end

  
end
