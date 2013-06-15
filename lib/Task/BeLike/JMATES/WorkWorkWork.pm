package Task::BeLike::JMATES::WorkWorkWork;

use 5.010000;
use strict;
use warnings;
our $VERSION = '0.02';

1;
__END__

=head1 NAME

Task::BeLike::JMATES::WorkWorkWork - modules used by JMATES (for work)

=head1 SYNOPSIS

  # and likely also set in your ~/.cpan/CPAN/MyConfig.pm:
  #   'prerequisites_policy' => q[follow],
  export PERL_MM_USE_DEFAULT=1

  # install for whatever Perl cpan + environment points to
  cpan Task::BeLike::JMATES::WorkWorkWork

  # bring in a modern version of Perl due to $VENDOR at $WORK using a
  # version of perl last seen frolicking in the late Devonian
  unset PERL5LIB PERL_LOCAL_LIB_ROOT PERL_MB_OPT PERL_MM_OPT
  cd perl-5.16.3
  ./Configure -des -Dprefix=$HOME/usr/perl-5.16.3
  make test
  make install
  $HOME/usr/perl-5.16.3/bin/cpan Task::BeLike::JMATES::WorkWorkWork

=head1 DESCRIPTION

Modules used by JMATES for work (that is, not for fun).

=head1 HISTORY

See the git repository, and documentation on how the (public) git
history is minimized in L<Task::BeLike::JMATES>.

=head1 SEE ALSO

L<http://github.com/thrig/Task-BeLike-JMATES-WorkWorkWork>,
L<Task::BeLike::JMATES>, L<Task::BeLike::JMATES::Play>

=head1 AUTHOR

Jeremy Mates, E<lt>jmates@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2013 by Jeremy Mates

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself, either Perl version 5.16 or, at
your option, any later version of Perl 5 you may have available.

=cut
