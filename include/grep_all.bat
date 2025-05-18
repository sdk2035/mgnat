del all_ads.in
dir /b *.ads > all_ads.in
FOR /F %%i IN (all_ads.in) DO @grep "with type" %%i
del all_ads.in
