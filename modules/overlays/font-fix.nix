final: prev:

let
  fonts = {
    aegan = {
      file = "Aegean.zip";
      hash = "sha256-3HmCqCMZLN6zF1N/EirQOPnHKTGHoc4aHKoZxFYTB34=";
    };
    aegyptus = {
      file = "Aegyptus.zip";
      hash = "sha256-SSAK707xhpsUTq8tSBcrzNGunCYad58amtCqAWuevnY=";
    };
    akkadian = {
      file = "Akkadian.zip";
      hash = "sha256-wXiDYyfujAs6fklOCqXq7Ms7wP5RbPlpNVwkUy7CV4k=";
    };
    assyrian = {
      file = "Assyrian.zip";
      hash = "sha256-CZj1sc89OexQ0INb7pbEu5GfE/w2E5JmhjT8cosoLSg=";
    };
    eemusic = {
      file = "EEMusic.zip";
      hash = "sha256-LxOcQOPEImw0wosxJotbOJRbe0qlK5dR+kazuhm99Kg=";
    };
    maya = {
      file = "Maya%20Hieroglyphs.zip";
      hash = "sha256-PAwF1lGqm6XVf4NQCA8AFLGU40N0Xsn5Q8x9ikHJDhY=";
    };
    symbola = {
      file = "Symbola.zip";
      hash = "sha256-TsHWmzkEyMa8JOZDyjvk7PDhm239oH/FNllizNFf398=";
    };
    textfonts = {
      file = "Textfonts.zip";
      hash = "sha256-7S3NiiyDvyYoDrLPt2z3P9bEEFOEZACv2sIHG1Tn6yI=";
    };
    unidings = {
      file = "Unidings.zip";
      hash = "sha256-WUY+Ylphep6WuzqLQ3Owv+vK5Yuu/aAkn4GOFXL0uQY=";
    };
  };
in
prev.lib.attrsets.mapAttrs (name: drv:
  drv.overrideAttrs (old: {
    src = prev.fetchzip {
      url = "https://web.archive.org/web/20221006174450/https://dn-works.com/wp-content/uploads/2020/UFAS-Fonts/${fonts.${name}.file}";
      stripRoot = false;
      inherit (fonts.${name}) hash;
    };
  }))
{
  inherit (prev)
    aegyptus
    akkadian
    assyrian
    eemusic
    maya
    symbola
    textfonts
    unidings
    ;
}
