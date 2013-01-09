require 'sandbox'

class Riddle 
  attr_reader :code, :output, :exception, :result

  def initialize
    @code = ""
  end

  def execute(code)
    @code = code
    safe_evaluation(code).tap do |results|
      @output = String.new(results.output).split("\n")
      @result = process_result(results.result)
      @exception = (results.exception || "")
    end
    self
  end

  def safe_evaluation(code)
    sand = Sandbox.safe
    sand.activate!
    sand.eval_with_result(code)
  rescue Sandbox::SandboxException => sandee
    Sandbox::Full::Result.new("", "", sandee.message)
  end

  def process_result(result)
    return nil if result.nil?
    result
  end

end
