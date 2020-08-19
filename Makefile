##
##  The author disclaims copyright to this source code.  In place of
##  a legal notice, here is a blessing:
##
##    May you do good and not evil.
##    May you find forgiveness for yourself and forgive others.
##    May you share freely, not taking more than you give.
##

all: build


setup: setup-ada setup-aws

build: build-ada build-aws

clean: clean-ada clean-aws


setup-ada:
	tools/create-setup-adb-ada.sh

setup-aws:
	tools/create-setup-adb-aws.sh


build-ada: setup-ada
	gprbuild -k dk8543jq_ada.gpr

build-aws: setup-aws
	gprbuild -k dk8543jq_aws.gpr

build-test:
	gprbuild -k dk8543jq_test.gpr


clean-ada:
	gprclean -q dk8543jq_ada.gpr

clean-aws:
	gprclean -q dk8543jq_aws.gpr

clean-test:
	gprclean -q dk8543jq_test.gpr


verify:
	adactl -v -p dk8543jq_ada.gpr  -f ../../adacontrol/rules/verif.aru body_core/*adb
	adactl -v -p dk8543jq_aws.gpr  -f ../../adacontrol/rules/verif.aru body_aws/*adb
#	adactl -v -p dk8543jq_gnat.gpr -f ../../adacontrol/rules/verif.aru body_gnat/*adb

