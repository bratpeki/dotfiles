
update:
	@ echo "Copying Neovim configs into repo..."
		@ [ -d ./config/nvim ] && rm -rf ./config/nvim                                     ; \
		  mkdir -p config/nvim                                                             ; \
		  cp    $${HOME}/.config/nvim/coc-settings.json ./config/nvim/                     ; \
		  cp    $${HOME}/.config/nvim/init.vim          ./config/nvim/                     ; \
		  cp -r $${HOME}/.config/nvim/init-imports/     ./config/nvim/
	@ echo "Copying ViFM configs into repo..."
		@ [ -d ./config/vifm ] && rm -rf ./config/vifm                                     ; \
		  mkdir -p config/vifm                                                             ; \
		  cp -r $${HOME}/.config/vifm/colors/           ./config/vifm/                     ; \
		  cp -r $${HOME}/.config/vifm/scripts/          ./config/vifm/                     ; \
		  cp    $${HOME}/.config/vifm/vifmrc            ./config/vifm/
	@ echo "Copying zathurarc into repo..."
		@ [ -d ./config/zathura ] && rm -rf ./config/zathura                               ; \
		  mkdir -p config/zathura                                                          ; \
		  cp $${HOME}/.config/zathura/zathurarc         ./config/zathura/
	@ echo "Done!"

install:
	@ echo "Installing Neovim configs locally..."
		@ [ -d $${HOME}/.config/nvim ] && rm -rf $${HOME}/.config/nvim                     ; \
		  mkdir -p $${HOME}/.config/nvim                                                   ; \
		  cp    ./config/nvim/coc-settings.json         $${HOME}/.config/nvim/             ; \
		  cp    ./config/nvim/init.vim                  $${HOME}/.config/nvim/             ; \
		  cp -r ./config/nvim/init-imports/             $${HOME}/.config/nvim/
	@ echo "Installing ViFM configs locally..."
		@ [ -d $${HOME}/.config/vifm ] && rm -rf        $${HOME}/.config/vifm              ; \
		  mkdir -p $${HOME}/.config/vifm                                                   ; \
		  cp -r ./config/vifm/colors/                   $${HOME}/.config/vifm/             ; \
		  cp -r ./config/vifm/scripts/                  $${HOME}/.config/vifm/             ; \
		  cp    ./config/vifm/vifmrc                    $${HOME}/.config/vifm/
	@ echo "Installing zathurarc locally..."
		@ [ -d $${HOME}/.config/zathura ] && rm -rf $${HOME}/.config/zathura               ; \
		  mkdir -p $${HOME}/.config/zathura                                                ; \
		  cp ./config/zathura/zathurarc                 $${HOME}/.config/zathura/zathurarc
	@ echo "Done!"


