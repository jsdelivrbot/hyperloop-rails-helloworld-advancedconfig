class CounterOp < Hyperloop::Operation
    def check_tries
      puts Counter.tries
      abort! if Counter.tries > 2
    end
    step { check_tries }
    step { Counter.increment! }
end