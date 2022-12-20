FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir YukkiMusicBot \
    && cd YukkiMusicBot \
    && git clone https://github.com/Aryasena7/YukkiMusic
WORKDIR /YukkiMusic/YukkiMusic
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD bash start
