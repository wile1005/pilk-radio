# PILK RADIO!
This is a php/js website that plays a random audio file.
It uses MariaDB to keep track of music/timestamp, paths and original creators.

## Importing Music
yt2sql.sh is used to import audio and necessary metadata into the database.
Music will be downloaded using yt-dlp to /music, sql commands in sql.txt.

see pilk-radio.sql/sql.txt for database example.

## Known issues
- The same music can be played multiple times in a row, but chances are low with more music.
- On some android devices (oneplus?) battery optimization will have to be
  turned off for the browser app. Otherwise autoplay won't work when the phone is sleeping.

## License
I do not own any artwork, audio or other similar media included.
All the code is licensed under IDGAFPL (I Don't Give A Fuck Public License).
See 'LICENSE' for more info.
