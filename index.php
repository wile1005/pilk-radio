<!DOCTYPE html>
<html>
<head>
    <title>🐈PILK RADIO🥤 | NOW PLAYING BURENYAA TOP 100</title>
    <link rel="stylesheet" href="style.css">	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-latest.min.js" defer></script>
    <script src="player.js" defer></script>
</head>
<body>
    <div id="musicPlayer">
        <h1>PILK RADIO! 🐈</h1>
        <h2>NOW PLAYING BURRENYAA TOP 100</h2>
        <div class="marquee-container">
          <p class="marquee-text" id="prod"></p>
        </div>
        <img id="necoarc" src="start.png">
        <input type="range" id="volumeSlider" min="0" max="1" step="0.01" value="1" onchange="updateVolume()">
        <p><a href="mailto:pilk@necoarc.org">pilk@necoarc.org</a></p>
    </div>
    <div id="chat">
        <?php include "chat/chat.php" ?>
    </div>
</body>
</html>
