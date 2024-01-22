class MyCar

    def initialize(year, model, color)
        @year = year
        @model = model
        @color = color
        @current_speed = 0
    end

    def speed_up(number)
        @current_speed += number
        puts "you push the gas and accelerate #{number} mph."
    end

    def slow_down(number)
        @current_speed -= number
        puts "you hit the brakes and slow to #{number} mph."
    end

    def current_speed
        puts "you're currently going #{@current_speed} mph."
    end

    def shut_down
        @current_speed = 0
        puts "let's park this bad boy."
    end

        attr_accessor :color
        attr_reader :year
      
        # ... rest of class left out for brevity
      
        def spray_paint(color)
          self.color = color
          puts "Your new #{color} paint job looks great!"
        end

        def self.gas_mileage(gallons, miles)
            puts "#{miles / gallons} miles per gallon of gas"
        end

        def to_s
            "my car is a #{color}, #{year}, #{@model}"
        end

        my_car = MyCar.new('2021', 'honda', 'silver')
        puts my_car
end

    odyssey = MyCar.new(2003, 'honda odyssey', 'silver')

    odyssey.speed_up(5)
    odyssey.current_speed
    odyssey.speed_up(5)
    odyssey.current_speed
    odyssey.slow_down(3)
    odyssey.current_speed
    odyssey.spray_paint('blue')
    MyCar.gas_mileage(24, 400)
    odyssey.to_s
