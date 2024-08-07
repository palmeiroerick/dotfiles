{pkgs, ...}: {
  console = {
    enable = true;
    useXkbConfig = true;
    font = "ter-132n";
    packages = with pkgs; [
      terminus_font
    ];
    colors = [
      "15161e"
      "f7768e"
      "9ece6a"
      "e0af68"
      "7aa2f7"
      "bb9af7"
      "7dcfff"
      "a9b1d6"
      "414868"
      "f7768e"
      "9ece6a"
      "c0caf5"
      "7aa2f7"
      "bb9af7"
      "7dcfff"
      "e0af68"
    ];
  };
}
