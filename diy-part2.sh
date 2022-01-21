#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i 's/4.3.9_v1.2.14/4.3.8_v1.2.14/g' package/lean/qBittorrent-static/Makefile
rm -f feeds/packages/multimedia/minidlna/patches/005-added-support-RMVB.patch
echo "" > feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\diff -Naur a/metadata.c b/metadata.c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\--- a/metadata.c	2019-12-10 13:34:44.000000000 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+++ b/metadata.c	2020-07-08 14:58:45.508877011 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -338,6 +338,16 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		strcpy(type, "flc");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		m.mime = strdup("audio/x-flac");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	else if( ends_with(path, ".ape") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		strcpy(type, "ape");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		m.mime = strdup("audio/x-ape");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	else if( ends_with(path, ".mka") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		strcpy(type, "mka");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		m.mime = strdup("audio/x-matroska");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	else if( ends_with(path, ".wav") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		strcpy(type, "wav");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -362,6 +372,17 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		strcpy(type, "dff");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		m.mime = strdup("audio/x-dsd");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	else if( ends_with(path, ".dsf") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		strcpy(type, "dsf");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		m.mime = strdup("audio/x-dsd");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	else if( ends_with(path, ".dff") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		strcpy(type, "dff");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		m.mime = strdup("audio/x-dsd");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	else'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -862,6 +883,10 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			xasprintf(&m.mime, "video/x-matroska");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		else if( strcmp(ctx->iformat->name, "flv") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			xasprintf(&m.mime, "video/x-flv");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		else if( strcmp(ctx->iformat->name, "rm") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch  
sed -i '$a\+  			xasprintf(&m.mime, "video/x-pn-realvideo");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch  
sed -i '$a\+		else if( strcmp(ctx->iformat->name, "rmvb") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch  
sed -i '$a\+   			xasprintf(&m.mime, "video/x-pn-realvideo");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch  
sed -i '$a\ 		if( m.mime )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			goto video_no_dlna;'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ '  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch 
sed -i '$a\diff -Naur a/upnpglobalvars.h b/upnpglobalvars.h'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\--- a/upnpglobalvars.h	2019-12-10 13:34:44.000000000 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+++ b/upnpglobalvars.h	2020-07-08 14:40:26.560487535 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -172,7 +172,11 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	"http-get:*:audio/x-wav:*," \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	"http-get:*:audio/x-flac:*," \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 	"http-get:*:audio/x-dsd:*," \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\-	"http-get:*:application/ogg:*"'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+        "http-get:*:audio/x-ape:*," \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	"http-get:*:audio/x-dsd:*," \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+        "http-get:*:audio/x-matroska:*," \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	"http-get:*:application/ogg:*" \x5c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+	"http-get:*:video/x-pn-realvideo:*"'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ '  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch 
sed -i '$a\ #define DLNA_FLAG_DLNA_V1_5      0x00100000'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ #define DLNA_FLAG_HTTP_STALLING  0x00200000'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\diff -Naur a/utils.c b/utils.c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\--- a/utils.c	2019-12-10 13:34:44.000000000 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+++ b/utils.c	2020-07-08 15:13:49.933889669 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -339,6 +339,10 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 				return "flac";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			else if( strcmp(mime+6, "flac") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 				return "flac";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+			else if( strcmp(mime+6, "x-ape") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+				return "ape";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+			else if( strcmp(mime+6, "x-matroska") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+				return "mka";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			else if( strcmp(mime+6, "x-wav") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 				return "wav";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			else if( strncmp(mime+6, "L16", 3) == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -369,6 +373,8 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 				return "mkv";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			else if( strcmp(mime+6, "x-flv") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 				return "flv";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+			else if( strcmp(mime+6, "x-pn-realvideo") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+				return "rm";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			else if( strcmp(mime+6, "vnd.dlna.mpeg-tts") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 				return "mpg";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 			else if( strcmp(mime+6, "quicktime") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -401,6 +407,7 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".m2t") || ends_with(file, ".mkv")   ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".vob") || ends_with(file, ".ts")    ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".flv") || ends_with(file, ".xvid")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		ends_with(file, ".rm")  || ends_with(file, ".rmvb")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ #ifdef TIVO_SUPPORT'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".TiVo") ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ #endif'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\@@ -417,6 +424,7 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".mp4") || ends_with(file, ".m4p")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".wav") || ends_with(file, ".ogg")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".pcm") || ends_with(file, ".3gp")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\+		ends_with(file, ".pcm") || ends_with(file, ".ape")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ 		ends_with(file, ".dsf") || ends_with(file, ".dff"));'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
sed -i '$a\ }'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-rmvb-dsd-format.patch
cd package
git clone https://gitee.com/stock169/lean
cd ..
cd feeds/packages/multimedia/
#rm -rf ffmpeg
#git clone https://gitee.com/stock169/ffmpeg
cd ..
cd sound
#rm -rf mpd
#git clone https://gitee.com/stock169/mpd
cd ..
cd ..
cd ..
 
