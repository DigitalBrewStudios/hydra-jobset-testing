{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@{ self, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      flake.hydraJobs.aarch64-darwin = {
        test = builtins.derivation {
          name = "asdhaejhfdhfgjhfsjdfhsjkgbsvfbdhsbfvhsdfvsfdjsnf";
          system = "aarch64-darwin";
          builder = "/bin/sh";
          args = [
            "-c"
            "echo 'Hello from a raw dshfdfbsdjbfndshjfbdssafas fefbesdfdsfdshf!' > $out"
          ];
        };
      };
    };
}
