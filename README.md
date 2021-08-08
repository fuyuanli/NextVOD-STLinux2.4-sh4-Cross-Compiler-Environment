# NextVOD-STLinux2.4-sh4-Cross-Compiler-Environment
網樂通交叉編譯環境 (NextVOD STLinux2.4-sh4 Cross Compiler Environment)

# Dockerfile

目前已將 archive.stlinux.com 建了一份 [Mirror Site](http://linux.csie.nttu.edu.tw/stlinux/) （由臺東大學資工系資訊組提供資源）

docker build 的速度快非常多，有興趣可以自己 Build 來玩看看，

STLinux 已經進入封存狀態，趁東西還在的時候先包成 Container，

雖然網樂通已經是時代的眼淚了，不過還是把僅存的資源留下會比較好，至少把最後的資源留下。

感謝網友 [Alica](https://becoder.org/nextvod-stlinux-cross-compile/#comment-1969) 提供資訊，沒有他留言我也不會注意到這個東西XD


# 使用方法

```
$ docker pull fuyuanli/nextvod-stlinux2.4-sh4:latest
$ docker run -it --name nextvod-env fuyuanli/nextvod-stlinux2.4-sh4:latest bash
WARNING: The requested image's platform (linux/386) does not match the detected host platform (linux/amd64) and no specific platform was requested
root@fa31781d0eec:/# sh4-linux-gcc
sh4-linux-gcc: fatal error: no input files
compilation terminated.
root@fa31781d0eec:/# cd /opt/STM/STLinux-2.4/
root@fa31781d0eec:/opt/STM/STLinux-2.4# ls -al
total 20
drwxr-xr-x 1 root root 4096 Aug  7 19:24 .
drwxr-xr-x 1 root root 4096 Aug  7 19:24 ..
drwxr-xr-x 3 root root 4096 Aug  7 19:43 config
drwxr-xr-x 4 root root 4096 Aug  7 19:36 devkit
drwxr-xr-x 1 root root 4096 Aug  7 19:43 host
```
