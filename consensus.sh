#!/bin/bash

$ONT --rest --enable-consensus --restport 30334 <<eof
$ONT_PASSPHRASE
eof >log &