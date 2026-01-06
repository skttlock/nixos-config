# imported by ../configuration.nix
{ pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.joshuaf = {
    isNormalUser = true;
    description = "Joshua Foreman";
    extraGroups = [ "networkmanager" "wheel" "lp" ];
    packages = with pkgs; [
	# see ../programs/default.nix
    #  thunderbird
    ];
  };
}
