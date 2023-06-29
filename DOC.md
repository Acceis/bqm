## Options

- `-i`, `--local-sets`: if several items are provided, they must be comma (`,`) separated. Items can be either a Bloodhound custom query file, a bqm or a folder. In case of a bqm query sets file (similar to `query-sets.json`) or a folder, bqm will try to parse all JSON files inside it, so the folder should not contain other types of JSON files.
- `--ignore-default`: ignore the default `query-sets.json`. It's useful for **offline** usage or if you don't want the default data sets.