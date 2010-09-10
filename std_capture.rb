require 'stringio'
module StdCapture
	def self.capture
		x = $stdout
      s = StringIO.new
		$stdout = s
		yield
		$stdout = x
      s.rewind
      s.read
	end
end

