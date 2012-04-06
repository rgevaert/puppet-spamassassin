Puppet module to install spamassassin.  For now Debian centric.

Usage
=====

Default include, with **no** /etc/spamassassin/local.cf

    include spamassassin

Add your own /etc/spamassassin/local.cf

    class {
      'spamassassin':
        localcf => 'local.cf.erb';
    }

If you don't define localcf then it will delete /etc/spamassassin/local.cf.
