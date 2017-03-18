include $(MAKE_ROOT)/settings.mk

OPENVR_BUILD_DIR=build/$(RADIANT_BUILD_PLATFORM)
OPENVR_FLAGS=-DCMAKE_INSTALL_PREFIX:PATH=install

.PHONY: default
default: configure build
	echo done

build: configure
	$(MSBUILD) $(OPENVR_BUILD_DIR)/INSTALL.vcxproj -p:configuration=debug
	$(MSBUILD) $(OPENVR_BUILD_DIR)/INSTALL.vcxproj -p:configuration=release

configure:
	-mkdir -p $(OPENVR_BUILD_DIR)
	$(CMAKE) -G"$(RADIANT_CMAKE_GENERATOR)" -B$(OPENVR_BUILD_DIR) -H. $(OPENVR_FLAGS)

.PHONY: clean
clean:
	rm -rf build/x32
	rm -rf build/x64

