use Test;
BEGIN { plan(tests => 3) }

use strict;
use warnings;

use Net::Frame::Layer::Syslog qw(:consts);

my ($syslog, $expectedOutput1, $expectedOutput2);

$syslog = Net::Frame::Layer::Syslog->new;
print $syslog->print . "\n";
ok(1);

$expectedOutput1 = unpack "H*", $syslog->pack;

$syslog = Net::Frame::Layer::Syslog->message;
print $syslog->print . "\n";
ok(1);

$expectedOutput2 = unpack "H*", $syslog->pack;

print "$expectedOutput1\n$expectedOutput2\n";
ok($expectedOutput1, $expectedOutput2);
