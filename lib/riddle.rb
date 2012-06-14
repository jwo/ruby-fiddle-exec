class Riddle
  RUNNER = File.join(File.dirname(__FILE__), "../bin/runner")

  attr_reader :output, :exception, :result

  def execute(code)
    IO.popen(RUNNER, 'r+') do |io|
      io.write(code)
      io.close_write
      @result, @output, @exception = Marshal.load(io.read)
    end

    @result
  rescue => e
    @exception = e
  end

end
