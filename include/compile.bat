attrib -r *.ali
del *.il
del all_ads.in
dir /b *.ads > all_ads.in
FOR /F %%i IN (all_ads.in) DO mgnat -gnatX -c %%i
del all_ads.in
attrib +r *.ali
