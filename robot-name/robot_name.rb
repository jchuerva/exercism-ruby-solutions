class Robot
  def initialize
    reset
  end

  def name
    @name
  end

  def reset
    @name = ""
    prng = Random.new
    2.times { |i| @name << ("A".."Z").to_a.sample }
    @name << "%03d" % prng.rand(1000)
  end
end

module BookKeeping
  VERSION = 2
end
