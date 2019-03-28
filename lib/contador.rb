# Matcher Change
class Counter
  class << self
    def increment
      @qtd ||= 0
      @qtd += 1
    end

    def qtd
      @qtd ||= 0
    end
  end
end
