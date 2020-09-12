MACS := $(wildcard imo2019/*.mac napoleon/*.mac)

V := @
Q := $(V:1=)

check: $(MACS)

%.mac: FORCE
	@echo "  CHECK   $@"
	$(Q)maxima -b $@ > /dev/null

FORCE:

.PHONY: check FORCE
