##
##  The author disclaims copyright to this source code.  In place of
##  a legal notice, here is a blessing:
##
##    May you do good and not evil.
##    May you find forgiveness for yourself and forgive others.
##    May you share freely, not taking more than you give.
##

all: build test

build:
	gprbuild -k -p dk8543.gpr

test:
	gprbuild -k -p dk8543_test.gpr

clean:
	gprclean -q dk8543.gpr
	gprclean -q dk8543_test.gpr

setup:
	tools/create-setup-adb.sh
