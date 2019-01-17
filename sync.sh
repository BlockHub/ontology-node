#!/bin/bash

$ONT --rest --restport 30334 <<eof
$ONT_PASSPHRASE
eof >log &