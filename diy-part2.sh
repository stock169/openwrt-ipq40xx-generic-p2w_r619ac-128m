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

echo "" > feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\diff -Naur a/metadata.c b/metadata.c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\--- a/metadata.c	2023-05-31 16:25:59.000000000 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+++ b/metadata.c	2023-09-25 10:53:04.560054172 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\@@ -338,6 +338,16 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 		strcpy(type, "flc");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 		m.mime = strdup("audio/x-flac");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	else if( ends_with(path, ".ape") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+		strcpy(type, "ape");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+		m.mime = strdup("audio/x-ape");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	else if( ends_with(path, ".mka") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+		strcpy(type, "mka");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+		m.mime = strdup("audio/x-matroska");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	}'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch	
sed -i '$a\ 	else if( ends_with(path, ".wav") )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	{'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 		strcpy(type, "wav");'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\diff -Naur a/upnpglobalvars.h b/upnpglobalvars.h'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\--- a/upnpglobalvars.h	2023-05-31 16:25:59.000000000 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+++ b/upnpglobalvars.h	2023-09-25 11:11:53.420057278 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\@@ -172,7 +172,9 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:audio/x-wav:*," \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:audio/x-flac:*," \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:audio/x-dsd:*," \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+	"http-get:*:audio/x-matroska:*," \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:application/ogg:*" \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+    "http-get:*:audio/x-ape:*," \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:application/vnd.rn-realmedia:*" \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:application/vnd.rn-realmedia-vbr:*" \'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 	"http-get:*:video/webm:*"'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\diff -Naur a/utils.c b/utils.c'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\--- a/utils.c	2023-05-31 16:25:59.000000000 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+++ b/utils.c	2023-09-25 11:07:57.040056628 +0800'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\@@ -339,6 +339,10 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 				return "flac";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 			else if( strcmp(mime+6, "flac") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 				return "flac";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+			else if( strcmp(mime+6, "x-ape") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+				return "ape";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+			else if( strcmp(mime+6, "x-matroska") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+				return "mka";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch			
sed -i '$a\ 			else if( strcmp(mime+6, "x-wav") == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 				return "wav";'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 			else if( strncmp(mime+6, "L16", 3) == 0 )'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\@@ -419,6 +423,7 @@'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 		ends_with(file, ".mp4") || ends_with(file, ".m4p")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 		ends_with(file, ".wav") || ends_with(file, ".ogg")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ 		ends_with(file, ".pcm") || ends_with(file, ".3gp")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\+		ends_with(file, ".pcm") || ends_with(file, ".ape")  ||'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch		
sed -i '$a\ 		ends_with(file, ".dsf") || ends_with(file, ".dff"));'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch
sed -i '$a\ }'  feeds/packages/multimedia/minidlna/patches/002-support-ape-mka-format.patch

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
 
