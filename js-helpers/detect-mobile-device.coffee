# Simplistic mobile device detection function
# inspired by: http://www.abeautifulsite.net/detecting-mobile-devices-with-javascript/

isMobile = [
  {name: 'Android', regex: /Android/i}
  {name: 'BlackBerry', regex: /BlackBerry/i}
  {name: 'iOS', regex: /iPhone|iPad|iPod/i}
  {name: 'Opera', regex: /Opera Mini/i}
  {name: 'Windows', regex: /IOMobile/i}
]
isMobile.reduce (im, device) ->
  im[device.name] = -> navigator.userAgent.match device.regex
  im
, {}

isMobile.any = ->
  isMobile.Android() ||
  isMobile.BlackBerry() ||
  isMobile.iOS() ||
  isMobile.Opera() ||
  isMobile.Windows()
