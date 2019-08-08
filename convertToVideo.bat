rem loobs are for noops
ffmpeg -framerate 30 -i 0/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-0.webm
ffmpeg -framerate 30 -i 1/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-1.webm
ffmpeg -framerate 30 -i 2/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-2.webm
ffmpeg -framerate 30 -i 3/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-3.webm
ffmpeg -framerate 30 -i 4/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-4.webm
ffmpeg -framerate 30 -i 5/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-5.webm
ffmpeg -framerate 30 -i 6/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-6.webm
ffmpeg -framerate 30 -i 7/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-7.webm
ffmpeg -framerate 30 -i 8/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-8.webm
ffmpeg -framerate 30 -i 9/%%05d.png -i blocksound.wav -vf scale=1920:1080:flags=neighbor -crf 16 -b:a 320k ctwc-stinger-9.webm





