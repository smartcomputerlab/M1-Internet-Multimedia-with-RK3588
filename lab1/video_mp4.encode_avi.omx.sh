gst-launch-1.0 -v filesrc location="../samples/tom.mp4" ! decodebin name=foo  foo. ! queue ! audioconvert ! audioresample ! lamemp3enc ! avimux name=bar  foo. ! queue ! videoconvert ! progressreport ! openh264enc bitrate=1000000 ! bar. bar. ! filesink location="../samples/tom.avi" 
