require 'test/unit'
require './std_capture'
class TestStdCapture < Test::Unit::TestCase 

#include StdoutCatcher	
	def test_simple
		
		h = StdCapture.capture {
			puts "Hello"
		}
		puts "done"
		assert_equal "Hello\n",h
		h = StdCapture.capture {
			puts "goodbye"
		}
		puts "done"
		assert_equal "goodbye\n",h
	end
end
