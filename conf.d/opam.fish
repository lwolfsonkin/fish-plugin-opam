# set the user installation path

if command -s opam > /dev/null
    set -l switch (opam switch show)
    set -gx CAML_LD_LIBRARY_PATH "$HOME/.opam/$switch/lib/stublibs:/usr/local/lib/ocaml/stublibs";
    set -gx OPAMUTF8MSGS "1";
    set -ge MANPATH
    set -gx MANPATH "$HOME/.opam/$switch/man":(manpath);
    set -gx PERL5LIB "$HOME/.opam/$switch/lib/perl5";
    set -gx OCAML_TOPLEVEL_PATH "$HOME/.opam/$switch/lib/toplevel";
    set -gx PATH "$HOME/.opam/$switch/bin" $PATH;
else
    function opam -d "https://opam.ocaml.org/doc/Install.html"
        echo "Install https://opam.ocaml.org/doc/Install.html to use this plugin." > /dev/stderr
        return 1
    end
end
