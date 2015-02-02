module LeaderBored
  MAJOR = '1'
  MINOR = '0'
  PATCH = '0'
  PRE   = 'beta1'
  REV   = `git rev-parse HEAD`[0..6] # Grab the first 6 characters of the git revision string

  # Conforms to Semantic Versioning 2.0
  # See http://semver.org/ for details.
  VERSION = [MAJOR,MINOR,PATCH].compact.join('.') + ("-#{PRE}.#{REV}" if PRE)
end
