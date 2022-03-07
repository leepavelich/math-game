class Question

  attr_reader :m, :n, :answer

  def initialize()
    @m = rand(20) + 1
    @n = rand(20) + 1
    @answer = m + n
  end

end
