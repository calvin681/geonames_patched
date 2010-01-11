require 'rubygems' 
require 'date'

SPEC = Gem::Specification.new do |s| 
  s.name = "geonames_patched" 
  s.version = "0.2.3" 
  s.author = "Calvin Cheung" 
  s.email = "calvin@presdo.com" 
  s.date = s.date = Date.today.to_s
  s.homepage = "http://github.com/calvin681/geonames_patched" 
  s.platform = Gem::Platform::RUBY 
  s.summary = "A version of Adam Wisniewksi's geonames gem that includes username/password login." 
  candidates = Dir.glob("{bin,docs,lib,test}/**/*") 
  s.files = Dir.glob('**/*')
  s.require_path = "lib" 
  s.has_rdoc = true 
  s.extra_rdoc_files = ["README"]
end 
