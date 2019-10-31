#!/usr/bin/perl

use strict;
use warnings;

require "./Define.pm";

# verbs
my %V = %Define::Actions;

# keys
my %K = %Define::Keys;

package Objects;

our $Certificates = {
	'certificates' => {
		$V{ LIST } => {
						uri    => "/certificates",
						method => 'GET',
		},
		$V{ DOWNLOAD } => {
			uri    => "/certificates/<$K{CERT}>",
			method => 'GET',
			download_file => undef,
		},
		$V{ GET } => {
					   uri    => "/certificates/<$K{CERT}>/info",
					   method => 'GET',
		},
		$V{ DELETE } => {
						  uri    => "/certificates/<$K{CERT}>",
						  method => 'DELETE',
		},
		$V{ CREATE } => {
			uri    => "/certificates",
			method => 'POST',
		},
		$V{ UPLOAD } => {
						  uri    => "/certificates/<$K{CERT}>",
						  method => 'POST',
						  content_type => 'application/x-pem-file',
						  upload_file => undef,
		},
	},
	'certificates-ciphers' => {
								$V{ LIST } => {
												uri    => "/ciphers",
												method => 'GET',
								},
	},
};

1;
