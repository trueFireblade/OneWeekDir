# OneWeekDir
This is a script that checks for the time of creation of all files within the specified directory and deletes them if they're older than one week(this is the default, time is adjustable) This currently only calculates by full days! 

## How to set it up?
1) Download the script:
```
git clone https://github.com/trueFireblade/OneWeekDir.git
```
2) Adjust the **dir** variable in the third line of `./OneWeekDir/OneWeekDir.sh`
    - Optionally: Change the **time** variable in the second line to the amount of days after which a file should be deleted

3) Make the script executable:
```
sudo chmod a+x ./OneWeekDir/OneWeekDir.sh
```
4) Move the script to some location that's in your PATH:
    - to check whether something is in your path do `echo $PATH | grep "PATH/TO/DIR"`
    - to add a directory to your PATH put `export PATH="$PATH:PATH/TO/DIR"` in your `~/.profile`-file

5) Add the line `OneWeekDir.sh` to either the end of your `~/.profile` or a [Cron](https://wiki.archlinux.org/index.php/Cron "A way to automatically call scripts at certain times/time intervals") 
