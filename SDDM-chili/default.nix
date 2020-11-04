with import <nixpkgs> {};

stdenv.mkDerivation rec {
	pname = "kde-plasma-chili";
	version = "0.5.5";

	src = fetchFromGitHub {
		owner = "MarianArlt";
		repo = pname;
		rev = version;
		sha256 = "17pkxpk4lfgm14yfwg6rw6zrkdpxilzv90s48s2hsicgl3vmyr3x";
	};

	buildInputs = [];

	installPhase = ''
		mkdir -p $out/share/sddm/themes/plasma-chili
		cp -a * $out/share/sddm/themes/plasma-chili
	'';

	meta = with stdenv.lib; {
		description = "Login screen for SDDM.";
		homepage = "https://github.com/MarianArlt/kde-plasma-chili";
		license = licenses.gpl3;
		platforms = platforms.unix;
	};
}
