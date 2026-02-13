# Check if we are running in GitHub Actions
ifeq ($(GITHUB_ACTIONS), true)
	PKG2APP = ./pkg2appimage_extracted/AppRun
else
	# Your existing Docker path (assumes it's in the parent dir of the project)
	PKG2APP = ../pkg2appimage-*-x86_64.AppImage
endif

base: build
	@rm -rf ./KiCad/KiCad.AppDir ./KiCad/kicad-packages3d*.deb
	@sed -i '/kicad-packages3d/c\#    - kicad-packages3d' recipes/KiCad.yml
	@$(PKG2APP) recipes/KiCad.yml
	# Move the specific AppImage file to the root of the project
	@mv out/*.AppImage .
	@rm -rf ./out

3d: build
	@sed -i '/kicad-packages3d/c\    - kicad-packages3d' recipes/KiCad.yml
	@$(PKG2APP) recipes/KiCad.yml
	# Move the specific AppImage file to the root of the project
	@mv out/*.AppImage .
	@rm -rf ./out
	@sed -i '/kicad-packages3d/c\#    - kicad-packages3d' recipes/KiCad.yml

build:
	@mkdir -p $@

.PHONY: clean
clean:
	rm -rf ./*.AppImage ./KiCad/KiCad.AppDir ./build ./out
