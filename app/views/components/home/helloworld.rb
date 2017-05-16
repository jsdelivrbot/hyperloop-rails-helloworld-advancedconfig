module Components
  module Home

    class Helloworld < Hyperloop::Component

        render(DIV) do
          H1 {"You said 'Hello world' #{Counter.tries} time#{(Counter.tries)>1 ? 's':''}"}
          BUTTON(class: 'btn btn-info') { "Click to say hello World" }.on(:click) do
            CounterOp.run
          end
          BR
          if (Counter.tries)>2 
            H1 {%[That's enough for today !]}
            BUTTON(class: 'btn btn-info') { "Click to reset" }.on(:click) do
            Counter.clear!
          end
        end
        
      end
      
    end

  end
end