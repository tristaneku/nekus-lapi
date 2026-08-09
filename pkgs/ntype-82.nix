{ pkgs, ... }:

pkgs.stdenvNoCC.mkDerivation {
  pname = "NType-82";
  version = "1.0";

  srcs = [
    ../assets/fonts/NType82-Headline.otf
    ../assets/fonts/NType82-Regular.otf
    ../assets/fonts/NType82-Mono.otf
  ];

  unpackPhase = "true";

  installPhase = ''
    mkdir -p $out/share/fonts/opentype
    cp ${../assets/fonts/NType82-Regular.otf} $out/share/fonts/opentype/
    cp ${../assets/fonts/NType82-Mono.otf} $out/share/fonts/opentype/
    cp ${../assets/fonts/NType82-Headline.otf} $out/share/fonts/opentype/
  '';
}
