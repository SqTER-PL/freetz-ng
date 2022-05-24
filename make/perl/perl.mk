$(call PKG_INIT_BIN, 5.32.1)
$(PKG)_SOURCE:=perl-$($(PKG)_VERSION).tar.gz
$(PKG)_HASH:=03b693901cd8ae807231b1787798cf1f2e0b8a56218d07b7da44f784a7caeb2c
$(PKG)_SITE:=http://www.cpan.org/src/5.0

# partly taken from www.buildroot.org
$(PKG)_SOURCES:=
$(PKG)_ADDITIONAL_CPAN_MODULES:=

$(PKG)_CROSS_VERSION:=1.3.5
$(PKG)_CROSS_DIR:=$(PERL_DIR)
$(PKG)_CROSS_SOURCE:=perl-cross-$($(PKG)_CROSS_VERSION).tar.gz
$(PKG)_CROSS_HASH:=91c66f6b2b99fccfd4fee14660b677380b0c98f9456359e91449798c2ad2ef25
$(PKG)_CROSS_SITE:=https://github.com/arsv/perl-cross/releases/download/$($(PKG)_CROSS_VERSION)
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_CROSS_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += CROSS

$(PKG)_JSON_VERSION:=2.94
$(PKG)_JSON_DIR:=$(PERL_DIR)/cpan/JSON
$(PKG)_JSON_SOURCE:=JSON-$($(PKG)_JSON_VERSION).tar.gz
$(PKG)_JSON_HASH:=12271b5cee49943bbdde430eef58f1fe64ba6561980b22c69585e08fc977dc6d
$(PKG)_JSON_SITE:=http://search.cpan.org/CPAN/authors/id/I/IS/ISHIGAKI
$(PKG)_JSON_PATCH:=JSON_Makefile.PL
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_JSON_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += JSON

$(PKG)_ERROR_VERSION:=0.17025
$(PKG)_ERROR_DIR:=$(PERL_DIR)/cpan/Error
$(PKG)_ERROR_SOURCE:=Error-$($(PKG)_ERROR_VERSION).tar.gz
$(PKG)_ERROR_HASH:=6c9f474ad3d4fe0cabff6b6be532cb1dd348245986d4a6b600ad921d5cfdefaf
$(PKG)_ERROR_SITE:=http://search.cpan.org/CPAN/authors/id/S/SH/SHLOMIF
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_ERROR_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += ERROR
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Error

$(PKG)_INCLATEST_VERSION:=0.500
$(PKG)_INCLATEST_DIR:=$(PERL_DIR)/cpan/inc-latest
$(PKG)_INCLATEST_SOURCE:=inc-latest-$($(PKG)_INCLATEST_VERSION).tar.gz
$(PKG)_INCLATEST_HASH:=daa905f363c6a748deb7c408473870563fcac79b9e3e95b26e130a4a8dc3c611
$(PKG)_INCLATEST_SITE:=http://search.cpan.org/CPAN/authors/id/D/DA/DAGOLDEN
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_INCLATEST_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += INCLATEST
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += inc::latest

$(PKG)_TIMEDATE_VERSION:=2.30
$(PKG)_TIMEDATE_DIR:=$(PERL_DIR)/cpan/TimeDate
$(PKG)_TIMEDATE_SOURCE:=TimeDate-$($(PKG)_TIMEDATE_VERSION).tar.gz
$(PKG)_TIMEDATE_HASH:=75bd254871cb5853a6aa0403ac0be270cdd75c9d1b6639f18ecba63c15298e86
$(PKG)_TIMEDATE_SITE:=http://cpan.metacpan.org/authors/id/G/GB/GBARR
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_TIMEDATE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += TIMEDATE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += TimeDate

ifeq ($(FREETZ_OPENSSL_VERSION_1),y)
$(PKG)_NETSSLEAY_VERSION:=1.82
$(PKG)_NETSSLEAY_DIR:=$(PERL_DIR)/cpan/Net-SSLeay
$(PKG)_NETSSLEAY_SOURCE:=Net-SSLeay-$($(PKG)_NETSSLEAY_VERSION).tar.gz
$(PKG)_NETSSLEAY_HASH:=5895c519c9986a5e5af88e3b8884bbdc70e709ee829dc6abb9f53155c347c7e5
$(PKG)_NETSSLEAY_SITE:=http://search.cpan.org/CPAN/authors/id/M/MI/MIKEM
$(PKG)_NETSSLEAY_PATCH:=Net-SSLeay_Makefile.PL
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_NETSSLEAY_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += NETSSLEAY
$(PKG)_IOSOCKETSSL_VERSION:=2.052
$(PKG)_IOSOCKETSSL_DIR:=$(PERL_DIR)/cpan/IO-Socket-SSL
$(PKG)_IOSOCKETSSL_SOURCE:=IO-Socket-SSL-$($(PKG)_IOSOCKETSSL_VERSION).tar.gz
$(PKG)_IOSOCKETSSL_HASH:=e4897a9b17cb18a3c44aa683980d52cef534cdfcb8063d6877c879bfa2f26673
$(PKG)_IOSOCKETSSL_SITE:=http://search.cpan.org/CPAN/authors/id/S/SU/SULLR
$(PKG)_IOSOCKETSSL_PATCH:=IO-Socket-SSL_Makefile.PL
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_IOSOCKETSSL_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += IOSOCKETSSL
$(PKG)_REBUILD_SUBOPTS += FREETZ_OPENSSL_SHLIB_VERSION
$(PKG)_DEPENDS_ON += openssl
endif

ifeq ($(FREETZ_PACKAGE_SQLITE),y)
$(PKG)_DBI_VERSION:=1.637
$(PKG)_DBI_DIR:=$(PERL_DIR)/cpan/DBI
$(PKG)_DBI_SOURCE:=DBI-$($(PKG)_DBI_VERSION).tar.gz
$(PKG)_DBI_HASH:=2557712593e80142c3b50877e00369b6ce78fa26d44edc42156d81a5cdd26bc6
$(PKG)_DBI_SITE:=http://search.cpan.org/CPAN/authors/id/T/TI/TIMB
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_DBI_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += DBI
$(PKG)_DBDSQLITE_VERSION:=1.54
$(PKG)_DBDSQLITE_DIR:=$(PERL_DIR)/cpan/DBD-SQLite
$(PKG)_DBDSQLITE_SOURCE:=DBD-SQLite-$($(PKG)_DBDSQLITE_VERSION).tar.gz
$(PKG)_DBDSQLITE_HASH:=3929a6dbd8d71630f0cb57f85dcef9588cd7ac4c9fa12db79df77b9d3a4d7269
$(PKG)_DBDSQLITE_SITE:=http://search.cpan.org/CPAN/authors/id/I/IS/ISHIGAKI
$(PKG)_DBDSQLITE_PATCH:=DBD-SQLite_Makefile.PL
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_DBDSQLITE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += DBDSQLITE
endif

$(PKG)_MODULEBUILD_VERSION:=0.4224
$(PKG)_MODULEBUILD_DIR:=$(PERL_DIR)/cpan/Module-Build
$(PKG)_MODULEBUILD_SOURCE:=Module-Build-$($(PKG)_MODULEBUILD_VERSION).tar.gz
$(PKG)_MODULEBUILD_HASH:=a6ca15d78244a7b50fdbf27f85c85f4035aa799ce7dd018a0d98b358ef7bc782
$(PKG)_MODULEBUILD_SITE:=http://search.cpan.org/CPAN/authors/id/L/LE/LEONT
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_MODULEBUILD_SOURCE
#$(PKG)_ADDITIONAL_CPAN_MODULES += MODULEBUILD
#$(PKG)_ADDITIONAL_CPAN_MODULES_EXTRA += Module::Build

#ifeq ($(FREETZ_PACKAGE_PERL_NETADDRESSIPLOCAL),y)
$(PKG)_NETADDRESSIPLOCAL_VERSION:=0.1.2
$(PKG)_NETADDRESSIPLOCAL_DIR:=$(PERL_DIR)/cpan/Net-Address-IP-Local
$(PKG)_NETADDRESSIPLOCAL_SOURCE:=Net-Address-IP-Local-$($(PKG)_NETADDRESSIPLOCAL_VERSION).tar.gz
$(PKG)_NETADDRESSIPLOCAL_HASH:=c43bfdeda996cfa90e35a48782d8304171a0527087c0f88a629a237296228c36
$(PKG)_NETADDRESSIPLOCAL_SITE:=http://search.cpan.org/CPAN/authors/id/J/JM/JMEHNLE/net-address-ip-local
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_NETADDRESSIPLOCAL_SOURCE
#$(PKG)_ADDITIONAL_CPAN_MODULES += NETADDRESSIPLOCAL
#$(PKG)_ADDITIONAL_CPAN_MODULES_EXTRA += Net::Address::IP::Local
#endif

ifeq ($(FREETZ_PACKAGE_PERL_HTMLPARSER),y)
$(PKG)_HTMLPARSER_VERSION:=3.72
$(PKG)_HTMLPARSER_DIR:=$(PERL_DIR)/cpan/HTML-Parser
$(PKG)_HTMLPARSER_SOURCE:=HTML-Parser-$($(PKG)_HTMLPARSER_VERSION).tar.gz
$(PKG)_HTMLPARSER_HASH:=ec28c7e1d9e67c45eca197077f7cdc41ead1bb4c538c7f02a3296a4bb92f608b
$(PKG)_HTMLPARSER_SITE:=http://search.cpan.org/CPAN/authors/id/G/GA/GAAS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_HTMLPARSER_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += HTMLPARSER
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += HTML::Parser
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLSIMPLE),y)
$(PKG)_XMLSIMPLE_VERSION:=2.24
$(PKG)_XMLSIMPLE_DIR:=$(PERL_DIR)/cpan/XML-Simple
$(PKG)_XMLSIMPLE_SOURCE:=XML-Simple-$($(PKG)_XMLSIMPLE_VERSION).tar.gz
$(PKG)_XMLSIMPLE_HASH:=9a14819fd17c75fbb90adcec0446ceab356cab0ccaff870f2e1659205dc2424f
$(PKG)_XMLSIMPLE_SITE:=http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLSIMPLE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += XMLSIMPLE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += XML::Simple
endif

ifeq ($(FREETZ_PACKAGE_PERL_PODSIMPLE),y)
$(PKG)_PODSIMPLE_VERSION:=3.35
$(PKG)_PODSIMPLE_DIR:=$(PERL_DIR)/cpan/Pod-Simple
$(PKG)_PODSIMPLE_SOURCE:=Pod-Simple-$($(PKG)_PODSIMPLE_VERSION).tar.gz
$(PKG)_PODSIMPLE_HASH:=99a120ccd2146e8b352b7778f7ae021f7525419764eb05b8125400b6560ce13d
$(PKG)_PODSIMPLE_SITE:=http://search.cpan.org/CPAN/authors/id/K/KH/KHW
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_PODSIMPLE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += PODSIMPLE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Pod::Simple
endif

ifeq ($(FREETZ_PACKAGE_PERL_IOSOCKETIP),y)
$(PKG)_IOSOCKETIP_VERSION:=0.39
$(PKG)_IOSOCKETIP_DIR:=$(PERL_DIR)/cpan/IO-Socket-IP
$(PKG)_IOSOCKETIP_SOURCE:=IO-Socket-IP-$($(PKG)_IOSOCKETIP_VERSION).tar.gz
$(PKG)_IOSOCKETIP_HASH:=11950da7636cb786efd3bfb5891da4c820975276bce43175214391e5c32b7b96
$(PKG)_IOSOCKETIP_SITE:=http://search.cpan.org/CPAN/authors/id/P/PE/PEVANS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_IOSOCKETIP_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += IOSOCKETIP
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += IO::Socket::IP
endif

ifeq ($(FREETZ_PACKAGE_PERL_LOCALECODES),y)
$(PKG)_LOCALECODES_VERSION:=3.56
$(PKG)_LOCALECODES_DIR:=$(PERL_DIR)/cpan/Locale-Codes
$(PKG)_LOCALECODES_SOURCE:=Locale-Codes-$($(PKG)_LOCALECODES_VERSION).tar.gz
$(PKG)_LOCALECODES_HASH:=d82f3340ecb7f8700493df0273dede0c049fbc44c2fe1e811fc6c5a79b79ae79
$(PKG)_LOCALECODES_SITE:=http://search.cpan.org/CPAN/authors/id/S/SB/SBECK
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_LOCALECODES_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += LOCALECODES
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Locale::Codes
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLSAXBASE),y)
$(PKG)_XMLSAXBASE_VERSION:=1.09
$(PKG)_XMLSAXBASE_DIR:=$(PERL_DIR)/cpan/XML-SAX-Base
$(PKG)_XMLSAXBASE_SOURCE:=XML-SAX-Base-$($(PKG)_XMLSAXBASE_VERSION).tar.gz
$(PKG)_XMLSAXBASE_HASH:=66cb355ba4ef47c10ca738bd35999723644386ac853abbeb5132841f5e8a2ad0
$(PKG)_XMLSAXBASE_SITE:=http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLSAXBASE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += XMLSAXBASE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += XML::SAX::Base
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLPARSER),y)
$(PKG)_XMLPARSER_VERSION:=2.36
$(PKG)_XMLPARSER_DIR:=$(PERL_DIR)/cpan/XML-Parser
$(PKG)_XMLPARSER_SOURCE:=XML-Parser-$($(PKG)_XMLPARSER_VERSION).tar.gz
$(PKG)_XMLPARSER_HASH:=9fd529867402456bd826fe0e5588d35b3a2e27e586a2fd838d1352b71c2ed73f
$(PKG)_XMLPARSER_SITE:=http://search.cpan.org/CPAN/authors/id/M/MS/MSERGEANT
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLPARSER_SOURCE
#$(PKG)_ADDITIONAL_CPAN_MODULES += XMLPARSER
$(PKG)_ADDITIONAL_CPAN_MODULES_EXTRA += XML::Parser
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLSAXEXPAT),y)
$(PKG)_XMLSAXEXPAT_VERSION:=0.40
$(PKG)_XMLSAXEXPAT_DIR:=$(PERL_DIR)/cpan/XML-SAX-Expat
$(PKG)_XMLSAXEXPAT_SOURCE:=XML-SAX-Expat-$($(PKG)_XMLSAXEXPAT_VERSION).tar.gz
$(PKG)_XMLSAXEXPAT_HASH:=4b477dd7afba6e8d3f6117a28a2012381f8635e5cfb996d3cd4d0ee624c39930
$(PKG)_XMLSAXEXPAT_SITE:=http://search.cpan.org/CPAN/authors/id/B/BJ/BJOERN
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLSAXEXPAT_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += XMLSAXEXPAT
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += XML::SAX::Expat
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLNAMESPACESUPPORT),y)
$(PKG)_XMLNAMESPACESUPPORT_VERSION:=1.12
$(PKG)_XMLNAMESPACESUPPORT_DIR:=$(PERL_DIR)/cpan/XML-NamespaceSupport
$(PKG)_XMLNAMESPACESUPPORT_SOURCE:=XML-NamespaceSupport-$($(PKG)_XMLNAMESPACESUPPORT_VERSION).tar.gz
$(PKG)_XMLNAMESPACESUPPORT_HASH:=47e995859f8dd0413aa3f22d350c4a62da652e854267aa0586ae544ae2bae5ef
$(PKG)_XMLNAMESPACESUPPORT_SITE:=http://search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLNAMESPACESUPPORT_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += XMLNAMESPACESUPPORT
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += XML::NamespaceSupport
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLSAX),y)
$(PKG)_XMLSAX_VERSION:=0.99
$(PKG)_XMLSAX_DIR:=$(PERL_DIR)/cpan/XML-SAX
$(PKG)_XMLSAX_SOURCE:=XML-SAX-$($(PKG)_XMLSAX_VERSION).tar.gz
$(PKG)_XMLSAX_HASH:=32b04b8e36b6cc4cfc486de2d859d87af5386dd930f2383c49347050d6f5ad84
$(PKG)_XMLSAX_SITE:=http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLSAX_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += XMLSAX
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += XML::SAX
endif

ifeq ($(FREETZ_PACKAGE_PERL_ENCODELOCALE),y)
$(PKG)_ENCODELOCALE_VERSION:=1.05
$(PKG)_ENCODELOCALE_DIR:=$(PERL_DIR)/cpan/Encode-Locale
$(PKG)_ENCODELOCALE_SOURCE:=Encode-Locale-$($(PKG)_ENCODELOCALE_VERSION).tar.gz
$(PKG)_ENCODELOCALE_HASH:=176fa02771f542a4efb1dbc2a4c928e8f4391bf4078473bd6040d8f11adb0ec1
$(PKG)_ENCODELOCALE_SITE:=http://search.cpan.org/CPAN/authors/id/G/GA/GAAS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_ENCODELOCALE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += ENCODELOCALE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Encode::Locale
endif

ifeq ($(FREETZ_PACKAGE_PERL_SCALARLISTUTILS),y)
$(PKG)_SCALARLISTUTILS_VERSION:=1.50
$(PKG)_SCALARLISTUTILS_DIR:=$(PERL_DIR)/cpan/Scalar-List-Utils
$(PKG)_SCALARLISTUTILS_SOURCE:=Scalar-List-Utils-$($(PKG)_SCALARLISTUTILS_VERSION).tar.gz
$(PKG)_SCALARLISTUTILS_HASH:=06aab9c693380190e53be09be7daed20c5d6278f71956989c24cca7782013675
$(PKG)_SCALARLISTUTILS_SITE:=http://search.cpan.org/CPAN/authors/id/P/PE/PEVANS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_SCALARLISTUTILS_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += SCALARLISTUTILS
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Scalar::List::Utils
endif

ifeq ($(FREETZ_PACKAGE_PERL_DATAUUID),y)
$(PKG)_DATAUUID_VERSION:=1.221
$(PKG)_DATAUUID_DIR:=$(PERL_DIR)/cpan/Data-UUID
$(PKG)_DATAUUID_SOURCE:=Data-UUID-$($(PKG)_DATAUUID_VERSION).tar.gz
$(PKG)_DATAUUID_HASH:=3cc7b2a3a7b74b45a059e013f7fd878078500ea4b7269036f84556b022078667
$(PKG)_DATAUUID_SITE:=http://search.cpan.org/CPAN/authors/id/R/RJ/RJBS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_DATAUUID_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += DATAUUID
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Data::UUID
endif

ifeq ($(FREETZ_PACKAGE_PERL_LIBWWWPERL),y)
$(PKG)_LIBWWWPERL_VERSION:=6.33
$(PKG)_LIBWWWPERL_DIR:=$(PERL_DIR)/cpan/libwww-perl
$(PKG)_LIBWWWPERL_SOURCE:=libwww-perl-$($(PKG)_LIBWWWPERL_VERSION).tar.gz
$(PKG)_LIBWWWPERL_HASH:=97417386f11f007ae129fe155b82fd8969473ce396a971a664c8ae6850c69b99
$(PKG)_LIBWWWPERL_SITE:=http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_LIBWWWPERL_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += LIBWWWPERL
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += libwww-perl
endif

ifeq ($(FREETZ_PACKAGE_PERL_IOHTML),y)
$(PKG)_IOHTML_VERSION:=1.001
$(PKG)_IOHTML_DIR:=$(PERL_DIR)/cpan/IO-HTML
$(PKG)_IOHTML_SOURCE:=IO-HTML-$($(PKG)_IOHTML_VERSION).tar.gz
$(PKG)_IOHTML_HASH:=ea78d2d743794adc028bc9589538eb867174b4e165d7d8b5f63486e6b828e7e0
$(PKG)_IOHTML_SITE:=http://search.cpan.org/CPAN/authors/id/C/CJ/CJM
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_IOHTML_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += IOHTML
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += IO::HTML
endif

ifeq ($(FREETZ_PACKAGE_PERL_HTTPNEGOTIATE),y)
$(PKG)_HTTPNEGOTIATE_VERSION:=6.01
$(PKG)_HTTPNEGOTIATE_DIR:=$(PERL_DIR)/cpan/HTTP-Negotiate
$(PKG)_HTTPNEGOTIATE_SOURCE:=HTTP-Negotiate-$($(PKG)_HTTPNEGOTIATE_VERSION).tar.gz
$(PKG)_HTTPNEGOTIATE_HASH:=1c729c1ea63100e878405cda7d66f9adfd3ed4f1d6cacaca0ee9152df728e016
$(PKG)_HTTPNEGOTIATE_SITE:=http://search.cpan.org/CPAN/authors/id/G/GA/GAAS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_HTTPNEGOTIATE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += HTTPNEGOTIATE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += HTTP::Negotiate
endif

ifeq ($(FREETZ_PACKAGE_PERL_NETHTTP),y)
$(PKG)_NETHTTP_VERSION:=6.17
$(PKG)_NETHTTP_DIR:=$(PERL_DIR)/cpan/Net-HTTP
$(PKG)_NETHTTP_SOURCE:=Net-HTTP-$($(PKG)_NETHTTP_VERSION).tar.gz
$(PKG)_NETHTTP_HASH:=1e8624b1618dc6f7f605f5545643ebb9b833930f4d7485d4124aa2f2f26d1611
$(PKG)_NETHTTP_SITE:=http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_NETHTTP_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += NETHTTP
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Net::HTTP
endif

ifeq ($(FREETZ_PACKAGE_PERL_HTTPCOOKIES),y)
$(PKG)_HTTPCOOKIES_VERSION:=6.04
$(PKG)_HTTPCOOKIES_DIR:=$(PERL_DIR)/cpan/HTTP-Cookies
$(PKG)_HTTPCOOKIES_SOURCE:=HTTP-Cookies-$($(PKG)_HTTPCOOKIES_VERSION).tar.gz
$(PKG)_HTTPCOOKIES_HASH:=0cc7f079079dcad8293fea36875ef58dd1bfd75ce1a6c244cd73ed9523eb13d4
$(PKG)_HTTPCOOKIES_SITE:=http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_HTTPCOOKIES_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += HTTPCOOKIES
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += HTTP::Cookies
endif

ifeq ($(FREETZ_PACKAGE_PERL_CRYPTRIJNDAEL),y)
$(PKG)_CRYPTRIJNDAEL_VERSION:=1.13
$(PKG)_CRYPTRIJNDAEL_DIR:=$(PERL_DIR)/cpan/Crypt-Rijndael
$(PKG)_CRYPTRIJNDAEL_SOURCE:=Crypt-Rijndael-$($(PKG)_CRYPTRIJNDAEL_VERSION).tar.gz
$(PKG)_CRYPTRIJNDAEL_HASH:=cd7209a6dfe0a3dc8caffe1aa2233b0e6effec7572d76a7a93feefffe636214e
$(PKG)_CRYPTRIJNDAEL_SITE:=http://search.cpan.org/CPAN/authors/id/L/LE/LEONT
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_CRYPTRIJNDAEL_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += CRYPTRIJNDAEL
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Crypt::Rijndael
endif

ifeq ($(FREETZ_PACKAGE_PERL_NETTELNET),y)
$(PKG)_NETTELNET_VERSION:=3.04
$(PKG)_NETTELNET_DIR:=$(PERL_DIR)/cpan/Net-Telnet
$(PKG)_NETTELNET_SOURCE:=Net-Telnet-$($(PKG)_NETTELNET_VERSION).tar.gz
$(PKG)_NETTELNET_HASH:=e64d567a4e16295ecba949368e7a6b8b5ae2a16b3ad682121d9b007dc5d2a37a
$(PKG)_NETTELNET_SITE:=http://search.cpan.org/CPAN/authors/id/J/JR/JROGERS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_NETTELNET_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += NETTELNET
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Net::HTTP
endif

ifeq ($(FREETZ_PACKAGE_PERL_HTTPMESSAGE),y)
$(PKG)_HTTPMESSAGE_VERSION:=6.15
$(PKG)_HTTPMESSAGE_DIR:=$(PERL_DIR)/cpan/HTTP-Message
$(PKG)_HTTPMESSAGE_SOURCE:=HTTP-Message-$($(PKG)_HTTPMESSAGE_VERSION).tar.gz
$(PKG)_HTTPMESSAGE_HASH:=7b244a193b6ffb9728a4cb25a09bc7c938956baa2ee1983ee2cbc4ed75dccb85
$(PKG)_HTTPMESSAGE_SITE:=http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_HTTPMESSAGE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += HTTPMESSAGE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += HTTP::Message
endif

ifeq ($(FREETZ_PACKAGE_PERL_HTTPDATE),y)
$(PKG)_HTTPDATE_VERSION:=6.02
$(PKG)_HTTPDATE_DIR:=$(PERL_DIR)/cpan/HTTP-Date
$(PKG)_HTTPDATE_SOURCE:=HTTP-Date-$($(PKG)_HTTPDATE_VERSION).tar.gz
$(PKG)_HTTPDATE_HASH:=e8b9941da0f9f0c9c01068401a5e81341f0e3707d1c754f8e11f42a7e629e333
$(PKG)_HTTPDATE_SITE:=http://search.cpan.org/CPAN/authors/id/G/GA/GAAS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_HTTPDATE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += HTTPDATE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += HTTP::Date
endif

ifeq ($(FREETZ_PACKAGE_PERL_XMLPARSERLITE),y)
$(PKG)_XMLPARSERLITE_VERSION:=0.721
$(PKG)_XMLPARSERLITE_DIR:=$(PERL_DIR)/cpan/XML-Parser-Lite
$(PKG)_XMLPARSERLITE_SOURCE:=XML-Parser-Lite-$($(PKG)_XMLPARSERLITE_VERSION).tar.gz
$(PKG)_XMLPARSERLITE_HASH:=5862a36ecab9db9aad021839c847e8d2f4ab5a7796c61d0fb069bb69cf7908ba
$(PKG)_XMLPARSERLITE_SITE:=http://search.cpan.org/CPAN/authors/id/P/PH/PHRED
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_XMLPARSERLITE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += XMLPARSERLITE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += XML::Parser::Lite
endif

ifeq ($(FREETZ_PACKAGE_PERL_CLASSINSPECTOR),y)
$(PKG)_CLASSINSPECTOR_VERSION:=1.32
$(PKG)_CLASSINSPECTOR_DIR:=$(PERL_DIR)/cpan/Class-Inspector
$(PKG)_CLASSINSPECTOR_SOURCE:=Class-Inspector-$($(PKG)_CLASSINSPECTOR_VERSION).tar.gz
$(PKG)_CLASSINSPECTOR_HASH:=cefadc8b5338e43e570bc43f583e7c98d535c17b196bcf9084bb41d561cc0535
$(PKG)_CLASSINSPECTOR_SITE:=http://search.cpan.org/CPAN/authors/id/P/PL/PLICEASE
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_CLASSINSPECTOR_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += CLASSINSPECTOR
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Class::Inspector
endif

ifeq ($(FREETZ_PACKAGE_PERL_SOAPLITE),y)
$(PKG)_SOAPLITE_VERSION:=1.26
$(PKG)_SOAPLITE_DIR:=$(PERL_DIR)/cpan/SOAP-Lite
$(PKG)_SOAPLITE_SOURCE:=SOAP-Lite-$($(PKG)_SOAPLITE_VERSION).tar.gz
$(PKG)_SOAPLITE_HASH:=ecbcf8312cb0890b359aafcf1c7d2af8ff708af2ce3cc0ecd8947d5118f902ff
$(PKG)_SOAPLITE_SITE:=http://search.cpan.org/CPAN/authors/id/P/PH/PHRED
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_SOAPLITE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += SOAPLITE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += SOAP::Lite
endif

ifeq ($(FREETZ_PACKAGE_PERL_LWPMEDIATYPES),y)
$(PKG)_LWPMEDIATYPES_VERSION:=6.02
$(PKG)_LWPMEDIATYPES_DIR:=$(PERL_DIR)/cpan/LWP-MediaTypes
$(PKG)_LWPMEDIATYPES_SOURCE:=LWP-MediaTypes-$($(PKG)_LWPMEDIATYPES_VERSION).tar.gz
$(PKG)_LWPMEDIATYPES_HASH:=18790b0cc5f0a51468495c3847b16738f785a2d460403595001e0b932e5db676
$(PKG)_LWPMEDIATYPES_SITE:=http://search.cpan.org/CPAN/authors/id/G/GA/GAAS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_LWPMEDIATYPES_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += LWPMEDIATYPES
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += LWP::MediaTypes
endif

ifeq ($(FREETZ_PACKAGE_PERL_HTTPDAEMON),y)
$(PKG)_HTTPDAEMON_VERSION:=6.01
$(PKG)_HTTPDAEMON_DIR:=$(PERL_DIR)/cpan/HTTP-Daemon
$(PKG)_HTTPDAEMON_SOURCE:=HTTP-Daemon-$($(PKG)_HTTPDAEMON_VERSION).tar.gz
$(PKG)_HTTPDAEMON_HASH:=43fd867742701a3f9fcc7bd59838ab72c6490c0ebaf66901068ec6997514adc2
$(PKG)_HTTPDAEMON_SITE:=http://search.cpan.org/CPAN/authors/id/G/GA/GAAS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_HTTPDAEMON_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += HTTPDAEMON
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += HTTP::Daemon
endif

ifeq ($(FREETZ_PACKAGE_PERL_TRYTINY),y)
$(PKG)_TRYTINY_VERSION:=0.30
$(PKG)_TRYTINY_DIR:=$(PERL_DIR)/cpan/Try-Tiny
$(PKG)_TRYTINY_SOURCE:=Try-Tiny-$($(PKG)_TRYTINY_VERSION).tar.gz
$(PKG)_TRYTINY_HASH:=da5bd0d5c903519bbf10bb9ba0cb7bcac0563882bcfe4503aee3fb143eddef6b
$(PKG)_TRYTINY_SITE:=http://search.cpan.org/CPAN/authors/id/E/ET/ETHER
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_TRYTINY_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += TRYTINY
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Try::Tiny
endif

ifeq ($(FREETZ_PACKAGE_PERL_IOINTERFACE),y)
$(PKG)_IOINTERFACE_VERSION:=1.09
$(PKG)_IOINTERFACE_DIR:=$(PERL_DIR)/cpan/IO-Interface
$(PKG)_IOINTERFACE_SOURCE:=IO-Interface-$($(PKG)_IOINTERFACE_VERSION).tar.gz
$(PKG)_IOINTERFACE_HASH:=e63e81c52eb1e0e60ec2d983f5552d2493e117179925c96757f23c4bd9fa713a
$(PKG)_IOINTERFACE_SITE:=http://search.cpan.org/CPAN/authors/id/L/LD/LDS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_IOINTERFACE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += IOINTERFACE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += IO::Interface
endif

ifeq ($(FREETZ_PACKAGE_PERL_IOSOCKETINET6),y)
$(PKG)_IOSOCKETINET6_VERSION:=2.72
$(PKG)_IOSOCKETINET6_DIR:=$(PERL_DIR)/cpan/IO-Socket-INET6
$(PKG)_IOSOCKETINET6_SOURCE:=IO-Socket-INET6-$($(PKG)_IOSOCKETINET6_VERSION).tar.gz
$(PKG)_IOSOCKETINET6_HASH:=85e020fa179284125fc1d08e60a9022af3ec1271077fe14b133c1785cdbf1ebb
$(PKG)_IOSOCKETINET6_SITE:=http://search.cpan.org/CPAN/authors/id/S/SH/SHLOMIF
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_IOSOCKETINET6_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += IOSOCKETINET6
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += IO::Socket::INET6
endif

ifeq ($(FREETZ_PACKAGE_PERL_URIESCAPE),y)
$(PKG)_URIESCAPE_VERSION:=1.72
$(PKG)_URIESCAPE_DIR:=$(PERL_DIR)/cpan/URI
$(PKG)_URIESCAPE_SOURCE:=URI-$($(PKG)_URIESCAPE_VERSION).tar.gz
$(PKG)_URIESCAPE_HASH:=35f14431d4b300de4be1163b0b5332de2d7fbda4f05ff1ed198a8e9330d40a32
$(PKG)_URIESCAPE_SITE:=http://search.cpan.org/CPAN/authors/id/E/ET/ETHER
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_URIESCAPE_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += URIESCAPE
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += URI::Escape
endif

ifeq ($(FREETZ_PACKAGE_PERL_CRYPTCBC),y)
$(PKG)_CRYPTCBC_VERSION:=2.33
$(PKG)_CRYPTCBC_DIR:=$(PERL_DIR)/cpan/Crypt-CBC
$(PKG)_CRYPTCBC_SOURCE:=Crypt-CBC-$($(PKG)_CRYPTCBC_VERSION).tar.gz
$(PKG)_CRYPTCBC_HASH:=6a70de21b6cc7f2b100067e8e188db966e9a8001b5db6fa976e7cb5b294ae645
$(PKG)_CRYPTCBC_SITE:=https://cpan.metacpan.org/authors/id/L/LD/LDS
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_CRYPTCBC_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += CRYPTCBC
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Crypt::CBC

$(PKG)_CRYPTOPENSSLAES_VERSION:=0.02
$(PKG)_CRYPTOPENSSLAES_DIR:=$(PERL_DIR)/cpan/Crypt-OpenSSL-AES
$(PKG)_CRYPTOPENSSLAES_SOURCE:=Crypt-OpenSSL-AES-$($(PKG)_CRYPTOPENSSLAES_VERSION).tar.gz
$(PKG)_CRYPTOPENSSLAES_HASH:=b66fab514edf97fc32f58da257582704a210c2b35e297d5c31b7fa2ffd08e908
$(PKG)_CRYPTOPENSSLAES_SITE:=https://cpan.metacpan.org/authors/id/T/TT/TTAR
$(PKG)_SOURCES += $(DL_DIR)/$(PKG)_CRYPTOPENSSLAES_SOURCE
$(PKG)_ADDITIONAL_CPAN_MODULES += CRYPTOPENSSLAES
$(PKG)_ADDITIONAL_CPAN_MODULES_STATIC += Crypt::OpenSSL::AES
endif

ifeq ($(FREETZ_OPENSSL_VERSION_1),y)
$(PKG)_DEPENDS_ON += openssl
$(PKG)_REBUILD_SUBOPTS += FREETZ_OPENSSL_VERSION_1
endif

ifeq ($(FREETZ_PACKAGE_SQLITE),y)
$(PKG)_DEPENDS_ON += sqlite
# following comand should be ecexute by build system automatically, but it does not ,therefore call it explicitely
$(PKG)_CONFIGURE_PRE_CMDS += $(SED) 's/~DRIVER~/SQLite/g' $(PERL_DBI_DIR)/Driver.xst > $(PERL_DBDSQLITE_DIR)/SQLite.xsi;
endif

$(PKG)_CATEGORY:=Unstable

$(PKG)_BINARY:=$($(PKG)_DIR)/perl
$(PKG)_TARGET_BINARY:=$($(PKG)_DEST_DIR)/usr/bin/perl
$(PKG)_TARGET_MODULES:=$($(PKG)_TARGET_DIR)/.modules_installed
$(PKG)_TARGET_MODULES_DIR:=$($(PKG)_DEST_DIR)/usr/lib/perl5/$($(PKG)_VERSION)
$(PKG)_TARGET_MODS:=$(subst ",,$(FREETZ_PACKAGE_PERL_MODULES))

$(PKG)_PATCH_PRE_CMDS += chmod -R u+w .;
$(PKG)_PATCH_POST_CMDS += $(SED) -r -i -e 's|/5([.][0-9]{2}){1,2}|/$($(PKG)_VERSION)|g' uconfig.sh;
$(PKG)_PATCH_POST_CMDS += $(SED) -r -i -e 's|/usr/local|/usr)|g'                        uconfig.sh;

$(PKG_SOURCE_DOWNLOAD_NOP)
$(PKG_UNPACKED)
$(PKG_CONFIGURED)

$(PKG)_EXTRA_CFLAGS := -fno-stack-protector -ffunction-sections -fdata-sections
$(PKG)_EXTRA_LDFLAGS := -Wl,--gc-sections -Wl,-rpath=/usr/lib/perl5/$($(PKG)_VERSION)/mips-linux/CORE
$(PKG)_CONFIGURE_OPTIONS = -Duseshrplib -Dbyteorder='87654321' 
$(PKG)_CONFIGURE_OPTIONS += -Dextras="IO LWP Sys::Hostname Net::DNS Mail:SPF::Query Sys::Hostname::Long $(FREETZ_PACKAGE_PERL_ADDITIONAL_EXTRA_MODULES)"
$(PKG)_CONFIGURE_OPTIONS += -Accflags="$(PERL_EXTRA_CFLAGS) $(PERL_EXTRA_LDFLAGS)"


$(pkg)-download:  $(DL_DIR)/$($(PKG)_SOURCE) $($(PKG)_SOURCES)
$($(PKG)_SOURCES):
	$(foreach mod,$(subst $(DL_DIR)/PERL_,,$(subst _SOURCE,,$@)),$(DL_TOOL) $(DL_DIR) $(PERL_$(mod)_SOURCE) $(PERL_$(mod)_SITE) $(PERL_$(mod)_HASH))

$(DL_DIR)/$($(PKG)_SOURCE): | $(DL_DIR) $($(PKG)_SOURCES)
	$(DL_TOOL) $(DL_DIR) $(PERL_SOURCE) $(PERL_SITE) $(PERL_HASH)


$($(PKG)_DIR)/configure: $($(PKG)_DIR)/.unpacked
	$(foreach mod,$(PERL_ADDITIONAL_CPAN_MODULES),mkdir -p $(PERL_$(mod)_DIR); $(call UNPACK_TARBALL,$(DL_DIR)/$(PERL_$(mod)_SOURCE),$(PERL_$(mod)_DIR),1);)
	cd $(PWD); \
	$(foreach mod,$(PERL_ADDITIONAL_CPAN_MODULES),[ -n "$(PERL_$(mod)_PATCH)" -a -f $(PERL_DIR)/$(PERL_$(mod)_PATCH) ] && mv -f $(PERL_DIR)/$(PERL_$(mod)_PATCH) $(PERL_$(mod)_DIR)/Makefile.PL ||:;)
	cd $(PWD); \
	$(PERL_CONFIGURE_PRE_CMDS)
	touch $@

$($(PKG)_DIR)/.configured: $($(PKG)_DIR)/configure
	cd $(PERL_DIR) && PATH=$(TARGET_PATH) ./configure --target=$(GNU_TARGET_NAME) --target-tools-prefix=$(REAL_GNU_TARGET_NAME)- --prefix=/usr $(PERL_CONFIGURE_OPTIONS) && \
	cd $(PWD) && touch $@

$($(PKG)_DIR)/miniperl_top: $($(PKG)_DIR)/.configured
	$(SUBMAKE1) -C $(PERL_DIR) -f Makefile utilities \
		CC="$(TARGET_CC)" \
		OPTIMIZE="$(TARGET_CFLAGS)"
	touch $@

$($(PKG)_DIR)/lib/lib.pm: $($(PKG)_DIR)/miniperl_top
	cd $(PERL_DIR)/dist/lib; "../../miniperl_top" "-I../../lib" "-I../../lib" lib_pm.PL lib.pm; cp lib.pm ../../lib/lib.pm
	
$($(PKG)_BINARY): $($(PKG)_DIR)/.configured $($(PKG)_DIR)/lib/lib.pm
	$(SUBMAKE1) -C $(PERL_DIR) -f Makefile \
		CC="$(TARGET_CC)" \
		OPTIMIZE="$(TARGET_CFLAGS)" \
		TARGET_TOOLCHAIN_STAGING_DIR="$(TARGET_TOOLCHAIN_STAGING_DIR)"
	touch $@

$($(PKG)_TARGET_BINARY): $($(PKG)_BINARY)
	$(SUBMAKE1) -C $(PERL_DIR) -f Makefile \
		DESTDIR="$(PWD)/$(PERL_DEST_DIR)" \
		install.perl
	ln -f $(PERL_DEST_DIR)/usr/bin/perl$($(PKG)_VERSION) $(PERL_DEST_DIR)/usr/bin/perl
	touch $@

$($(PKG)_TARGET_MODULES): $($(PKG)_DIR)/.unpacked
	mkdir -p $(PERL_TARGET_MODULES_DIR)
	( \
		for i in $(patsubst %,$(PERL_TARGET_MODULES_DIR)/%,$(dir $(PERL_TARGET_MODS))); do \
			[ -d $$i ] || mkdir -p $$i; \
		done; \
		for i in $(PERL_TARGET_MODS); do \
			cp -dpf $(PERL_DIR)/lib/$$i $(PERL_TARGET_MODULES_DIR)/$$i; \
		done; \
	)
	touch $@

$(pkg):

$(pkg)-precompiled: $($(PKG)_TARGET_BINARY) $($(PKG)_TARGET_MODULES)


$(pkg)-clean:
	-$(SUBMAKE) -C $(PERL_DIR) -f Makefile clean
	-$(RM) -r $(PERL_TARGET_MODULES_DIR)
	-$(RM) $(PERL_TARGET_MODULES)
	-$(RM) $(PERL_DIR)/configure

$(pkg)-distclean: $(pkg)-clean
	-$(RM) -r -f $(PERL_DIR)

$(pkg)-uninstall:
	$(RM) $(PERL_TARGET_BINARY)
	$(RM) -r $(PERL_TARGET_MODULES_DIR)

$(PKG_FINISH)

