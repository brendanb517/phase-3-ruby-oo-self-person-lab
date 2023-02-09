# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name, bank_account = 25, happiness = 8, hygiene = 8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= happiness
        if ((happiness >= 0) and (happiness <= 10))
            @happiness = happiness
        elsif happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
    end

    def hygiene= hygiene
        if ((hygiene >= 0) and (hygiene <= 10))
            @hygiene = hygiene
        elsif hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid amount
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation friend, topic
        case topic
        when "politics"
            self.happiness = @happiness - 2
            friend.happiness = friend.happiness - 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness = @happiness + 1
            friend.happiness = friend.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end