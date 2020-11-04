with import <nixpkgs> {};

stdenv.mkDerivation rec {
	pname = "ShoshieFonts";
	version = "";

	src = ./Fonts;

	buildInputs = [];

	installPhase = ''
		mkdir -p $out/share/fonts
		cp -a * $out/share/fonts
	'';

	meta = with stdenv.lib; {
		description = "Assorted fonts.";
		homepage = "none";
		license = licenses.gpl3;
		platforms = platforms.unix;
	};
}
