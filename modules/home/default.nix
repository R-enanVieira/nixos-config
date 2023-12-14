{inputs, ...}: {
  imports =
       [(import ./waybar)]
    ++ [(import ./firefox)]
    ++ [(import ./vscode)]
    ++ [(import ./hyprland)]
    ++ [(import ./gaming)]
    ++ [(import ./git)]
    ++ [(import ./btop)]
    ++ [(import ./bat)]
    ++ [(import ./cava)]
    ++ [(import ./kitty)]
    ++ [(import ./aseprite)]        # pixel art editor
    ++ [(import ./audacious)]       # music player
    ++ [(import ./unity)]
    ++ [(import ./rider)]           # C# JetBrain editor
    # ++ [(import ./discord)]
    ++ [(import ./swaylock)]
    ++ [(import ./wofi)]
    ++ [(import ./zsh)]
    ++ [(import ./gtk)]
    ++ [(import ./mako)]            # notification deamon
    ++ [(import ./scripts)]         # personal scripts
    ++ [(import ./starship)]
    ++ [(import ./nvim)]
    ++ [(import ./package)];
}
