{ ... }: {
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}