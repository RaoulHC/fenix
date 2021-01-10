f: _: super:
let fenix = f super;
in {
  rust-nightly = {
    inherit (fenix) minimal default complete latest combine targets;
  };
  rust-analyzer-nightly = fenix.rust-analyzer;
  vscode-extensions = super.vscode-extensions // {
    matklad = super.vscode-extensions.matklad // {
      rust-analyzer-nightly = fenix.rust-analyzer-vscode-extension;
    };
  };
}