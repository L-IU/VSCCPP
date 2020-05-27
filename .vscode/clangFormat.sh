#! /bin/bash

clangFormat='Language: Cpp
BasedOnStyle: WebKit
IndentWidth: 8
AlignTrailingComments: true
NamespaceIndentation: All
BreakBeforeBraces: Custom
BraceWrapping: { AfterUnion: true,AfterEnum: true,AfterStruct: true,AfterClass: true,AfterFunction: true,AfterNamespace: true,AfterExternBlock: true,AfterControlStatement: false,BeforeCatch: false,BeforeElse: false }

##{ BasedOnStyle: WebKit, IndentWidth: 8, AlignTrailingComments: true, NamespaceIndentation: All,BreakBeforeBraces: Custom,BraceWrapping: { AfterUnion: true,AfterEnum: true,AfterStruct: true,AfterClass: true,AfterFunction: true,AfterNamespace: true,AfterExternBlock: true,AfterControlStatement: false,BeforeCatch: false,BeforeElse: false } }
'
echo -n "${clangFormat}" > ${PWD}/.clang-format

find ${PWD} -name "*.cpp" -exec clang-format -i -verbose {} \;
find ${PWD} -name "*.c" -exec clang-format -i -verbose {} \;
find ${PWD} -name "*.h" -exec clang-format -i -verbose {} \;
