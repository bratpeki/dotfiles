
update:
	@ echo "Copying Neovim configs into repo..."
		@ [ -d ./config/nvim ] && rm -rf ./config/nvim                    ; \
		  mkdir -p config/nvim                                            ; \
		  cp    $${HOME}/.config/nvim/coc-settings.json ./config/nvim/    ; \
		  cp    $${HOME}/.config/nvim/init.vim          ./config/nvim/    ; \
		  cp -r $${HOME}/.config/nvim/init-imports/     ./config/nvim/
	@ echo "Copying ViFM configs into repo..."
		@ [ -d ./config/vifm ] && rm -rf ./config/vifm                    ; \
		  mkdir -p config/vifm                                            ; \
		  cp -r $${HOME}/.config/vifm/colors/           ./config/vifm/    ; \
		  cp -r $${HOME}/.config/vifm/scripts/          ./config/vifm/    ; \
		  cp    $${HOME}/.config/vifm/vifmrc            ./config/vifm/
	@ echo "Copying zathurarc into repo..."
		@ [ -d ./config/zathura ] && rm -rf ./config/zathura              ; \
		  mkdir -p config/zathura                                         ; \
		  cp $${HOME}/.config/zathura/zathurarc         ./config/zathura/
	@ echo "Done!"

