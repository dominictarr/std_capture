
require 'rubygems'

SPEC = Gem::Specification.new do |spec|
  spec.name = 'std_capture'
  spec.author = 'Dominic Tarr'
  spec.email = 'dominic.tarr@gmail.com'
  spec.homepage = "http://github.com/dominictarr/#{spec.name}"
  spec.version = '0.0.2'
  spec.summary = 'grab std output withing context of a block'
  spec.description = <<-EOF
		s = StdCapture.capture do puts "akakadaka" end; 
		s == "akakadaka" -> true
  EOF
  spec.require_path = "./"
  spec.files = Dir['*.rb']  + Dir['README']
end
