use strict;
use warnings;

use Test::Most;
use Test::Script;

# Temporariy removed
#	bin/cpan_monitor.pl

my @scripts = qw(
	bin/admin.pl
	app.psgi
	bin/create_meta.pl
	bin/remove_sessions.pl
	bin/sendmail.pl
	bin/setup.pl
	bin/update_sessions.pl
);

plan tests => 1 + @scripts;

use Perl::Maven::Admin;
use Perl::Maven::Config;
use Perl::Maven::DB;
use Perl::Maven::CreateMeta;
use Perl::Maven::Page;
use Perl::Maven::PayPal;
use Perl::Maven::SVG;
use Perl::Maven::Sendmail;
use Perl::Maven::Tools;
use Perl::Maven::WebTools;

pass;

foreach my $script (@scripts) {
	script_compiles($script);
}
