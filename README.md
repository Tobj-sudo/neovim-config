<div align='center'>
  <p>
    <a href="https://github.com/Tobj-sudo/neovim-config/blob/main/LICENCE">
      <img alt="GitHub License" src="https://img.shields.io/github/license/Tobj-sudo/neovim-config?style=flat&logo=unlicense&logoColor=black&labelColor=1e66f5&color=bf24ba">
    </a>
    <a href="https://github.com/neovim/neovim">
      <img alt="Neovim Logo" src="https://img.shields.io/badge/%3E%3D0.12.0-40a02b?logo=neovim&label=neovim&labelColor=1e66f5">
    </a>
  </p>
   <p>
     <div>My personal Neovim configuration.</div>
   </p>
</div>

## Installation

Make a backup of your current Neovim files:

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone this repository:

```bash
git clone https://github.com/Tobj-sudo/neovim-config.git ~/.config/nvim
```

Install the plugins:

```bash
nvim -c ':qa!' --headless >/dev/null 2>&1
```

Boot up Neovim:

```bash
nvim
```

...and enjoy 

