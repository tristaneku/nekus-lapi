{ stdenv }:

stdenv.mkDerivation {
  name = "SoundCloud";

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
    mkdir -p $out/bin
    cat > $out/bin/soundcloud <<'EOF'
#!/usr/bin/env bash
flatpak run com.google.Chrome --app=https://soundcloud.com "$@"
EOF
    chmod +x $out/bin/soundcloud

    mkdir -p $out/share/applications
    cat > $out/share/applications/soundcloud.desktop <<'EOF'
[Desktop Entry]
Name=SoundCloud
Exec=soundcloud %u
Terminal=false
Type=Application
Icon=com.google.Chrome
Categories=Network;WebBrowser;
EOF
  '';
}
