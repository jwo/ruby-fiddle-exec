class Object
  def create_block
    Proc.new {}
  end
end

class Riddle 
  attr_reader :output, :exception, :result
  def execute(code)
    capture_stdout do 
      @result = capture_exceptions_eval(code)
    end
    @result
  end

  def capture_exceptions_eval(code)
    begin
      eval(code, Object.new.create_block.binding)
    rescue => exc
      @exception = exc
    rescue LoadError => le
      @exception = le
    rescue SyntaxError => se
      @exception = se
    end
  end

  def capture_stdout
    s = StringIO.new
    $stdout = s
    result = yield
    @output = s.string
    result
  ensure
    $stdout = STDOUT
  end

end
