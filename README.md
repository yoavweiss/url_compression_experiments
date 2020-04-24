# URLs: How do they compress? Do they compress? Let's find out! 

This repo is an extremely simple experiment to compress URLs (using GZIP and Brotli) and report the results of that compression operation.

Simply run `./generate_urls.sh` and it will output the results.

## What does the script do?
The script looks at the list of package URLs in packages.txt (taken from [npm.js' most depended packages](https://www.npmjs.com/browse/depended)).
It then installs those modules, gathers a list of their URLs, compresses them and outputs the per URL results.

