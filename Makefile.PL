#!perl

use 5.010000;

use strict;
use warnings;
use ExtUtils::MakeMaker;
use File::Spec ();

my %params = (
  NAME         => 'Task::BeLike::JMATES::WorkWorkWork',
  ABSTRACT     => 'modules used by JMATES (for work)',
  VERSION_FROM => 'lib/Task/BeLike/JMATES/WorkWorkWork.pm',
  PREREQ_PM    => {
    'App::cpanminus'        => 0,
    'Capture::Tiny'         => 0,
    'Data::Dumper::Concise' => 0,
    'File::AtomicWrite'     => 0,
    'File::Cmp'             => 0,
    'File::HomeDir'         => 0,
    'File::Path::Tiny'      => 0,
    'File::Tail'            => 0,
    'IO::Socket::INET6'     => 0,
    'IPC::System::Simple'   => 0,
    'JSON'                  => 0,
    'LWP::Protocol::https'  => 0,
    'LWP::UserAgent'        => 0,
    'Net::DNS'              => 0,
    'Net::LDAP'             => 0,
    'Net::Ping'             => 0,
    'NetAddr::IP'           => 0,
    'Perl::Tidy'            => 0,
    'Term::CallEditor'      => 0,
    'Term::ReadKey'         => 0,
    'Term::ReadLine::Gnu'   => 0,    # working ^D in cpan \o/
    'Text::Autoformat'      => 0,
    'Time::HiRes'           => 0,
    'URI'                   => 0,
  },
  ( $] >= 5.005
    ? ( AUTHOR => 'Jeremy Mates <jmates@cpan.org>' )
    : ()
  ),
);

# for xpquery, on wild assumption that libxml2 is available
for my $d ( split /[:]+/, $ENV{PATH} || '' ) {
  next if length $d == 0;
  if ( -x File::Spec->catfile( $d, 'xml2-config' ) ) {
    $params{PREREQ_PM}->{'XML::LibXML'}               = 0;
    $params{PREREQ_PM}->{'XML::LibXML::XPathContext'} = 0;
    last;
  }
}

if ( $ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/ and $ExtUtils::MakeMaker::VERSION > 6.30 ) {
  $params{LICENSE} = 'perl';
}

if ( $ExtUtils::MakeMaker::VERSION ge '6.46' ) {
  $params{META_MERGE} = {
    resources => {
      homepage   => 'http://github.com/thrig/Task-BeLike-JMATES-WorkWorkWork',
      license    => 'http://dev.perl.org/licenses/',
      repository => 'http://github.com/thrig/Task-BeLike-JMATES-WorkWorkWork',
    }
  };
}

if ( $ExtUtils::MakeMaker::VERSION ge '6.48' ) {
  $params{MIN_PERL_VERSION} = 5.010000;
}

WriteMakefile(%params);
