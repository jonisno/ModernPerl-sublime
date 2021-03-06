# A LOT OF DIFFERENT STUFF INTERPOLATES INTO PERL STRINGS OMFG

# Named Variables
"$foo"                                     #"    $foo
"$foo:"                                    #"    $foo . ":"
"$foo::"                                   #"    $foo::
"$foo:::"                                  #"    $foo:: . ":"
"$foo::::"                                 #"    $foo::::
"$foo:::::"                                #"    $foo:::: . ":"
"$::"                                      #"    $::
"$:::"                                     #"    $:: . ":"
"$::::"                                    #"    $::::
"$:::::"                                   #"    $:::: . ":"
"$::foo"                                   #"    $::foo
"$:::foo"                                  #"    $:: . ":foo"
"$::::foo"                                 #"    $::::foo
"$:::::foo"                                #"    $:::: . ":foo"
"$::::foo::::"                             #"    $::::foo::::
"$::::fod::od::::"                         #"    $::::foo::od::::
"$::::fod::od:::::ad"                      #"    $::::foo::od:::: . ":ad"
"$'asd"                                    #"    $'asd
"$'asd::fad"                               #"    $'asd::fad
"$foo'asd"                                 #"    $foo'asd
"$foo'asd'ag"                              #"    $foo'asd'ag
"$::'foo"                                  #"    $::'foo
"$::foo::'asd'ag::"                        #"    $::foo::'asd'ag::
"$'foo::'as'dd::::'ag'd"                   #"    $'foo::'as'dd::::'ag'd
"$::::'fo'o::::'asd::aa'g::::"             #"    $::::'fo'o::::'asd::aa'g::::
"$::::::foo::asd::::aa'a'ag:::::as'd"      #"    $::::::foo::asd::::aa'a'ag:::: . ":as'd"
"$foo'"                                    #"    $foo . "'"
"$foo'::"                                  #"    $foo . "'::"
"$foo'::as"                                #"    $foo . "'::as"
"$foo::'::as"                              #"    $foo:: . "'::as"
"$::'"                                     #"    $:: . "'"
"$::'::"                                   #"    $:: . "'::"
"$::'::as"                                 #"    $:: . "'::as"
"$::foo'::as"                              #"    $::foo . "'::as"
"$::::'fo'o::::'asd::aa'::g::::"           #"    $::::'fo'o::::'asd::aa . "'::g::::"
"$::::::foo::asd::::aa'a'::ag:::::as'd"    #"    $::::::foo::asd::::aa'a . "'::ag:::::as'd"
"${asd}"                                   #}"   ${asd}
"${ asd}"                                  #}"   ${ asd}
"${asd }"                                  #}"   ${asd }
"${ asd  }"                                #}"   ${ asd  }
"${::}"                                    #}"   ${::}
"${::'a}"                                  #}"   ${::'a}
"${a'dqq}"                                 #}"   ${a'dqq}
"${  ::::'fo'o::::'asd::aa'g::::}"         #}"   ${  ::::'fo'o::::'asd::aa'g::::}
"${asd"                                    #}"   ${<asd>
"$asd}"                                    #}"   $asd . "}"
"${:::}"                                   #}"   ${<:::>}
"${:a}"                                    #}"   ${<:a>}
"${a:}"                                    #}"   ${<a:>}
"${::a:::}"                                #}"   ${<::a:::>}
"${'a}"                                    #}"   ${<'a>}
"${'::}"                                   #}"   ${<'::>}
"${a'}"                                    #}"   ${<a'>}
"${::'}"                                   #}"   ${<::'>}
"${a'::}"                                  #}"   ${<a'::>}
"${::::::foo::asd::::aa'a'::ag:::::as'd}"  #}"   ${<::::::foo::asd::::aa'a'::ag:::::as'd>}
"${foo bar}"                               #}"   ${<foo bar>}
"${foo ::}"                                #}"   ${<foo ::>}
"${:: bar}"                                #}"   ${<:: bar>}
"${:: ::}"                                 #}"   ${<:: ::>}
"${::: :}"                                 #}"   ${<::: :>}
"${: :::}"                                 #}"   ${<: :::>}
"${f\}}"                                   #}"   ${<f\>} . "}"
"${\f}}"                                   #}"   ${<\f>} . "}"
"${foo$}}"                                 #}"   ${<foo$}>}
"$ foo"
"$ foo bar"
"$  'asd::fad "
"$  'asd: :fad "
"$   ::asd "
"$  ::as'd::'asd'asd::'d::s'ds:: "
"$ ::as'd::'asd'asd: :'d::s'ds:: "
"$ {foo}"
"$ {foo }bar"
"$  {'asd::fad} "
"$  {'asd}: :fad "
"$   { ::asd} "
"$  {  ::as'd::'asd'asd::'d::s'ds::  } "
"$ {::as'd::'asd'asd }::'d::s'ds:: "
"$ {::as'd::'asd'asd}'d::s'ds:: "
"${foo}"
"$ { foo }"
"${3}"
"$ { 8 }"
"as$d{} ${ foo } doo ${ 3 } yup "
"$\{foo}"
"${foo\}"
"$\{foo\}"
"\${foo}"
qq{${foo}}
qq{$ { foo }}
qq{${3}}
qq{$ { 90 }}
qq{as$d{} ${ foo } doo ${ 3 } yup }
qq{$\{foo}
qq{${foo\}}}
qq{$\{foo\}}
qq{\${foo}}
qq{\$\{foo\}}
qq{{${foo} $ {foo}}}
qq{{$\{foo\} $ \{foo\}}}

# Punctuation Variables
"$$"          #"     $$
"$:"          #"     $:
"$:a"         #"     $: . "a"
"$:'a"        #"     $: . "'a"
"$'"          #"     $'
"$'a"         #"     $' . "a"
"$':"         #"     $' . ":"
"$''"         #"     $' . "'"
"$'::a"       #"     $' . "::a"
"$\"          #"     $\
"$\a"         #"     $\ . "a"
"$\:"         #"     $\ . ":"
"$\\""        #"     $\ . "\""
"$\::a"       #"     $\ . "::a"
"$"           #"#    $
"$ "          #"#    $
"${"          #}"    ${<>
"${ "         #}"    ${< >
"$}"          #"     $}
"$}:"         #"     $} . ":"
"$}::a"       #"     $} . "::a"
"$}'a"        #"     $} . "'a"
"$["          #]"    $[
"$[:"         #"     $[ . ":"
"$[::a"       #"     $[ . "::a"
"$['a"        #"     $[ . "'a"
"$]"          #"     $]
"$]:"         #"     $] . ":"
"$]::a"       #"     $] . "::a"
"$]'a"        #"     $] . "'a"
"${$}}"       #}"    ${$} . "}"
"${$}:"       #}"    ${$} . ":"
"${$}::a"     #}"    ${$} . "::a"
"${$}'a"      #}"    ${$} . "'a"
"${:}}"       #}"    ${:} . "}"
"${:}:"       #}"    ${:} . ":"
"${:}::a"     #}"    ${:} . "::a"
"${'}}"       #}"    ${'} . "}"
"${'}'a"      #}"    ${'} . "'a"
"${\}}"       #}"    ${\} . "}"
"${\}:"       #}"    ${\} . ":"
"${\}::a"     #}"    ${\} . "::a"
"${\}'a"      #}"    ${\} . "'a"
"${{}}"       #}"    ${{} . "}"
"${{}:"       #}"    ${{} . ":"
"${{}::a"     #}"    ${{} . "::a"
"${{}'a"      #}"    ${{} . "'a"
"${}}}"       #}"    ${}} . "}"
"${}}:"       #}"    ${}} . ":"
"${}}::a"     #}"    ${}} . "::a"
"${}}'a"      #}"    ${}} . "'a"
"${[}}"       #]}"   ${[} . "}"
"${[}:"       #]}"   ${[} . ":"
"${[}::a"     #]}"   ${[} . "::a"
"${[}'a"      #]}"   ${[} . "'a"
"${]}}"       #}"    ${]} . "}"
"${]}:"       #}"    ${]} . ":"
"${]}::a"     #}"    ${]} . "::a"
"${]}'a"      #}"    ${]} . "'a"
"${ $}}"      #}"    ${ $} . "}"
"${: }}"      #}"    ${: } . "}"
"${ ' }}"     #}"    ${ ' } . "}"
"${  \  }}"   #}"    ${  \  } . "}"
"${  {}}"     #}"    ${  {} . "}"
"${}  }}"     #}"    ${}  }  . "}"
"$ $"
"$  :a"
"$   ':"
"$    \::a"
"$   }'a"
"$  [ ad"
"$ ]${as}"
"$ {$}"
"$  {:}a"
"$   {'}:"
"$  {\}-"
"$   {{}>"
"$  {} }]"
"$   { [}]"
"$ {   ] }_"

# Caret Variables
"$^"                      #"    $^
"$^O"                     #"    $^O
"$^_"                     #"    $^_
"$^o"                     #"    $^ . "o"
"$^OO"                    #"    $^O . "O"
"$^_O"                    #"    $^_ . "O"
"$^__"                    #"    $^_ . "_"
"$^Oo"                    #"    $^O . "o"
"$^_o"                    #"    $^_ . "o"
"${^}"                    #}"   ${^}
"${^O}"                   #}"   ${^O}
"${^_}"                   #}"   ${^_}
"${^OO}"                  #}"   ${^OO}
"${^O_}"                  #}"   ${^O_}
"${^Oo}"                  #}"   ${^Oo}
"${^_O}"                  #}"   ${^_O}
"${^__}"                  #}"   ${^__}
"${^_o}"                  #}"   ${^_o}
"${^o}"                   #}"   ${+^o}
"${^oO}"                  #}"   ${+^oO}
"${^o_}"                  #}"   ${+^o_}
"${^Stuffworks}"          #}"   ${^Stuffworks}
"${^_stuff__works__}"     #}"   ${^_stuff__works__}
"${^"                     #}"   ${<^>
"$^}"                     #}"   $^ . "}"
"${^O"                    #}"   ${<^O>
"${^_"                    #}"   ${<^_>
"${^NO"                   #}"   ${<^NO>
"${^__"                   #}"   ${<^__>
"${ ^O}"                  #}"   ${ ^O}
"${^O }"                  #}"   ${^O }
"${ ^O  }"                #}"   ${ ^O  }
"${  ^Stuffworks }"       #}"   ${  ^Stuffworks }
"${^_stuff__works__  }"   #}"   ${^_stuff__works__  }
"${^^O}"                  #}"   ${<^^O>}
"${^^NOPE}"               #}"   ${<^^NOPE>}
"${_^O}"                  #}"   ${<_^O>}
"${_^NOPE}"               #}"   ${<_^NOPE>}
"${^O$}}}"                #}"   ${<^O$}>} . "}"
"${^NOPE$}}}"             #}"   ${<^NOPE$}>} . "}"
"${^O\}}"                 #}"   ${<^O\>} . "}"
"${^NOP\}}"               #}"   ${<^NOP\>} . "}"
"${^O O}"                 #}"   ${<^O O>}
"${^NOPE O}"              #}"   ${<^NOPE O>}
"${^N$O}"                 #}"   ${<N$O>}
"${^NOP$E}"               #}"   ${<NOP$E>}
"${^O::}"                 #}"   ${<^O::>}
"${^::}"                  #}"   ${<^::>}
"${^::O}"                 #}"   ${<^::O>}
"${::^}"                  #}"   ${<::^>}
"${::^O}"                 #}"   ${<::^O>}
"${^O'}"                  #}"   ${<^O'>}
"${^O'O}"                 #}"   ${<'^O>}
"${'^O}"                  #}"   ${<'^O>}
"${'S^O}"                 #}"   ${<'S^O>}
"${'S^O::}"               #}"   ${<'S^O::>}
"${'S::^O}"               #}"   ${<'S::^O>}
"${'S::^::O}"             #}"   ${<'S::^::O>}

# $ -> [] {}
"$foo[]"
"$foo[0]"
"$foo->[]"
"$foo->[  ]"
"$foo->[0]"
"$foo->[ 0]"
"$foo->[0 ]"
"$foo->[ 0 ]"
"$foo[][]"
"$foo[0][0]"
"$foo->[]->[]"
"$foo->[0]->[0]"
"$foo[0][0][0]->[]->[0]->[][]->[][0][][0]"
"$foo->[0][]->[0][][][0]->[0][]->[][0]"
"$foo{}"
"$foo{0}"
"$foo->{}"
"$foo->{0}"
"$foo{}{}"
"$foo{0}{0}"
"$foo->{}->{}"
"$foo->{0}->{0}"
"$foo{0}{0}{0}->{}->{0}->{}{}->{}{0}{}{0}"
"$foo->{0}{}->{0}{}{}{0}->{0}{}->{}{0}"
"$foo{aav}"
"$foo->{aav}"
"$foo{-aav}"
"$foo->{-aav}"
"$foo{aav }"
"$foo{ aav  }"
"$foo->{aav }"
"$foo->{   aav  }"
"$foo{ foo }{  foo }"
"$foo{ foo}{foo}"
"$foo{foo}{ foo}"
"$foo{foo }{foo}"
"$foo{-foo}{foo}"
"$foo->{fodod}->{-fododad}"
"$foo{fooasd}{aav}{-fooasdag}->{}->{-fooasdag}->{}{}->{}{aav}{}{aav}"
"$foo->{aav}{}->{fooasdaag}{}{}{aav}->{-aav}{}->{}{-fooasdaaaagasd}"
"$foo{asd::asd}"
"$foo->{asdfad'asd}"
"$foo{::}"
"$foo->{::asd}"
"$foo->{'asd}"
"$foo->{123}"
"$foo{012}"
"$foo->{0xaa}"
"$foo{0b1}"
"$foo->{0b2}"
"$foo{09}"
"$foo{0xg}"
"$foo->{0.2}"
"$foo{.04}"
"$foo->{-123}"
"$foo{-3.5}"
"$foo->{-00}"
"$foo{-0b1}"
"$foo->{-0xfff}"
"$foo{a}"
"$foo->{aahh}"
"$${ad}[0]->[]"
"$$->[]{}"
"$-->[-22]"
"$-->{-aa}"
"$-[-0]"
"$-{-a}"
"$\" #"
"${\}"
"$^"
"${^}"
"$^O"
"${^O}"
"${^_stuff__works__}"
"$::"
"${:::}"
"$'a"
"${'a}"
"${a'a::das'as'::s::}"
"${^oops}"
"$" #"
"${}"
# and then all the stuff where -> becomes a string
# perhaps some testing of what you can nest inside [] {}

# even harder $$, ${}
# @, @name->, @name[] @name{}, @@, @{}
# ->$* ->@* ->@[] ->@{}
# $ and @ interactions!
# ESCAPES D: D: D:
# qq\\ qq$$ qq@@ qq:: qq'' qq^^ qq-- qq[] qq{} qq]] qq}} qq() qq<>

qq\$\\                                             #\#
qq\@\\                                             #\#
qq\\n\                                             #\#
qq\\$\                                             #\#
qq\\@\                                             #\#
qq\\                                               #\#
qq\\\                                              #\#
qq\\\\                                             #\#

qx'\'hjk \f \\\- \\\\\' jmk\''
q(asd \(  \) ()() ( ((\)\())   \)  \(   )  ddd)

"we got\ escapes\! \n \1 \9 ...yup"
"Yeah... \Qno way $I'm @messing with these\E... Too hard"
"octals... \0000 \7777 \80344 \0yeah \o{} \o{_} \o{_12_} but not \o{ } \o{1f}  "
"\x{} and \x{_} and \x{_dead_BEEF01_} \xA2f \x5n \x000 \xg but not \x{ } \x{boob}"
"unicode... \N{U+0} \N{U+0f0af3} \N{U+_0_0} and \N{Everyth1ng ACC##PT*{([ED\}? Yeah."
"but not unicode \N{U+} \N{U+_} \N{U+__} \N{U+0_} \N{U+0__0}"
"this shouldn't work: \N{Charname with quote    " in it}" #}"
"this shouldn't work: \N{Charname with quote  \\" in it}" #}"
"but this should:     \N{Charname with quote   \" in it}"
"but this should:     \N{Charname with quote \\\" in it}"
"control chars \c@ \cA \ca \c\ all work"
"weird use of \c: \c"   #"
"weird use of \c: \c\"" #"
"weird use of \c: \c\\" #"
"weird use of \c: \c\\n" #"

qq$inside this \$foo is actually a variable$
qq@inside this \@foo is actually a variable@

# no interpolation: <<
# single quoted: '' q qw qx s
# double quoted: "" qq `` qx <> << s
# regex: m // qr s
# transliteration: tr y
# format: format
