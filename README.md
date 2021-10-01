## Status

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-brightgreen.svg)](https://www.gnu.org/licenses/gpl-3.0)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/JavDomGom/auto-sslscan)
![Contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)

## Basic overview

**auto-sslscan** is a very simple Bash script tool with which you can run [sslscan](https://github.com/rbsec/sslscan) on batches of N domains from a file. It executes the requests of each batch in parallel, optimizing considerably the time it takes to scan all the domains from the file.

## Dependencies

Check has the following dependencies:

- [sslscan](https://github.com/rbsec/sslscan)

## How to run

```
~$ ./run.h opendns-top-domains.txt
```

### Input data

File `opendns-top-domains.txt` content:

```
google.com
facebook.com
doubleclick.net
google-analytics.com
akamaihd.net
...
```

**This file comes from [here](https://raw.githubusercontent.com/opendns/public-domain-lists/master/opendns-top-domains.txt).*

### Output data:

Console output:

```
00001/10000 google.com
00002/10000 facebook.com
00003/10000 doubleclick.net
00004/10000 google-analytics.com
00005/10000 akamaihd.net
...
```

It will automatically create an **out** directory in which a file will be generated for each domain with the details obtained by sslscan.

```bash
~$ ls -lrt out
-rw-rw-r-- 1 user group  9295 jan  1 00:00 google.com.txt
-rw-rw-r-- 1 user group 11272 jan  1 00:00 facebook.com.txt
-rw-rw-r-- 1 user group  8649 jan  1 00:00 doubleclick.net.txt
-rw-rw-r-- 1 user group 13059 jan  1 00:00 google-analytics.com.txt
-rw-rw-r-- 1 user group 20706 jan  1 00:00 akamaihd.net.txt
...
```

## Questions

If you have questions, please email inquiries to <JavDomGom@protonmail.com>.

If you don't understand the documentation, please tell us, so we can explain it better. The general idea is: if you need to ask for help, then something needs to be fixed so you (and others) don't need to ask for help. Asking questions helps us to know what needs to be documented, described, and/or fixed.
