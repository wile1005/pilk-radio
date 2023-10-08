//var audioPlayer = $("#audioPlayer").get(0);
var playing = false;

function playMusic() {
  audioOld = document.getElementById("audioPlayer");
  if(audioOld) {
    audioOld.remove();
  }
  var audioPlayer = document.createElement("audio");
  audioPlayer.id = "audioPlayer";
  audioPlayer.autoplay = true;
  //gets timestamp. Timestap needs to be first;
  // It is also the script that changes playing song when the time is over
	$.post("./player/timestamp.php", function(result){
    audioPlayer.currentTime = result;
		console.debug("Timestamp "+result);
    
    //by being inside timestamp, timestamp will always change the song first

    //Music file from db 
	  $.post("./player/music.php", function(result){
		  audioPlayer.src = result;	
		  console.debug("Current file "+result);
	  });

    //Gets producer and title from db
	  $.post("./player/prod.php", function(result){
	    const prod = document.getElementById('prod');	
      prod.innerHTML = result;
	  });


	});

  audioPlayer.addEventListener("ended", playMusic);
  audioPlayer.addEventListener('error', playMusic);
  document.body.appendChild(audioPlayer);
  updateVolume();
	//audioPlayer.play();
}

//Will pause or playMusic()
function playButton () {
  audioOld = document.getElementById("audioPlayer");
  if(audioOld) {
    audioOld.remove();
    necoarc.src = "pause.png"
  } else {
    playMusic(); 
    necoarc.src = "dance.gif"
  }
}

function updateVolume() {
    audioPlayer = document.getElementById("audioPlayer");
    const volumeSlider = document.getElementById("volumeSlider");
    audioPlayer.volume = volumeSlider.value;
}

const necoarc = document.getElementById('necoarc');
necoarc.addEventListener('click', playButton);

//Update volume to default value on load
//updateVolume();
/*
	$.post("./player/music.php", function(result){
		audioPlayer.src = result;	
		console.debug("Current file "+result);
  }); */
//audioPlayer.addEventListener("ended", playMusic);
//audioPlayer.addEventListener('error', playMusic);
