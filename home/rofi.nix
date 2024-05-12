{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      rofi
      papirus-icon-theme
    ];

    file = {
      ".config/rofi/config.rasi".text = ''
        configuration {
          drun-display-format: "{icon} {name}";
          font: "JetBrainsMono Nerd Font Mono 14";
          modi: "window,drun";
          show-icons: true;
          icon-theme: "Papirus-Dark";

          drun {
            display-name: "App:";
          }

          window {
            display-name: "Window:";
          }
        }

        @theme "/dev/null"

        * {
          border: 2;
          margin: 0;
          padding: 0;
          spacing: 0;

          bg: #1a1b26;
          bg-alt: #232433;
          fg: #6a6f87;
          fg-alt: #a9b1d6;

          background-color: @bg;
          text-color: @fg;
        }

        window {
          transparency: "real";
          width: 700px;
        }

        mainbox {
          children: [inputbar, listview];
        }

        inputbar {
          background-color: @bg-alt;
          children: [prompt, entry];
        }

        entry {
          background-color: inherit;
          padding: 12px 3px;
        }

        prompt {
          background-color: inherit;
          padding: 12px;
        }

        listview {
          lines: 6;
        }

        element {
          children: [element-icon, element-text];
        }

        element-icon {
          padding: 10px 10px;
          size: 20px;
        }

        element-text {
          padding: 10px 0;
        }

        element-text selected {
          text-color: @fg-alt;
        }
      '';
    };
  };
}
