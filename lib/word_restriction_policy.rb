class WordRestrictionPolicy
  def valid?(code)
    !["fork", "system", "exec", "\`"].any?{|w| code.include? w}
  end
end
