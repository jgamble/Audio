use 5.010001;
use strict;
use warnings;
use Module::Build;

use Config;

my $build = Module::Build->new (
	module_name => 'Audio',

	dist_abstract => q(Audio),
	dist_author => [q(Nick Ing-Simmons)],
	dist_version => '1.029',
	dist_name => 'Audio',

	provides => {
		'Audio' => {
			file => 'lib/Audio.pm',
		},
		'Audio::Data' => {
			file => 'lib/Audio/Data.pm',
		},
		'Audio::Filter' => {
			file => 'lib/Audio/Filter.pm',
		},
		'Audio::Filter::AllPole' => {
			file => 'lib/Audio/Filter.pm',
		},
		'Audio::Filter::FIR' => {
			file => 'lib/Audio/Filter.pm',
		},
		'Audio::Resonator' => {
			file => 'lib/Audio/Filter.pm',
		},
		'Audio::AntiResonator' => {
			file => 'lib/Audio/Filter.pm',
		},
		'Audio::Play' => {
			file => 'lib/Audio/Play.pm',
		},
		'Tk::Scope' => {
			file => 'lib/Audio/Tk/Scope.pm',
		},
	},

	requires => {
		perl => '5.10.1',
		'Math::Polynomial::Solve' => '2.80',
	},

	configure_requires => {
		'Module::Build' => '0.4',
	},

	build_requires => {
		'Test::More' => 0,
	},

	add_to_cleanup => [
		'*%',
		'*.bak',
		'*.bck',
		'Base/*%',
		'out*.au'
	],

	license => 'perl',
	create_license => 1,
	create_readme => 0,
	create_makefile_pl => 'traditional',
	dynamic_config => 0,
	release_status => 'ustable',

	meta_merge => {
		keyword => [ qw(audio morse) ],
		resources => {
			repository => 'git://github.com/jgamble/Audio.git',
#			repository => {
#				url => 'git://github.com/jgamble/Audio.git',
#				web => 'https://github.com/jgamble/Audio.git',
#				type => 'git',
#			},
		},
	},
);

$build->create_build_script;
