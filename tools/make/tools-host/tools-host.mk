TOOLS_HOST_VERSION:=2022-02-23
TOOLS_HOST_SOURCE:=tools-$(TOOLS_HOST_VERSION).tar.xz
TOOLS_HOST_SOURCE_SHA256:=3141c1198ffb3f01ef79a5f99580af85307b52ee45a6ef84e8536f35a2a7d88f
TOOLS_HOST_SITE:=@MIRROR/

TOOLS_HOST_DIR:=$(TOOLS_SOURCE_DIR)/tools-host-$(TOOLS_HOST_VERSION)


tools-host-source: $(DL_DIR)/$(TOOLS_HOST_SOURCE)
$(DL_DIR)/$(TOOLS_HOST_SOURCE): | $(DL_DIR)
	$(DL_TOOL) $(DL_DIR) $(TOOLS_HOST_SOURCE) $(TOOLS_HOST_SITE) $(TOOLS_HOST_SOURCE_SHA256)
#	$(info ERROR: File '$(DL_DIR)/$(TOOLS_HOST_SOURCE)' not found.)
#	$(info There is and will no download source be available.)
#	$(info Either disable 'FREETZ_HOSTTOOLS_DOWNLOAD' in menuconfig)
#	$(info or create the file by yourself with 'tools/own-hosttools'.)
#	$(error )

tools-host-unpacked: $(TOOLS_HOST_DIR)/.unpacked
$(TOOLS_HOST_DIR)/.unpacked: $(DL_DIR)/$(TOOLS_HOST_SOURCE) | $(TOOLS_SOURCE_DIR)
	mkdir -p $(TOOLS_HOST_DIR)
	tar -C $(TOOLS_HOST_DIR) $(VERBOSE) -xf $(DL_DIR)/$(TOOLS_HOST_SOURCE)
	touch $@

$(TOOLS_HOST_DIR)/.installed: $(TOOLS_HOST_DIR)/.unpacked
	cp -fa $(TOOLS_HOST_DIR)/tools $(FREETZ_BASE_DIR)/
	touch $@

tools-host-precompiled: $(TOOLS_HOST_DIR)/.installed


tools-host-clean:

tools-host-dirclean:
	$(RM) -r $(TOOLS_HOST_DIR)

tools-host-distclean: tools-host-dirclean $(patsubst %,%-distclean,$(filter-out $(TOOLS_BUILD_LOCAL),$(TOOLS)))

