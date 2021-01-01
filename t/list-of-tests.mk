## Makefile fragment that holds the list of test scripts of the automake
## testsuite.  This fragment is meant to be included by the Makefile.am,
## but also to be executed directly by make when bootstrapping automake.

## Copyright (C) 2011-2020 Free Software Foundation, Inc.
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2, or (at your option)
## any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

# FIXME: this "expected failures" are in truth an hack used to
# FIXME: to verify that some incorrect usages of our perl libraries
# FIXME: raise an error.  We should find a cleaner way to check that.
perl_fake_XFAIL_TESTS = \
t/pm/Cond2.pl \
t/pm/Cond3.pl \
t/pm/DisjCon2.pl \
t/pm/DisjCon3.pl \
t/pm/Version2.pl \
t/pm/Version3.pl

XFAIL_TESTS = \
t/all.sh \
t/auxdir-pr19311.sh \
t/cond17.sh \
t/gcj6.sh \
t/override-conditional-2.sh \
t/override-conditional-pr13940.sh \
t/dist-pr109765.sh \
t/instdir-cond2.sh \
t/java-nobase.sh \
t/objext-pr10128.sh \
t/remake-timing-bug-pr8365.sh \
t/lex-subobj-nodep.sh \
t/remake-am-pr10111.sh \
t/remake-m4-pr10111.sh \
$(perl_fake_XFAIL_TESTS)

perl_TESTS = \
t/pm/Cond2.pl \
t/pm/Cond3.pl \
t/pm/Condition.pl \
t/pm/Condition-t.pl \
t/pm/DisjCon2.pl \
t/pm/DisjCon3.pl \
t/pm/DisjConditions.pl \
t/pm/DisjConditions-t.pl \
t/pm/General.pl \
t/pm/Version.pl \
t/pm/Version2.pl \
t/pm/Version3.pl \
t/pm/Wrap.pl

perf_TESTS = \
t/perf/cond.sh \
t/perf/testsuite-recheck.sh \
t/perf/testsuite-summary.sh

# The order here is mostly alphabetical, with the deliberate exception
# that tests having a high runtime (especially TAP tests that run various
# checks sequentially) are listed early; this improves performance on
# concurrent testsuite runs.
handwritten_TESTS = \
t/get-sysconf.sh \
$(perl_TESTS) \
t/instspc.tap \
t/aclocal.sh \
t/aclocal-I-order-1.sh \
t/aclocal-I-order-2.sh \
t/aclocal-I-order-3.sh \
t/aclocal-I-and-install.sh \
t/aclocal-acdir.sh \
t/aclocal-amflags.sh \
t/aclocal-autoconf-version-check.sh \
t/aclocal-comments-respected.sh \
t/aclocal-deleted-header-aclocal-amflags.sh \
t/aclocal-deleted-header.sh \
t/aclocal-deps-subdir.sh \
t/aclocal-deps.sh \
t/aclocal-dirlist.sh \
t/aclocal-dirlist-globbing.sh \
t/aclocal-dirlist-abspath.sh \
t/aclocal-install-absdir.sh \
t/aclocal-install-fail.sh \
t/aclocal-install-mkdir.sh \
t/aclocal-m4-include-are-scanned-aclocal-amflags.sh \
t/aclocal-m4-include-are-scanned.sh \
t/aclocal-m4-sinclude.sh \
t/aclocal-macrodir.tap \
t/aclocal-macrodirs.tap \
t/aclocal-missing-macros.sh \
t/aclocal-no-extra-scan.sh \
t/aclocal-no-force.sh \
t/aclocal-no-install-no-mkdir.sh \
t/aclocal-no-symlinked-overwrite.sh \
t/aclocal-no-unused-required.sh \
t/aclocal-path.sh \
t/aclocal-path-install.sh \
t/aclocal-path-install-serial.sh \
t/aclocal-path-nonexistent.sh \
t/aclocal-path-precedence.sh \
t/aclocal-pr450.sh \
t/aclocal-print-acdir.sh \
t/aclocal-req.sh \
t/aclocal-remake-misc.sh \
t/aclocal-scan-configure-ac-pr319.sh \
t/aclocal-serial.sh \
t/aclocal-underquoted-defun.sh \
t/aclocal-verbose-install.sh \
t/auxdir-pr15981.sh \
t/auxdir-cc-pr15981.sh \
t/ac-output-old.tap \
t/acsilent.sh \
t/acsubst.sh \
t/acsubst2.sh \
t/add-missing.tap \
t/add-missing-multiple.sh \
t/all.sh \
t/all2.sh \
t/alloca.sh \
t/alloca2.sh \
t/alpha.sh \
t/alpha2.sh \
t/amhello-cflags.sh \
t/amhello-cross-compile.sh \
t/amhello-binpkg.sh \
t/aminit-moreargs-deprecation.sh \
t/aminit-trailing-dnl-comment-pr16841.sh \
t/amassign.sh \
t/am-config-header.sh \
t/am-prog-cc-stdc.sh \
t/am-prog-cc-c-o.sh \
t/am-macro-not-found.sh \
t/amopt.sh \
t/amopts-location.sh \
t/amopts-variable-expansion.sh \
t/amsubst.sh \
t/am-default-source-ext.sh \
t/am-include-only-one-generated-fragment.sh \
t/ansi2knr-no-more.sh \
t/ar-lib.sh \
t/ar-lib2.sh \
t/ar-lib3.sh \
t/ar-lib4.sh \
t/ar-lib5a.sh \
t/ar-lib5b.sh \
t/ar-lib6a.sh \
t/ar-lib6b.sh \
t/ar-lib7.sh \
t/ar.sh \
t/ar2.sh \
t/ar3.sh \
t/ar4.sh \
t/ar5.sh \
t/asm.sh \
t/asm2.sh \
t/asm3.sh \
t/autodist.sh \
t/autodist-subdir.sh \
t/autodist-acconfig.sh \
t/autodist-acconfig-no-subdir.sh \
t/autodist-aclocal-m4.sh \
t/autodist-config-headers.sh \
t/autodist-configure-no-subdir.sh \
t/autodist-no-duplicate.sh \
t/autodist-stamp-vti.sh \
t/autohdr.sh \
t/autohdr3.sh \
t/autohdr4.sh \
t/autohdr-subdir-pr12495.sh \
t/autohdrdry.sh \
t/automake-cmdline.tap \
t/auxdir.sh \
t/auxdir6.sh \
t/auxdir7.sh \
t/auxdir8.sh \
t/auxdir-autodetect.sh \
t/auxdir-computed.tap \
t/auxdir-misplaced.sh \
t/auxdir-nonexistent.sh \
t/auxdir-pr19311.sh \
t/auxdir-unportable.tap \
t/backcompat.sh \
t/backcompat2.sh \
t/backcompat3.sh \
t/backcompat6.sh \
t/backcompat-acout.sh \
t/backslash-issues.sh \
t/backslash-before-trailing-whitespace.sh \
t/badline.sh \
t/badopt.sh \
t/badprog.sh \
t/built-sources-check.sh \
t/built-sources-cond.sh \
t/built-sources-fork-bomb.sh \
t/built-sources-install.sh \
t/built-sources-subdir.sh \
t/built-sources.sh \
t/candist.sh \
t/canon.sh \
t/canon2.sh \
t/canon3.sh \
t/canon4.sh \
t/canon5.sh \
t/canon6.sh \
t/canon7.sh \
t/canon8.sh \
t/canon-name.sh \
t/ccnoco.sh \
t/ccnoco-lib.sh \
t/ccnoco-lt.sh \
t/ccnoco3.sh \
t/ccnoco4.sh \
t/ccnoco-deps.sh \
t/check.sh \
t/check2.sh \
t/check4.sh \
t/check5.sh \
t/check6.sh \
t/check7.sh \
t/check8.sh \
t/check10.sh \
t/check11.sh \
t/check12.sh \
t/check-subst.sh \
t/check-subst-prog.sh \
t/check-exported-srcdir.sh \
t/check-fd-redirect.sh \
t/check-tests-in-builddir.sh \
t/check-no-test-driver.sh \
t/check-concurrency-bug9245.sh \
t/checkall.sh \
t/clean.sh \
t/colneq.sh \
t/colneq2.sh \
t/colneq3.sh \
t/colon.sh \
t/colon2.sh \
t/colon3.sh \
t/colon4.sh \
t/colon5.sh \
t/colon6.sh \
t/colon7.sh \
t/color-tests.sh \
t/color-tests2.sh \
t/color-tests-opt.sh \
t/comment.sh \
t/comment2.sh \
t/comment3.sh \
t/comment4.sh \
t/comment5.sh \
t/comment6.sh \
t/comment7.sh \
t/comment8.sh \
t/comment9.sh \
t/commen10.sh \
t/commen11.sh \
t/comment-block.sh \
t/comments-in-var-def.sh \
t/compile.sh \
t/compile2.sh \
t/compile3.sh \
t/compile4.sh \
t/compile5.sh \
t/compile6.sh \
t/compile7.sh \
t/compile_f90_c_cxx.sh \
t/compile_f_c_cxx.sh \
t/cond-basic.sh \
t/cond.sh \
t/cond3.sh \
t/cond4.sh \
t/cond5.sh \
t/cond6.sh \
t/cond7.sh \
t/cond8.sh \
t/cond9.sh \
t/cond10.sh \
t/cond11.sh \
t/cond13.sh \
t/cond14.sh \
t/cond15.sh \
t/cond16.sh \
t/cond17.sh \
t/cond18.sh \
t/cond19.sh \
t/cond20.sh \
t/cond21.sh \
t/cond22.sh \
t/cond23.sh \
t/cond24.sh \
t/cond25.sh \
t/cond26.sh \
t/cond27.sh \
t/cond28.sh \
t/cond30.sh \
t/cond31.sh \
t/cond32.sh \
t/cond33.sh \
t/cond34.sh \
t/cond35.sh \
t/cond36.sh \
t/cond37.sh \
t/cond38.sh \
t/cond39.sh \
t/cond40.sh \
t/cond41.sh \
t/cond42.sh \
t/cond43.sh \
t/cond44.sh \
t/cond45.sh \
t/cond46.sh \
t/condd.sh \
t/condhook.sh \
t/condhook2.sh \
t/condinc.sh \
t/condinc2.sh \
t/condlib.sh \
t/condman2.sh \
t/condman3.sh \
t/configure.sh \
t/confdeps.sh \
t/conff.sh \
t/conff2.sh \
t/conffile-leading-dot.sh \
t/confh.sh \
t/confh4.sh \
t/confh5.sh \
t/confh6.sh \
t/confh7.sh \
t/confh8.sh \
t/confh-subdir-clean.sh \
t/confincl.sh \
t/conflnk.sh \
t/conflnk2.sh \
t/conflnk3.sh \
t/conflnk4.sh \
t/confsub.sh \
t/confvar.sh \
t/confvar2.sh \
t/copy.sh \
t/cscope.tap \
t/cscope2.sh \
t/cscope3.sh \
t/c-demo.sh \
t/cxx.sh \
t/cxx2.sh \
t/cxxcpp.sh \
t/cxx-demo.sh \
t/cxx-lt-demo.sh \
t/cxxlibobj.sh \
t/cxxlink.sh \
t/cxxnoc.sh \
t/cygnus-no-more.sh \
t/cygwin32.sh \
t/dash.sh \
t/defun.sh \
t/defun2.sh \
t/dejagnu.sh \
t/dejagnu2.sh \
t/dejagnu3.sh \
t/dejagnu4.sh \
t/dejagnu5.sh \
t/dejagnu6.sh \
t/dejagnu7.sh \
t/dejagnu-absolute-builddir.sh \
t/dejagnu-relative-srcdir.sh \
t/dejagnu-siteexp-extend.sh \
t/dejagnu-siteexp-append.sh \
t/dejagnu-siteexp-useredit.sh \
t/deleted-am.sh \
t/deleted-m4.sh \
t/depacl2.sh \
t/depcomp.sh \
t/depcomp2.sh \
t/depcomp8a.sh \
t/depcomp8b.sh \
t/depcomp-implicit-auxdir.sh \
t/depdist.sh \
t/depend.sh \
t/depend3.sh \
t/depend4.sh \
t/depend5.sh \
t/depend6.sh \
t/depend-postproc.sh \
t/deprecated-acinit.sh \
t/destdir.sh \
t/dir-named-obj-is-bad.sh \
t/discover.sh \
t/dist-formats.tap \
t/dist-lzma.sh \
t/dist-tarZ.sh \
t/dist-shar.sh \
t/dist-auxdir-many-subdirs.sh \
t/dist-auxfile-2.sh \
t/dist-auxfile.sh \
t/dist-included-parent-dir.sh \
t/dist-missing-am.sh \
t/dist-missing-included-m4.sh \
t/dist-missing-m4.sh \
t/dist-readonly.sh \
t/dist-repeated.sh \
t/dist-pr109765.sh \
t/dist-vs-built-sources.sh \
t/distcleancheck.sh \
t/distcom2.sh \
t/distcom3.sh \
t/distcom4.sh \
t/distcom5.sh \
t/distcom-subdir.sh \
t/distdir.sh \
t/disthook.sh \
t/distlinks.sh \
t/distlinksbrk.sh \
t/distname.sh \
t/distcheck-configure-flags.sh \
t/distcheck-configure-flags-am.sh \
t/distcheck-configure-flags-subpkg.sh \
t/distcheck-hook.sh \
t/distcheck-hook2.sh \
t/distcheck-writable-srcdir.sh \
t/distcheck-missing-m4.sh \
t/distcheck-outdated-m4.sh \
t/distcheck-no-prefix-or-srcdir-override.sh \
t/distcheck-override-infodir.sh \
t/distcheck-pr9579.sh \
t/distcheck-pr10470.sh \
t/distcheck-pr18286.sh \
t/dmalloc.sh \
t/doc-parsing-buglets-colneq-subst.sh \
t/doc-parsing-buglets-tabs.sh \
t/dollar.sh \
t/dollarvar.sh \
t/dollarvar2.sh \
t/double.sh \
t/dup2.sh \
t/else.sh \
t/empty-data-primary.sh \
t/empty-sources-primary.tap \
t/exdir.sh \
t/exdir2.sh \
t/exdir3.sh \
t/exeext.sh \
t/exeext2.sh \
t/exeext3.sh \
t/exeext4.sh \
t/extra-sources.sh \
t/ext.sh \
t/ext2.sh \
t/ext3.sh \
t/extra.sh \
t/extra-sources-no-spurious.sh \
t/extra-data.sh \
t/extra-dist-vpath-dir.sh \
t/extra-dist-dirs-and-subdirs.sh \
t/extra-dist-vpath-dir-merge.sh \
t/extra-dist-wildcards.sh \
t/extra-dist-wildcards-gnu.sh \
t/extra-dist-wildcards-vpath.sh \
t/extra-programs-misc.sh \
t/extra-programs-and-libs.sh \
t/extra-programs-empty.sh \
t/extra-portability.sh \
t/extra-portability2.sh \
t/extra-portability3.sh \
t/extra-deps.sh \
t/extra-deps-lt.sh \
t/f90only.sh \
t/flavor.sh \
t/flibs.sh \
t/fn99.sh \
t/fn99subdir.sh \
t/fnoc.sh \
t/forcemiss.sh \
t/forcemiss2.sh \
t/fort1.sh \
t/fort2.sh \
t/fort4.sh \
t/fort5.sh \
t/fonly.sh \
t/fortdep.sh \
t/gcj.sh \
t/gcj2.sh \
t/gcj3.sh \
t/gcj4.sh \
t/gcj5.sh \
t/gcj6.sh \
t/gettext-basics.sh \
t/gettext-config-rpath.sh \
t/gettext-external-pr338.sh \
t/gettext-intl-subdir.sh \
t/gettext-pr381.sh \
t/gnumake.sh \
t/gnuwarn.sh \
t/gnuwarn2.sh \
t/gnits.sh \
t/gnits2.sh \
t/gnits3.sh \
t/hdr-vars-defined-once.sh \
t/header.sh \
t/help.sh \
t/help2.sh \
t/help3.sh \
t/help4.sh \
t/help-depend.sh \
t/help-depend2.sh \
t/help-dmalloc.sh \
t/help-init.sh \
t/help-lispdir.sh \
t/help-python.sh \
t/help-silent.sh \
t/help-upc.sh \
t/hfs.sh \
t/implicit.sh \
t/init.sh \
t/init2.sh \
t/dist-install-sh.sh \
t/dist-with-unreadable-makefile-fails.sh \
t/installdir.sh \
t/add-missing-install-sh.sh \
t/install-sh-unittests.sh \
t/install-sh-option-C.sh \
t/instdat.sh \
t/instdat2.sh \
t/instdir.sh \
t/instdir2.sh \
t/instdir-cond.sh \
t/instdir-cond2.sh \
t/instdir-no-empty.sh \
t/instdir-java.sh \
t/instdir-lisp.sh \
t/instdir-ltlib.sh \
t/instdir-prog.sh \
t/instdir-python.sh \
t/instdir-texi.sh \
t/instexec.sh \
t/instfail.sh \
t/instfail-info.sh \
t/instfail-java.sh \
t/instfail-libtool.sh \
t/insthook.sh \
t/instman.sh \
t/instman2.sh \
t/instmany.sh \
t/instmany-mans.sh \
t/instmany-python.sh \
t/install-info-dir.sh \
t/interp.sh \
t/interp2.sh \
t/java.sh \
t/java2.sh \
t/java3.sh \
t/javadir-undefined.sh \
t/javaflags.sh \
t/java-check.sh \
t/java-clean.sh \
t/java-compile-install.sh \
t/java-compile-run-flat.sh \
t/java-compile-run-nested.sh \
t/java-empty-classpath.sh \
t/javaprim.sh \
t/javasubst.sh \
t/java-extra.sh \
t/java-mix.sh \
t/java-no-duplicate.sh \
t/java-nobase.sh \
t/java-noinst.sh \
t/java-rebuild.sh \
t/java-sources.sh \
t/java-uninstall.sh \
t/ldadd.sh \
t/ldflags.sh \
t/lex.sh \
t/lex2.sh \
t/lex3.sh \
t/lex5.sh \
t/lexcpp.sh \
t/lexvpath.sh \
t/lex-subobj-nodep.sh \
t/lex-header.sh \
t/lex-lib.sh \
t/lex-lib-external.sh \
t/lex-libobj.sh \
t/lex-multiple.sh \
t/lex-noyywrap.sh \
t/lex-clean-cxx.sh \
t/lex-clean.sh \
t/lex-depend-cxx.sh \
t/lex-depend-grep.sh \
t/lex-depend.sh \
t/lex-line.sh \
t/lex-nodist.sh \
t/lex-pr204.sh \
t/lflags.sh \
t/lflags-cxx.sh \
t/libexec.sh \
t/libobj-basic.sh \
t/libobj-no-dependency-tracking.sh \
t/libobj2.sh \
t/libobj3.sh \
t/libobj4.sh \
t/libobj5.sh \
t/libobj7.sh \
t/libobj10.sh \
t/libobj12.sh \
t/libobj13.sh \
t/libobj14.sh \
t/libobj15a.sh \
t/libobj15b.sh \
t/libobj15c.sh \
t/libobj16a.sh \
t/libobj16b.sh \
t/libobj17.sh \
t/libobj18.sh \
t/libobj19.sh \
t/libobj20a.sh \
t/libobj20b.sh \
t/libobj20c.sh \
t/library.sh \
t/library2.sh \
t/library3.sh \
t/libtool.sh \
t/libtool2.sh \
t/libtool3.sh \
t/libtool4.sh \
t/libtool5.sh \
t/libtool6.sh \
t/libtool7.sh \
t/libtool8.sh \
t/libtool9.sh \
t/libtoo10.sh \
t/libtoo11.sh \
t/license.sh \
t/license2.sh \
t/link_c_cxx.sh \
t/link_cond.sh \
t/link_dist.sh \
t/link_f90_only.sh \
t/link_fc.sh \
t/link_fccxx.sh \
t/link_fcxx.sh \
t/link_f_only.sh \
t/link_override.sh \
t/lisp2.sh \
t/lisp3.sh \
t/lisp4.sh \
t/lisp5.sh \
t/lisp6.sh \
t/lisp7.sh \
t/lisp8.sh \
t/lisp-readonly-srcdir.sh \
t/lisp-loadpath.sh \
t/lisp-subdir.sh \
t/lisp-subdir2.sh \
t/lisp-subdir-mix.sh \
t/lispdry.sh \
t/lisp-pr11806.sh \
t/lisp-flags.sh \
t/listval.sh \
t/location.sh \
t/longline.sh \
t/longlin2.sh \
t/ltcond.sh \
t/ltcond2.sh \
t/ltconv.sh \
t/ltdeps.sh \
t/ltinit.sh \
t/ltinstloc.sh \
t/ltlibobjs.sh \
t/ltlibsrc.sh \
t/ltorder.sh \
t/m4-inclusion.sh \
t/maintclean.sh \
t/maintclean-vpath.sh \
t/maintmode-configure-msg.sh \
t/make.sh \
t/makefile-deps.sh \
t/makej.sh \
t/makej2.sh \
t/maken.sh \
t/maken3.sh \
t/makevars.sh \
t/make-dryrun.tap \
t/make-keepgoing.tap \
t/make-is-gnu.sh \
t/man.sh \
t/man2.sh \
t/man3.sh \
t/man5.sh \
t/man6.sh \
t/man7.sh \
t/man8.sh \
t/mdate.sh \
t/mdate2.sh \
t/mdate3.sh \
t/mdate4.sh \
t/mdate5.sh \
t/mdate6.sh \
t/missing-version-mismatch.sh \
t/missing3.sh \
t/am-missing-prog.sh \
t/missing-auxfile-stops-makefiles-creation.sh \
t/mkdir_p.sh \
t/mkdirp-deprecation.sh \
t/mkinstall.sh \
t/mkinst2.sh \
t/mkinst3.sh \
t/mmode.sh \
t/mmodely.sh \
t/no-extra-c-stuff.sh \
t/no-extra-makefile-code.sh \
t/no-spurious-install-recursive.sh \
t/nobase.sh \
t/nobase-libtool.sh \
t/nobase-python.sh \
t/nobase-nodist.sh \
t/nodef.sh \
t/nodef2.sh \
t/nodep.sh \
t/nodep2.sh \
t/nodepcomp.sh \
t/nodist.sh \
t/nodist2.sh \
t/nodist3.sh \
t/noinst.sh \
t/noinstdir.sh \
t/nolink.sh \
t/nostdinc.sh \
t/notrans.sh \
t/number.sh \
t/objc-basic.sh \
t/objc-minidemo.sh \
t/objc-flags.sh \
t/objc-deps.sh \
t/objcxx-basic.sh \
t/objcxx-minidemo.sh \
t/objcxx-flags.sh \
t/objcxx-deps.sh \
t/objc-megademo.sh \
t/objext-pr10128.sh \
t/oldvars.sh \
t/order.sh \
t/output.sh \
t/output2.sh \
t/output3.sh \
t/output4.sh \
t/output5.sh \
t/output6.sh \
t/output7.sh \
t/output8.sh \
t/output9.sh \
t/output10.sh \
t/output11.sh \
t/output12.sh \
t/output13.sh \
t/output-order.sh \
t/override-conditional-1.sh \
t/override-conditional-2.sh \
t/override-conditional-pr13940.sh \
t/override-html.sh \
t/override-suggest-local.sh \
t/parallel-am.sh \
t/parallel-am2.sh \
t/parallel-am3.sh \
t/serial-tests.sh \
t/parallel-tests-basics.sh \
t/parallel-tests-concurrency.sh \
t/parallel-tests-concurrency-2.sh \
t/parallel-tests-empty.sh \
t/parallel-tests-exit-status-reported.sh \
t/parallel-tests-generated-and-distributed.sh \
t/parallel-tests-recheck.sh \
t/parallel-tests-trailing-whitespace.sh \
t/parallel-tests-recheck-depends-on-all.sh \
t/parallel-tests-recheck-pr11791.sh \
t/parallel-tests-exeext.sh \
t/parallel-tests-suffix.sh \
t/parallel-tests-suffix-prog.sh \
t/parallel-tests-log-compiler-1.sh \
t/parallel-tests-log-compiler-2.sh \
t/parallel-tests-dry-run-1.sh \
t/parallel-tests-dry-run-2.sh \
t/parallel-tests-fd-redirect.sh \
t/parallel-tests-fd-redirect-exeext.sh \
t/parallel-tests-extra-programs.sh \
t/parallel-tests-unreadable.sh \
t/parallel-tests-subdir.sh \
t/parallel-tests-interrupt.tap \
t/parallel-tests-reset-term.sh \
t/parallel-tests-harderror.sh \
t/parallel-tests-log-override-1.sh \
t/parallel-tests-log-override-2.sh \
t/parallel-tests-log-override-recheck.sh \
t/parallel-tests-log-compiler-example.sh \
t/parallel-tests-cmdline-override.sh \
t/parallel-tests-fork-bomb.sh \
t/parallel-tests-empty-testlogs.sh \
t/parallel-tests-driver-install.sh \
t/parallel-tests-no-color-in-log.sh \
t/parallel-tests-no-spurious-summary.sh \
t/parallel-tests-exit-statuses.sh \
t/parallel-tests-console-output.sh \
t/parallel-tests-once.sh \
t/tests-environment.sh \
t/am-tests-environment.sh \
t/tests-environment-backcompat.sh \
t/testsuite-summary-color.sh \
t/testsuite-summary-count.sh \
t/testsuite-summary-count-many.sh \
t/testsuite-summary-reference-log.sh \
t/test-driver-acsubst.sh \
t/test-driver-cond.sh \
t/test-driver-custom-no-extra-driver.sh \
t/test-driver-custom.sh \
t/test-driver-custom-xfail-tests.sh \
t/test-driver-custom-multitest.sh \
t/test-driver-custom-multitest-recheck.sh \
t/test-driver-custom-multitest-recheck2.sh \
t/test-driver-create-log-dir.sh \
t/test-driver-strip-vpath.sh \
t/test-driver-trs-suffix-registered.sh \
t/test-driver-fail.sh \
t/test-driver-is-distributed.sh \
t/test-harness-vpath-rewrite.sh \
t/test-log.sh \
t/test-logs-repeated.sh \
t/test-metadata-global-log.sh \
t/test-metadata-global-result.sh \
t/test-metadata-recheck.sh \
t/test-metadata-results.sh \
t/test-missing.sh \
t/test-missing2.sh \
t/test-trs-basic.sh \
t/test-trs-recover.sh \
t/test-trs-recover2.sh \
t/test-extensions.sh \
t/test-extensions-cond.sh \
t/parse.sh \
t/percent.sh \
t/percent2.sh \
t/per-target-flags.sh \
t/phony.sh \
t/precious.sh \
t/pluseq.sh \
t/pluseq2.sh \
t/pluseq3.sh \
t/pluseq4.sh \
t/pluseq5.sh \
t/pluseq6.sh \
t/pluseq7.sh \
t/pluseq8.sh \
t/pluseq9.sh \
t/pluseq10.sh \
t/pluseq11.sh \
t/posixsubst-data.sh \
t/posixsubst-extradist.sh \
t/posixsubst-ldadd.sh \
t/posixsubst-libraries.sh \
t/posixsubst-ltlibraries.sh \
t/posixsubst-programs.sh \
t/posixsubst-scripts.sh \
t/posixsubst-sources.sh \
t/posixsubst-tests.sh \
t/ppf77.sh \
t/pr2.sh \
t/pr9.sh \
t/pr72.sh \
t/pr87.sh \
t/pr211.sh \
t/pr220.sh \
t/pr224.sh \
t/pr229.sh \
t/pr243.sh \
t/pr266.sh \
t/pr279.sh \
t/pr279-2.sh \
t/pr287.sh \
t/pr300-lib.sh \
t/pr300-ltlib.sh \
t/pr300-prog.sh \
t/pr307.sh \
t/pr401.sh \
t/pr401b.sh \
t/pr401c.sh \
t/prefix.sh \
t/preproc-basics.sh \
t/preproc-c-compile.sh \
t/preproc-demo.sh \
t/preproc-errmsg.sh \
t/primary.sh \
t/primary2.sh \
t/primary3.sh \
t/primary-prefix-invalid-couples.tap \
t/primary-prefix-valid-couples.sh \
t/primary-prefix-couples-force-valid.sh \
t/primary-prefix-couples-documented-valid.sh \
t/print-libdir.sh \
t/proginst.sh \
t/programs-primary-rewritten.sh \
t/py-compile-basic.sh \
t/py-compile-basedir.sh \
t/py-compile-destdir.sh \
t/py-compile-env.sh \
t/py-compile-option-terminate.sh \
t/py-compile-usage.sh \
t/python.sh \
t/python2.sh \
t/python3.sh \
t/python10.sh \
t/python11.sh \
t/python12.sh \
t/python-am-path-iftrue.sh \
t/python-missing.sh \
t/python-too-old.sh \
t/python-dist.sh \
t/python-vars.sh \
t/python-virtualenv.sh \
t/python-pr10995.sh \
t/recurs-user.sh \
t/recurs-user2.sh \
t/recurs-user-deeply-nested.sh \
t/recurs-user-indir.sh \
t/recurs-user-keep-going.sh \
t/recurs-user-many.sh \
t/recurs-user-no-subdirs.sh \
t/recurs-user-no-top-level.sh \
t/recurs-user-override.sh \
t/recurs-user-phony.sh \
t/recurs-user-wrap.sh \
t/relativize.tap \
t/remake-fail.sh \
t/remake-not-after-make-dist.sh \
t/remake-maintainer-mode.sh \
t/remake-makefile-intree.sh \
t/remake-makefile-vpath.sh \
t/remake-after-configure-ac.sh \
t/remake-after-makefile-am.sh \
t/remake-after-acinclude-m4.sh \
t/remake-after-aclocal-m4.sh \
t/remake-include-configure.sh \
t/remake-include-makefile.sh \
t/remake-include-aclocal.sh \
t/remake-config-status-dependencies.sh \
t/remake-configure-dependencies.sh \
t/remake-deeply-nested.sh \
t/remake-mild-stress.sh \
t/remake-all-1.sh \
t/remake-all-2.sh \
t/remake-recurs-user.sh \
t/remake-subdir.sh \
t/remake-subdir2.sh \
t/remake-subdir3.sh \
t/remake-subdir-only.sh \
t/remake-subdir-grepping.sh \
t/remake-subdir-from-subdir.sh \
t/remake-subdir-gnu.sh \
t/remake-subdir-no-makefile.sh \
t/remake-subdir-long-time.sh \
t/remake-gnulib-add-acsubst.sh \
t/remake-gnulib-add-header.sh \
t/remake-gnulib-remove-header.sh \
t/remake-moved-m4-file.sh \
t/remake-deleted-m4-file.sh \
t/remake-renamed-m4-file.sh \
t/remake-renamed-m4-macro-and-file.sh \
t/remake-renamed-m4-macro.sh \
t/remake-am-pr10111.sh \
t/remake-m4-pr10111.sh \
t/remake-deleted-am-2.sh \
t/remake-deleted-am-subdir.sh \
t/remake-deleted-am.sh \
t/remake-renamed-am.sh \
t/remake-aclocal-version-mismatch.sh \
t/remake-macrodir.sh \
t/remake-timing-bug-pr8365.sh \
t/reqd2.sh \
t/repeated-options.sh \
t/rm-f-probe.sh \
t/rulepat.sh \
t/self-check-cc-no-c-o.sh \
t/self-check-configure-help.sh \
t/self-check-dir.tap \
t/self-check-exit.tap \
t/self-check-explicit-skips.sh \
t/self-check-is_newest.tap \
t/self-check-me.tap \
t/self-check-report.sh \
t/self-check-seq.tap \
t/self-check-shell-no-trail-bslash.sh \
t/self-check-is-blocked-signal.tap \
t/self-check-unindent.tap \
t/sanity.sh \
t/seenc.sh \
t/silent-c.sh \
t/silent-cxx.sh \
t/silent-lt.sh \
t/silent-f77.sh \
t/silent-f90.sh \
t/silent-many-languages.sh \
t/silent-gen.sh \
t/silent-texi.sh \
t/silent-lex.sh \
t/silent-yacc.sh \
t/silent-yacc-headers.sh \
t/silent-configsite.sh \
t/silent-nested-vars.sh \
t/silent-custom.sh \
t/src-acsubst.sh \
t/sourcefile-in-subdir.sh \
t/space.sh \
t/specflg6.sh \
t/specflg7.sh \
t/specflg8.sh \
t/specflg9.sh \
t/specflg-dummy.sh \
t/spell.sh \
t/spell2.sh \
t/spell3.sh \
t/spelling.sh \
t/spy-double-colon.sh \
t/spy-rm.tap \
t/stdinc.sh \
t/stamph2.sh \
t/stdlib.sh \
t/stdlib2.sh \
t/strictness-override.sh \
t/strictness-precedence.sh \
t/strip.sh \
t/strip2.sh \
t/strip3.sh \
t/subdir.sh \
t/subdir-ac-subst.sh \
t/subdir-add-pr46.sh \
t/subdir-add2-pr46.sh \
t/subdir-am-cond.sh \
t/subdir-cond-err.sh \
t/subdir-cond-gettext.sh \
t/subdir-env-interference.sh \
t/subdir-order.sh \
t/subdir-with-slash.sh \
t/subdir-subsub.sh \
t/subdir-distclean.sh \
t/subdir-keep-going-pr12554.sh \
t/subobj.sh \
t/subobj2.sh \
t/subobj4.sh \
t/subobj5.sh \
t/subobj6.sh \
t/subobj7.sh \
t/subobj8.sh \
t/subobj9.sh \
t/subobj10.sh \
t/subobj11a.sh \
t/subobj11b.sh \
t/subobj11c.sh \
t/subobjname.sh \
t/subobj-clean-pr10697.sh \
t/subobj-clean-lt-pr10697.sh \
t/subobj-indir-pr13928.sh \
t/subobj-objname-clash.sh \
t/subobj-vpath-pr13928.sh \
t/subobj-pr13928-more-langs.sh \
t/subpkg.sh \
t/subpkg2.sh \
t/subpkg3.sh \
t/subpkg4.sh \
t/subpkg-yacc.sh \
t/subpkg-macrodir.sh \
t/subst.sh \
t/subst3.sh \
t/subst4.sh \
t/subst5.sh \
t/subst-no-trailing-empty-line.sh \
t/substref.sh \
t/substre2.sh \
t/substtarg.sh \
t/suffix.sh \
t/suffix2.sh \
t/suffix3.tap \
t/suffix4.sh \
t/suffix5.sh \
t/suffix6.sh \
t/suffix6b.sh \
t/suffix6c.sh \
t/suffix7.sh \
t/suffix8.tap \
t/suffix9.sh \
t/suffix10.tap \
t/suffix11.tap \
t/suffix-chain.tap \
t/suffix-custom-pr14441.sh \
t/suffix-custom-subobj.sh \
t/suffix-custom-subobj-and-specflg.sh \
t/suffix-extra-c-stuff-pr14560.sh \
t/symlink.sh \
t/symlink2.sh \
t/syntax.sh \
t/tap-ambiguous-directive.sh \
t/tap-autonumber.sh \
t/tap-bailout.sh \
t/tap-bailout-leading-space.sh \
t/tap-bailout-and-logging.sh \
t/tap-bailout-suppress-badexit.sh \
t/tap-bailout-suppress-later-diagnostic.sh \
t/tap-bailout-suppress-later-errors.sh \
t/tap-color.sh \
t/tap-deps.sh \
t/tap-diagnostic.sh \
t/tap-empty-diagnostic.sh \
t/tap-empty.sh \
t/tap-escape-directive.sh \
t/tap-escape-directive-2.sh \
t/tap-exit.sh \
t/tap-signal.tap \
t/tap-fancy.sh \
t/tap-fancy2.sh \
t/tap-global-log.sh \
t/tap-global-result.sh \
t/tap-log.sh \
t/tap-msg0-result.sh \
t/tap-msg0-directive.sh \
t/tap-msg0-planskip.sh \
t/tap-msg0-bailout.sh \
t/tap-msg0-misc.sh \
t/tap-merge-stdout-stderr.sh \
t/tap-no-merge-stdout-stderr.sh \
t/tap-no-disable-hard-error.sh \
t/tap-no-spurious-summary.sh \
t/tap-no-spurious-numbers.sh \
t/tap-no-spurious.sh \
t/tap-not-ok-skip.sh \
t/tap-number-wordboundary.sh \
t/tap-numeric-description.sh \
t/tap-negative-numbers.sh \
t/tap-numbers-leading-zero.sh \
t/tap-out-of-order.sh \
t/tap-passthrough.sh \
t/tap-passthrough-exit.sh \
t/tap-plan.sh \
t/tap-plan-corner.sh \
t/tap-plan-errors.sh \
t/tap-plan-middle.sh \
t/tap-plan-whitespace.sh \
t/tap-plan-leading-zero.sh \
t/tap-plan-malformed.sh \
t/tap-missing-plan-and-bad-exit.sh \
t/tap-planskip.sh \
t/tap-planskip-late.sh \
t/tap-planskip-and-logging.sh \
t/tap-planskip-unplanned.sh \
t/tap-planskip-unplanned-corner.sh \
t/tap-planskip-case-insensitive.sh \
t/tap-planskip-whitespace.sh \
t/tap-planskip-badexit.sh \
t/tap-planskip-bailout.sh \
t/tap-planskip-later-errors.sh \
t/tap-test-number-0.sh \
t/tap-recheck-logs.sh \
t/tap-result-comment.sh \
t/tap-todo-skip-together.sh \
t/tap-todo-skip-whitespace.sh \
t/tap-todo-skip.sh \
t/tap-unplanned.sh \
t/tap-whitespace-normalization.sh \
t/tap-with-and-without-number.sh \
t/tap-xfail-tests.sh \
t/tap-common-setup.sh \
t/tap-bad-prog.tap \
t/tap-basic.sh \
t/tap-diagnostic-custom.sh \
t/tap-driver-stderr.sh \
t/tap-doc.sh \
t/tap-doc2.sh \
t/tap-more.sh \
t/tap-more2.sh \
t/tap-recheck.sh \
t/tap-summary.sh \
t/tap-summary-color.sh \
t/tags.sh \
t/tags2.sh \
t/tagsub.sh \
t/tags-lisp-space.sh \
t/tags-pr12372.sh \
t/tar-ustar.sh \
t/tar-pax.sh \
t/tar-opts-errors.sh \
t/tar-ustar-id-too-high.sh \
t/tar-override.sh \
t/target-cflags.sh \
t/targetclash.sh \
t/tests-environment-fd-redirect.sh \
t/tests-environment-and-log-compiler.sh \
t/txinfo-absolute-srcdir-pr408.sh \
t/txinfo-add-missing-and-dist.sh \
t/txinfo-bsd-make-recurs.sh \
t/txinfo-builddir.sh \
t/txinfo-clean.sh \
t/txinfo-dvi-recurs.sh \
t/txinfo-info-in-srcdir.sh \
t/txinfo-include.sh \
t/txinfo-makeinfo-error-no-clobber.sh \
t/txinfo-many-output-formats.sh \
t/txinfo-many-output-formats-vpath.sh \
t/txinfo-nodist-info.sh \
t/txinfo-no-clutter.sh \
t/txinfo-no-extra-dist.sh \
t/txinfo-no-installinfo.sh \
t/txinfo-no-repeated-targets.sh \
t/txinfo-no-setfilename.sh \
t/txinfo-other-suffixes.sh \
t/txinfo-override-infodeps.sh \
t/txinfo-override-texinfo-tex.sh \
t/txinfo-setfilename-repeated.sh \
t/txinfo-setfilename-suffix-strip.sh \
t/txinfo-subdir-pr343.sh \
t/txinfo-tex-dist.sh \
t/txinfo-unrecognized-extension.sh \
t/txinfo-unrecognized-info-suffix.sh \
t/txinfo-vtexi.sh \
t/txinfo-vtexi2.sh \
t/txinfo-vtexi3.sh \
t/txinfo-vtexi4.sh \
t/txinfo-without-info-suffix.sh \
t/txinfo19.sh \
t/txinfo23.sh \
t/txinfo24.sh \
t/txinfo25.sh \
t/txinfo28.sh \
t/transform.sh \
t/transform2.sh \
t/transform3.sh \
t/uninstall-fail.sh \
t/uninstall-pr9578.sh \
t/unused.sh \
t/upc.sh \
t/upc2.sh \
t/upc3.sh \
t/vala-configure.sh \
t/vala-grepping.sh \
t/vala-headers.sh \
t/vala-libs.sh \
t/vala-mix.sh \
t/vala-mix2.sh \
t/vala-non-recursive-setup.sh \
t/vala-parallel.sh \
t/vala-per-target-flags.sh \
t/vala-recursive-setup.sh \
t/vala-vapi.sh \
t/vala-vpath.sh \
t/vars.sh \
t/vars3.sh \
t/var-recurs.sh \
t/var-recurs2.sh \
t/vartar.sh \
t/vartypos.sh \
t/vartypo2.sh \
t/version3.sh \
t/version4.sh \
t/version6.sh \
t/version7.sh \
t/version8.sh \
t/vpath.sh \
t/warnings-obsolete-default.sh \
t/warnings-override.sh \
t/warnings-precedence.sh \
t/warnings-strictness-interactions.sh \
t/warnings-unknown.sh \
t/warnopts.sh \
t/warnings-win-over-strictness.sh \
t/warning-groups-win-over-strictness.sh \
t/werror.sh \
t/werror2.sh \
t/werror3.sh \
t/werror4.sh \
t/whoami.sh \
t/xsource.sh \
t/yacc-misc.sh \
t/yacc-dry.sh \
t/yacc-cxx-grepping.sh \
t/yacc-vpath.sh \
t/yacc-auxdir.sh \
t/yacc-basic.sh \
t/yacc-cxx.sh \
t/yacc-bison-skeleton-cxx.sh \
t/yacc-bison-skeleton.sh \
t/yacc-clean.sh \
t/yacc-clean-cxx.sh \
t/yacc-d-basic.sh \
t/yacc-d-cxx.sh \
t/yacc-d-vpath.sh \
t/yacc-deleted-headers.sh \
t/yacc-depend.sh \
t/yacc-depend2.sh \
t/yacc-dist-nobuild-subdir.sh \
t/yacc-dist-nobuild.sh \
t/yacc-grepping.sh \
t/yacc-grepping2.sh \
t/yacc-headers-and-dist-pr47.sh \
t/yacc-line.sh \
t/yacc-mix-c-cxx.sh \
t/yacc-nodist.sh \
t/yacc-pr204.sh \
t/yacc-subdir.sh \
t/yacc-weirdnames.sh \
t/yflags.sh \
t/yflags-cxx.sh \
t/yflags-cmdline-override.sh \
t/yflags-conditional.sh \
t/yflags-d-false-positives.sh \
t/yflags-force-conditional.sh \
t/yflags-force-override.sh \
t/yflags-var-expand.sh \
t/libtool-macros.sh \
t/gettext-macros.sh \
t/pkg-config-macros.sh

print-list-of-tests:
	@echo $(handwritten_TESTS)
.PHONY: print-list-of-tests
