require 'pry'

class Person

@@all =[]

  attr_reader :name
  attr_writer
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @@all << self
  end

  def happiness
     if @happiness > 10
       @happiness = 10
     elsif @happiness < 0
      @happiness = 0
      else
      @happiness
    end
  end

  def hygiene
     if @hygiene > 10
       @hygiene = 10
     elsif @hygiene < 0
      @hygiene = 0
      else
      @hygiene
    end
  end


  # def moderate_hygiene(hygiene)
  #    if hygiene > 10
  #      hygiene = 10
  #    elsif hygiene < 0
  #     hygiene = 0
  #     else
  #     hygiene
  #   end
  # end

  def clean?
    @hygiene > 7 ? true :false
  end

  def happy?
    @happiness > 7 ? true :false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    # @hygiene += 4
    self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    #binding.pry
    #@@all.select {|x| x.include?(friend)}
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if  topic == "politics"
      "blah blah partisan blah lobbyist"
    else if
      "blah blah sun blah rain"
    end

end
