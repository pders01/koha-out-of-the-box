# Welche Auslastungen verträgt der Raspberry Pi?

Diese Frage lässt sich erst in einem umfangreicheren Testbetrieb abschließend beantworten.
Momentan stützt sich unsere Analyse auf Benchmarking-Tools. Das hier präsentierte Benchmark
entstammt dem Tool ApacheBench.  

Bei diesem Performance-Test stellen 5 gleichzeitige Verbinungen 1000 Anfragen.
Die durchschnittliche Wartezeit liegt bei etwa 500 Millisekunden. Die längste 
Antwortzeit lag bei etwa 12 Sekunden. Auch bei einer stärkeren Auslastung sollten
noch akzeptable Antwortzeiten gegeben sein.

```
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

#### Benchmarking ##.##.##.## (be patient)


Server Software:        Apache/2.4.38
Server Hostname:        ##.##.##.##
Server Port:            80

Document Path:          /cgi-bin/koha/opac-main.pl
Document Length:        19580 bytes

Concurrency Level:      5
Time taken for tests:   211.457 seconds
Complete requests:      1000
Failed requests:        0
Total transferred:      20000000 bytes
HTML transferred:       19580000 bytes
Requests per second:    4.73 [#/sec] (mean)
Time per request:       1057.283 [ms] (mean)
Time per request:       211.457 [ms] (mean, across all concurrent requests)
Transfer rate:          92.37 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        2   10  80.4      3    1063
Processing:   179 1045 2520.0    471   12564
Waiting:      164 1041 2520.1    466   12560
Total:        185 1055 2524.3    476   12566

Percentage of the requests served within a certain time (ms)
  50%    476
  66%    505
  75%    532
  80%    550
  90%    640
  95%  10915
  98%  12111
  99%  12261
 100%  12566 (longest request)
 ```

