##
##  The author disclaims copyright to this source code.  In place of
##  a legal notice, here is a blessing:
##
##    May you do good and not evil.
##    May you find forgiveness for yourself and forgive others.
##    May you share freely, not taking more than you give.
##

all: setup build test

setup: setup-core setup-aws

build: build-core build-aws

clean: clean-core clean-aws

build-core:
	gprbuild -k dk8543.gpr

build-aws:
	gprbuild -k dk8543_aws.gpr

test:
	gprbuild -k dk8543_test.gpr

clean-core:
	gprclean -q dk8543.gpr

clean-aws:
	gprclean -q dk8543_aws.gpr

clean-test:
	gprclean -q dk8543_test.gpr

setup-core:
	tools/create-setup-adb.sh

setup-aws:
	tools/create-aws-setup-adb.sh
