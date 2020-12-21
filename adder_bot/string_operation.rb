class Calculation
  def self.seperate_target_string(target)
    target.scan(/-?\d+(?:\.\d+(?:E\d+)?)?\s*[+]\s*-?\d+(?:\.\d+(?:E\d+)?)?/).first
  end
end