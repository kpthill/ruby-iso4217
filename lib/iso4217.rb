module ISO4217
  VERSION = "001"

  class Code
    attr_reader :code, :num, :locations, :currency, :ccc, :e

    def initialize(table)
      @code = table[:code]
      @num = table[:num]
      @locations = table[:locations]
      @currency = table[:currency]
      @ccc = table[:ccc]
      @obsolete = table[:obsolete]
      @e = table[:e]
    end

    def format_currency(amount)
      return "" if !@e.is_a? Integer || @e < 0
      return sprintf "%d", amount if @e == 0

      sprintf "%.#{@e}f", amount
    end

    def to_s; @currency; end

    def obsolete; CODE[@obsolete]; end
  end

  CODE = Hash.new
end

require "iso4217/code"
