# Hourly picture from IP cameras

I have a few IP cameras that are used for CCTV that I wanted to take an hourly static image from.  I'm using Hikvision cameras that broadcast RTSP onto my LAN that the NVR records.  This project shows how static images can be captured from them.



## Setup

These instructions can be easily adapted for other Linux distros.  There are LOTs of other ways to achieve the same result, this one worked for me.

1. Create an `Ubuntu 18.04` VM



2. Install ffmpeg 

```
sudo snap install ffmpeg
```



3. Create an empty directory under you home dir

```
cd ~
mkdir dailyPic
```



4. Copy `snap.sh` into this dir.  Edit `snap.sh` and replace `USERNAME` with your current username.



5. Create a cron job to take an hourly picture

```
crontab -e
```

add this line

```
0 * * * * /home/USERNAME/dailyPic/snap.sh
```

*replace `username` with your current username*



## Usage

Every hour the cron job will run `snap.sh` which will capture still images from the RTSP streams and write them as JPEG files to files under the `images` dir.  These can be downloaded from the VM using SSH tools such as `winscp`
