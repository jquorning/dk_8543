##
##  The author disclaims copyright to this source code.  In place of
##  a legal notice, here is a blessing:
##
##    May you do good and not evil.
##    May you find forgiveness for yourself and forgive others.
##    May you share freely, not taking more than you give.
##

all: build


setup: setup-core setup-aws

build: build-core build-aws

clean: clean-core clean-aws


setup-core:
	tools/create-setup-adb-core.sh

setup-aws:
	tools/create-setup-adb-aws.sh


build-core: setup-core
	gprbuild -k dk8543_core.gpr

build-aws: setup-aws
	gprbuild -k dk8543_aws.gpr

build-test:
	gprbuild -k dk8543_test.gpr


clean-core:
	gprclean -q dk8543_core.gpr

clean-aws:
	gprclean -q dk8543_aws.gpr

clean-test:
	gprclean -q dk8543_test.gpr


verify:
	adactl -v -p dk8543_core.gpr -f ../../adacontrol/rules/verif.aru body_core/*adb
	adactl -v -p dk8543_aws.gpr  -f ../../adacontrol/rules/verif.aru body_aws/*adb
#	adactl -v -p dk8543_gnat.gpr -f ../../adacontrol/rules/verif.aru body_gnat/*adb

