My Nagios Plugin Collection
===========================

This is a collection of plugins that I created to support my use of the [Nagios](http://www.nagios.com) network monitoring application.  These are all written in Perl using the Nagios::Plugin modules.

+ bitcoin_miners/check_asicminer - Monitor ASICMiner bitcoin mining blade and cube devices for mining rate (MH/s), mining pool and chip faults

+ bitcoin_miners/check_cgminer - Monitor an instance of the cgminer bitcoin mining application for mining rate (MH/s) and mining pool.  Supports BITMAIN AntMiner S1, S2 and S3 bitcoin mining devices, with monitoring of board temperatures and chip faults.

+ check_itsm - Monitor scheduled backups for client nodes and storage pool utilization on a Tivoli Storage Manager server.  See plugin help for special setup requirements.

+ check_smart - Monitor health of SMART-enabled devices.  See plugin help for special setup requirements.

+ check_s3 - Check if a specific Amazon AWS S3 bucket contains a file that matches the specified regex.  Requires Net::Amazon::S3 modules.

+ check_vmware_api.pl - Monitor a VMWare ESXI environment.  This plugin actually comes from the VMWare team but I made changes to allow it to bypass Nagios' embedded perl engine, because it doesn't work when run that way, and to work with a private SSL certificate. Orignal version at https://kb.op5.com/display/PLUGINS/Check+VMware+API+nagios+plugin

+ check_xmms2 - Check that a xmms2d daemon is actively playing music.

+ check_transmission - Monitor a transmission daemon, making sure that it's alive.  No fancy stats returned.  Requires File::Which module.

+ check_mpd - Check that MPD, a Music Player Daemon, is actively playing music.
