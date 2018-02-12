# set the user installation path

if command -s opam > /dev/null
    set -gx CAML_LD_LIBRARY_PATH "$HOME/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs";
    set -gx OPAMUTF8MSGS "1";
    set -gx MANPATH "$HOME/.opam/system/man":(manpath);
    set -gx PERL5LIB "$HOME/.opam/system/lib/perl5";
    set -gx OCAML_TOPLEVEL_PATH "$HOME/.opam/system/lib/toplevel";
    set -gx PATH "$HOME/.opam/system/bin" $PATH;
else
    function opam -d "https://opam.ocaml.org/doc/Install.html"
        echo "Install https://opam.ocaml.org/doc/Install.html to use this plugin." > /dev/stderr
        return 1
    end
end
