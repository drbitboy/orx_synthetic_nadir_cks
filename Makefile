### Makefile to create SPK for synthetic body 9101955, offset sunward
### from Bennu

RANGES=000 025 050 075 100 125 150 175 200 225
BSPS=$(RANGES:%=kernels/%m_9101955.bsp)
PINPOINTS=$(BSPS:%.bsp=%.pinpoint)

CKNADIRISH=kernels/orx_nadirish.bc
CKCOMMS=kernels/orx_comms.bc

all: $(BSPS) $(CKNADIRISH) $(CKCOMMS)

test: all
	python nadirish_ck.py test

$(CKNADIRISH) $(CKCOMMS): nadirish_ck.py
	python $< create

%.bsp: %.pinpoint kernels/base_9101955.pinpoint
	@$(RM) $@
	pinpoint -def $< -spk $@

%m_9101955.pinpoint: kernels/xxxm_9101955_template.pinpoint
	sed '/^ALT_BENNU_XYZ *=/s/= ( xxx 0 0 )/= ( 0.$(@:kernels/%m_9101955.pinpoint=%) 0 0 )/' < $< > $@

tar: all
	tar zcvf kernels.tar.gz kernels/*.t* kernels/*.bc kernels/*55.bsp

clean:
	$(RM) $(PINPOINTS) $(BSPS) $(CKNADIRISH) $(CKCOMMS)
