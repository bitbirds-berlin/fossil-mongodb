# Fossil MongoDB container with backup scripts

For reasons™ that I don't want to explain, we're forced to run ancient MongoDB versions for a client.

The idea is, that we build a MongoDB container with two convienence scripts to both backing up the data, and to prune old backups. Very boring technology, but
makes this endeavour a bit more bearable.
