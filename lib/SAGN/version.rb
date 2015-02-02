module SAGN
  MAJOR = '0'
  MINOR = '1'
  PATCH = '0'
  BUILD = 'pre'
  REVISION = `git rev-parse HEAD`.gsub("\n",'')[0..6]
  VERSION  = "#{MAJOR}.#{MINOR}.#{PATCH}-#{BUILD}.#{REVISION}"
end
