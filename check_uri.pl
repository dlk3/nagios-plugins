#!/usr/bin/perl -w

########################################################################
#  This Source Code Form is subject to the terms of the Mozilla Public #
#  License, v. 2.0. If a copy of the MPL was not distributed with this #
#  file, You can obtain one at http://mozilla.org/MPL/2.0/.            #
########################################################################

use strict;
use warnings;

use Monitoring::Plugin;

use POSIX;
use Getopt::Long;
use Net::Amazon::S3;

#  Initialize the plugin and the arguments
my $np = Minitoring::Plugin->new(
	shortname => 'URI',
	usage => "Usage: %s -H|--host -p|--port -a|--auth -u|--uri",
	version => "1.0",
	blurb => "This Nagios plugin accesses a URI and returns OK if that URI is accessable"
	url => "http://sourceforge.net/projects/nagios-plugins",
	timeout => 10,
 );

$np->add_arg(
	spec => 'port|p=s',
	help => "-a, --auth=<userid:password>\n"
		. "   The port on the host.  Default = 80."
	required => 0
);
$np->add_arg(
	spec => 'auth|a=s',
	help => "-a, --auth=<userid:password>\n"
		. "   Userid and password required to access the URI, if necessary"
	required => 0
);
$np->add_arg(
	spec => 'uri|u=s',
	help => "-u, --uri=<string>\n"
		. "   The URI to be tested.",
	required => 1
);
$np->getopts;
my $host = $np->opts->host;
my $port = $np->opts->port;
my $auth = $np->opts->auth;
my $uri = $np->opts->uri;

my $ua = LWP::UserAgent->new;


=head1 DESCIPTION

This Nagios plugin checks an AWS S3 bucket to see if it contains a
file whose name matches the specified pattern.  

This plugin requires the Net::Amazon::S3 module.

Please see the plugin help (check_s3 -h) for additional details.

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2014 by David King <dave at daveking dot com>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see http://www.gnu.org/licenses/

=cut
