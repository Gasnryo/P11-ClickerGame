void mousePressed() {
  if (mode == 0) {
    introClicks();
  } else if (mode == 1) {
    gameClicks();
  } else if (mode == 2) {
    pauseClicks();
  } else if (mode == 3) {
    gameoverClicks();
  } else if (mode == 4) {
    optionsClicks();
  }
}

void mouseDragged() {
  if (mode == 0) {
    //introDrag();
  } else if (mode == 1) {
    //gameDrag();
  } else if (mode == 2) {
    //pauseDrag();
  } else if (mode == 3) {
    //gameoverDrag();
  } else if (mode == 4) {
    optionsDrag();
  }
}
