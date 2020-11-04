with import <nixpkgs> {};

stdenv.mkDerivation rec {
	pname = "WinSur-dark-cursors";
	version = "";

	src = ./WinSur-dark-cursors.tar.gz;

	buildInputs = [];

	installPhase = ''
		mkdir -p $out/share/icons/$pname
		cp -a * $out/share/icons/$pname
	'';

	meta = with stdenv.lib; {
		description = "Cursor theme inspired by WinOS and based on capitaine-cursors.";
		homepage = "https://github.com/yeyushengfan258/WinSur-dark-cursors";
		license = licenses.gpl3;
		platforms = platforms.unix;
	};
}
