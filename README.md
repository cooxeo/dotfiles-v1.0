# Waybar Configuration

A minimal and modern **Waybar** configuration designed for Wayland compositors such as **Hyprland**.

## Preview

<p align="center">
  <img src="assets/img1.png" alt="Waybar Preview" width="100%">
</p>

---

## Requirements

Before using this configuration, make sure you have:

* Waybar
* A Wayland compositor (e.g. Hyprland)
* **JetBrains Mono Nerd Font**

---

## Font Installation

This configuration uses **JetBrains Mono Nerd Font** for proper icon rendering. Without it, many icons will appear as empty boxes or incorrect characters.

Visit the **Nerd Fonts** website and download **JetBrains Mono Nerd Font**:

https://www.nerdfonts.com/

After installing the font, restart Waybar (or log out and back in) so the changes take effect.

---

## Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/<your-repo>.git
```

Copy the configuration:

```bash
mkdir -p ~/.config/waybar
cp -r <your-repo>/* ~/.config/waybar/
```

Restart Waybar:

```bash
pkill waybar
waybar &
```

---

## Notes

* **JetBrains Mono Nerd Font is required** for the icons in this configuration.
* If icons appear broken or missing, verify that the font is installed and selected in your Waybar CSS.
* Some custom modules may require additional utilities depending on your setup.

---

## License

Feel free to use, modify, and share this configuration.

