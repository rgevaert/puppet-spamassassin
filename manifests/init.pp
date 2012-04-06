class spamassassin (
  $localcf = '',
  $ensure  = $spamassassin::params::ensure,
  $package = $spamassassin::params::package
  ) inherits spamassassin::params
{
  class{'spamassassin::package':;} ~>
    class{'spamassassin::config':;}
}
