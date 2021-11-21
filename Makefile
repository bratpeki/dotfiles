
update:
	@ echo "Copying Neovim configs into repo..."
	@ [ -d ./nvim ] && rm -rf ./nvim ; \
	  mkdir nvim ; \
	  cp $${HOME}/.config/nvim/coc-settings.json ./nvim/ ; \
	  cp $${HOME}/.config/nvim/init.vim          ./nvim/ ; \
	  cp -r $${HOME}/.config/nvim/init-imports/  ./nvim/
	@ echo "Copying ViFM configs into repo..."
	@ [ -d ./vifm ] && rm -rf ./vifm ; \
	  mkdir vifm ; \
	  cp -r $${HOME}/.config/vifm/colors/        ./vifm ; \
	  cp -r $${HOME}/.config/vifm/scripts/       ./vifm ; \
	  cp $${HOME}/.config/vifm/vifmrc            ./vifm

