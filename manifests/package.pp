class spamassassin::package
{
  package {
    $spamassassin::package:
      ensure => $spamassassin::ensure;
  }
}
