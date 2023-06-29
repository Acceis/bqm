# BQM (Bloodhound Query Merger)

[![GitHub forks](https://img.shields.io/github/forks/Acceis/bqm)](https://github.com/Acceis/bqm/network)
[![GitHub stars](https://img.shields.io/github/stars/Acceis/bqm)](https://github.com/Acceis/bqm/stargazers)
[![GitHub license](https://img.shields.io/github/license/Acceis/bqm)](https://github.com/Acceis/bqm/blob/master/LICENSE)
[![Rawsec's CyberSecurity Inventory](https://inventory.raw.pm/img/badges/Rawsec-inventoried-FF5050_flat.svg)](https://inventory.raw.pm/tools.html#BQM)

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/Acceis/bqm/ruby.yml?branch=master)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/Acceis/bqm)

![BQM logo](assets/logo-bqm.png)

> Tool to deduplicate custom BloudHound queries from different datasets and merge them in one `customqueries.json` file.

## Why?

[BloodHound][bh] allows you to store custom queries in `~/.config/bloodhound/customqueries.json`. Most pentester are then downloading a custom queries file from an external project. **The issue?** There are several projects offering very good queries files but they are all very different and complementary and BloodHound supports only one custom queries file. **The solution?** What if a tool would index all custom queries files, download them for you, remove duplicate queries and merge them all in one file you can use in BloodHound? That's what BQM offers, no more query file compromise, more AD compromise!

## Features

- Inventory many query datasets
- Fetch all query datasets
- Remove duplicate queries
- Merge all queries in one file
- List all available datasets
- Merge existing customqueries.json to the output
- Merge local custom queries files as well as remote ones
- Merge local bqm query sets file
- Offline support
- Folder support

## Install

No install, just clone the repository and run! No dependencies, just pure Ruby.

```bash
git clone https://github.com/Acceis/bqm.git && cd bqm
ruby bin/bqm -h
```

[![Packaging status](https://repology.org/badge/vertical-allrepos/bqm.svg)](https://repology.org/project/bqm/versions)

See [INSTALL](INSTALL.md) for options with package managers.

## Usage

```
Usage: bqm [options]
    -o, --output-path PATH           Path where to store the query file
    -l, --list                       List available datasets
    -i FILE,DIRECTORY,...,           Local custom queries files/directories
        --local-sets
        --ignore-default             Ignore the default query-sets.json
    -v, --verbose                    Display the name of the merged files/sets

Example: bqm -o ~/.config/bloodhound/customqueries.json
Example: bqm -o /tmp/customqueries.json -i /tmp/a.json,/home/user/folder
```

Example:

```
$ bqm -o ~/.config/bloodhound/customqueries.json
[+] The output path /home/noraj/.config/bloodhound/customqueries.json already exists
[?] Do you want to overwrite it? [y/n]
y
[?] What to do with the existing queries? (merge / discard) [m/d]
d
[+] Fetching and merging datasets
[+] Removing duplicates
[+] All queries have been merged in /home/noraj/.config/bloodhound/customqueries.json
```

See [DOC](DOC.md) for more explanation about some options.

## Datasets

Datasets used by BQM are referenced in `data/query-sets.json`. They are coming from the following projects:

- [ly4k/Certipy](https://github.com/ly4k/Certipy)
- [CompassSecurity/BloodHoundQueries](https://github.com/CompassSecurity/BloodHoundQueries)
- [hausec/Bloodhound-Custom-Queries](https://github.com/hausec/Bloodhound-Custom-Queries)
- [awsmhacks/awsmBloodhoundCustomQueries](https://github.com/awsmhacks/awsmBloodhoundCustomQueries)
- [porterhau5/BloodHound-Owned](https://github.com/porterhau5/BloodHound-Owned)
- [ZephrFish/Bloodhound-CustomQueries](https://github.com/ZephrFish/Bloodhound-CustomQueries)
- [Scoubi/BloodhoundAD-Queries](https://github.com/Scoubi/BloodhoundAD-Queries)
- [InfamousSYN/bloodhound-queries](https://github.com/InfamousSYN/bloodhound-queries)
- [zeronetworks/BloodHound-Tools](https://github.com/zeronetworks/BloodHound-Tools)
- [egypt/customqueries](https://github.com/egypt/customqueries)
- [trustedsec/CrackHound](https://github.com/trustedsec/CrackHound)
- [aress31/bloodhound-utils](https://github.com/aress31/bloodhound-utils)
- [ThePorgs/Exegol-images](https://github.com/ThePorgs/Exegol-images/blob/main/sources/bloodhound/customqueries.json)

## Author

Made by Alexandre ZANNI ([@noraj](https://pwn.by/noraj/)) for [ACCEIS](https://www.acceis.fr/).

## Credits

Logo made with [DesignEvo](https://www.designevo.com/).

[bh]:https://github.com/BloodHoundAD/BloodHound
