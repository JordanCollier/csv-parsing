require "CSV"

class Target

  def initialize
    @target = CSV.read("assets/Target.csv")
  end

  def first_line
    @target[0]
  end

  def sums
    @target.inject(0) { |sum, x| sum + x[2].to_i }
  end

  def categories
    #   thing = @target.uniq do |x|
    #     x[0]
    #   end
    #   another = thing.map do |y|
    #     y[0]
    #   end
    #   another
    # end
    @target.map {|x| x[0]}.uniq
  end

end
