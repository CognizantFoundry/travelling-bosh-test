#!/bin/bash
set -e

# Figure out where this script is located.
SELFDIR="`dirname \"$0\"`"
ROOTDIR="`cd \"$SELFDIR\"/.. && pwd`"

cd $ROOTDIR
ls $ROOTDIR/lib/vendor/ruby/2.1.0/bin/* | xargs perl -pi -e "s{^#\!/usr/bin/env ruby}{#\!$ROOTDIR/lib/ruby/bin/ruby}"
