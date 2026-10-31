# sfedorium

The [Fedorium Linux](https://github.com/snova5/fedorium) logo, spinning in 3D in your terminal — like the classic spinning donut, but with a fedora.

Pure Python 3, no packages needed. Works in any terminal with true-colour support (Konsole, GNOME Terminal, Kitty, Alacritty, VSCodium's terminal, Windows Terminal).

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/snova5/sfedorium/main/install.sh | sh
```

or from a clone:

```bash
git clone https://github.com/snova5/sfedorium.git
cd sfedorium
./install.sh
```

## Run

```bash
sfedorium
```

Press **Ctrl+C** to stop. Make the terminal bigger for more detail.

## Customise

Open `~/.local/bin/sfedorium` and change the settings at the top: `SPIN_SPEED`, `STEP` (detail), `CHARS` and `COLORS`. For the purple Coding look, use `(74, 42, 138)` and `(154, 140, 245)`.

## Uninstall

```bash
rm ~/.local/bin/sfedorium
```

## License

MIT
