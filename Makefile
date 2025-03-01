base: build
	@rm -rf ./KiCad/KiCad.AppDir ./KiCad/kicad-packages3d*.deb
	@sed -i '/kicad-packages3d/c\#    - kicad-packages3d' recipes/KiCad.yml
	@../pkg2appimage-*-x86_64.AppImage recipes/KiCad.yml
	@mv ./out ./build/$@

3d: build
	@sed -i '/kicad-packages3d/c\    - kicad-packages3d' recipes/KiCad.yml
	@../pkg2appimage-*-x86_64.AppImage recipes/KiCad.yml
	@mv ./out ./build/$@
	@sed -i '/kicad-packages3d/c\#    - kicad-packages3d' recipes/KiCad.yml

build:
	@mkdir -p $@

.phony: clean
clean:
	rm -rf ./out/*.AppImage ./KiCad/KiCad.AppDir ./build
