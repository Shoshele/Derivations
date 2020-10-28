with import <nixpkgs> {}; #{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
	pname = "sierrabreezeenhanced";
	version = "V0.9.5";

	src = fetchFromGitHub {
		owner = "kupiqu";
		repo = pname;
		rev = version;
		sha256 = "10rhs9sd5321wzy2clxqmghbxqs3za57w9cp4clzn8ddl6hiqf97";
	};

	buildInputs = [ cmake sudo extra-cmake-modules plasma5.kdecoration qt5.qtdeclarative qt5.qtx11extras plasma-desktop libsForQt5.kcoreaddons libsForQt5.kguiaddons libsForQt5.kconfigwidgets libsForQt5.kwindowsystem libsForQt5.kiconthemes ];

	installPhase = ''
		cmake .. -DCMAKE_INSTALL_PREFIX=$out -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
		make
		make install
	'';

	meta = with stdenv.lib; {
		description = "A fork of Breeze theme that resembles Max OS X.";
		homepage = "https://github.com/kupiqu/sierrabreezeenhanced";
		license = licenses.gpl3;
    platforms = platforms.unix;
	};
}
