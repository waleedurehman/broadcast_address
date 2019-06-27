#!/usr/bin/perl

print "Enter IP address: ";
my $ipaddr = <STDIN>;
print "Enter Netmask address: ";
my $netmask = <STDIN>;
my @ip= split(/\./, $ipaddr);
my @net= split(/\./, $netmask);
my @broadcast_array;
                                                                                    
foreach my $var (0 .. 3)
{
  $net[$var] = 255 - $net[$var];
  $broadcast_array[$var] = $ip[$var] | $net[$var];
}

my $broadcast_address = join '.', @broadcast_array;
print "Broadcast: $broadcast_address\n";
