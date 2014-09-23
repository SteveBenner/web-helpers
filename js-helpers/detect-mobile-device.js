var isMobile;

isMobile = [
  {
    name: 'Android',
    regex: /Android/i
  }, {
    name: 'BlackBerry',
    regex: /BlackBerry/i
  }, {
    name: 'iOS',
    regex: /iPhone|iPad|iPod/i
  }, {
    name: 'Opera',
    regex: /Opera Mini/i
  }, {
    name: 'Windows',
    regex: /IOMobile/i
  }
];

isMobile.reduce(function(im, device) {
  im[device.name] = function() {
    return navigator.userAgent.match(device.regex);
  };
  return im;
}, {});

isMobile.any = function() {
  return isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows();
};

if (isMobile.any()) {
  console.log('fk yea');
}
