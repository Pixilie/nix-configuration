{ lib, ... }:

{
  options.useCache = lib.mkOption {
    type = lib.types.bool;
    default = false;
    description = "Whether to use cache or not";
  };
}
