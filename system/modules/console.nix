{ theme, ... }:

let
    colors = import (../../assets/themes + "/${theme}/colors.nix");
in
{
    console = {
        colors = [
            colors.background_dim.hexNoHash
            colors.red.hexNoHash
            colors.green.hexNoHash
            colors.yellow.hexNoHash
            colors.blue.hexNoHash
            colors.purple.hexNoHash
            colors.aqua.hexNoHash
            colors.foreground.hexNoHash
            colors.gray_0.hexNoHash
            colors.orange.hexNoHash
            colors.green.hexNoHash
            colors.yellow.hexNoHash
            colors.blue.hexNoHash
            colors.purple.hexNoHash
            colors.aqua.hexNoHash
            colors.foreground.hexNoHash
        ];
    };
}
