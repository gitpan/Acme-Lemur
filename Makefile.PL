
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Acme::Lemur',
                       'DISTNAME' => 'Acme-Lemur',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'TO.pm <thousand-oaks-pm@pm.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'This is the abstrcta.',
                       'EXE_FILES' => [],
                       'VERSION' => '9004573.12398346',
                       'PREREQ_PM' => {
                                        'Acme' => '1.11111'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



