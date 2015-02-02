# Conforms to Semantic Versioning 2.0
# See http://semver.org/ for details.
module SAGN
  MAJOR    = '0'
  MINOR    = '1'
  PATCH    = '0'
  PRE      = 'beta1'
  SHA      = `git rev-parse HEAD`.gsub("\n",'')
  VERSION  = "#{MAJOR}.#{MINOR}.#{PATCH}-#{PRE}.build-#{SHA[0..6]}"
end
