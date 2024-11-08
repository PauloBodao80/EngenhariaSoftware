class Numeric
    @@currencies = {
        'dollar' => 1.0, 'dollars' => 1.0,
        'euro' => 1.292, 'euros' => 1.292,
        'yen' => 0.013, 'yens' => 0.013,
        'rupee' => 0.019, 'rupees' => 0.019
    }  
    def method_missing(method_id)
        singular_currency = method_id.to_s.gsub(/s$/, '')
        if @@currencies.has_key?(singular_currency)
            self * @@currencies[singular_currency]
        else
            super
        end
    end   
    def convert(currency)
        singular_currency = currency.to_s.gsub(/s$/, '')
        if @@currencies.has_key?(singular_currency)
            self / @@currencies[singular_currency]
        else
            raise "Unknown currency: #{currency}"
        end
    end
end

class String
    def palindrome?
      self.downcase.gsub(/\W/, '') == self.downcase.gsub(/\W/, '').reverse
    end
end

module Enumerable
    def palindrome?
        self.to_a == self.to_a.reverse
   end
end