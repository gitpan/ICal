DESIGNDATA = ../../../design-data
SCRIPTS = ../../../scripts

all: derivedprop.pm derivedcomp.pm derivedparam.pm derivedval.pm

derivedprop.pm: $(SCRIPTS)/mkderivedproperties.pl  $(DESIGNDATA)/prop-to-value.txt ${DESIGNDATA}/value-c-types.txt
	$(SCRIPTS)/mkderivedproperties.pl -p $(DESIGNDATA)/prop-to-value.txt ${DESIGNDATA}/value-c-types.txt > derivedprop.pm

derivedcomp.pm: $(DESIGNDATA)/components.txt $(SCRIPTS)/mkderivedcomponents.pl
	$(SCRIPTS)/mkderivedcomponents.pl -p $(DESIGNDATA)/components.txt > derivedcomp.pm


derivedparam.pm: $(DESIGNDATA)/param-c-types.txt $(SCRIPTS)/mkderivedparameters.pl
	$(SCRIPTS)/mkderivedparameters.pl -p $(DESIGNDATA)/param-c-types.txt > derivedparam.pm

derivedval.pm: $(DESIGNDATA)/value-c-types.txt $(SCRIPTS)/mkderivedvalues.pl
	$(SCRIPTS)/mkderivedvalues.pl -p $(DESIGNDATA)/value-c-types.txt > derivedval.pm

