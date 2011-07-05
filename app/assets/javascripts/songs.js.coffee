# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

soundManager.url = '/contrib/sm2/swf/';

soundManager.useFastPolling = true;
threeSixtyPlayer.config.showHMSTime = true;

threeSixtyPlayer.config.useWaveformData = true;
threeSixtyPlayer.config.useEQData = true;

if (threeSixtyPlayer.config.useWaveformData)
  soundManager.flash9Options.useWaveformData = true;
if (threeSixtyPlayer.config.useEQData)
  soundManager.flash9Options.useEQData = true;
if (threeSixtyPlayer.config.usePeakData)
  soundManager.flash9Options.usePeakData = true;

threeSixtyPlayer.config.useFavIcon = false;