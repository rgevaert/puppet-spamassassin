class spamassassin::config {

  $ensure = $spamassassin::localcf ? {
    ''      => absent,
    default => present,
  }

  file {
    '/etc/spamassassin/local.cf':
      ensure  => $ensure,
      owner   => root,
      group   => root,
      mode    => '0444',
      content => template($spamassassin::localcf);
  }

}
