# Package

version       = "0.1.0"
author        = "GabrielLasso"
description   = "Escolhe um elemento aleatorio de uma lista"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["random_from_list"]

# Dependencies

requires "nim >= 1.2.6"
requires "wnim >= 0.11.2"