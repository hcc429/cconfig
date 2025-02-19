

CUR_DIR := $(CURDIR)


NVIM_SRC := $(CUR_DIR)/nvim
NVIM_DST := ~/.config/


TMUX_SRC := $(CUR_DIR)/tmux.conf
TMUX_DST := ~/.tmux.conf

nvim.link:
	@echo "create symbolic link: $(NVIM_DST) -> $(NVIM_SRC)"
	@ln -snfF $(NVIM_SRC) $(NVIM_DST)

tmux.link:
	@echo "create symbolic link: $(TMUX_SRC) -> $(TMUX_DST)"
	@ln -snf $(TMUX_SRC) $(TMUX_DST)
