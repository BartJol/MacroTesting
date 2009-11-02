#-------------------------------------------------------------------
# WebGUI is Copyright 2001-2009 Plain Black Corporation.
#-------------------------------------------------------------------
# Please read the legal notices (docs/legal.txt) and the license
# (docs/license.txt) that came with this distribution before using
# this software.
#-------------------------------------------------------------------
# http://www.plainblack.com                     info@plainblack.com
#-------------------------------------------------------------------

use FindBin;
use strict;
use lib "$FindBin::Bin/../lib";

use WebGUI::Test;
use WebGUI::Session;
use Data::Dumper;
use WebGUI::Macro::BackToSite;
use Test::More; # increment this value for each test you create

my $session = WebGUI::Test->session;

##Note, this is not a test of the gateway method.  That is done over
##in t/Session/Url.t  All we need to do is make sure that the macro
##fetches the same thing as the method.

my $numTests = 1;

plan tests => $numTests;

my $macro = 'WebGUI::Macro::BackToSite';


my $output;

$output = WebGUI::Macro::BackToSite::process($session);
is($output, $session->url->getBackToSiteURL, 'fetching current url');


END {
}
