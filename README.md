# BQM (Bloodhound Query Merger)

![BQM logo](assets/logo-bqm.png)

> Tool to deduplicate custom BloudHound queries from different datasets and merge them in one `customqueries.json` file.

## Why?

[BloodHound][bh] allows you to store custom queries in `~/.config/bloodhound/customqueries.json`. Most pentester are then downloading a custom queries file from an external project. **The issue?** There are several projects offering very good queries files but they are all very different and complementary and BloodHound supports only one custom queries file. **The solution?** What if a tool would index all custom queries files, download them for you, remove duplicate queries and merge them all in one file you can use in BloodHound? That's what BQM offers, no more query file compromise, more AD compromise!

## Features

- Inventory many query datasets
- Fetch all query datasets
- Remove duplicate queries
- Merge all queries in one file

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

Example: bqm -o ~/.config/bloodhound/customqueries.json
```

Example:

```
$ bqm -o ~/.config/bloodhound/customqueries.json
[+] Fetching and merging datasets
[+] Removing duplicates
[+] All queries have been merged in /home/noraj/.config/bloodhound/customqueries.json
```

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

## Author

Made by Alexandre ZANNI ([@noraj](https://pwn.by/noraj/)) for [ACCEIS](https://www.acceis.fr/).

## Credits

Logo made with [DesignEvo](https://www.designevo.com/).

[bh]:https://github.com/BloodHoundAD/BloodHound