
## install

sudo apt install terminator                          


mkdir -p ~/.config/terminator/
cd config_override ~/.config/terminator/config

* if it overrides you def treminal set by:
> sudo update-alternatives --config x-terminal-emulator


## using


* direct:
```
./term-tabs.sh -t "ccc" "aa::ls /home" "bbb::ls /"

```

* by cmds
```
./term-tabs.sh -t aaa  -f commands.txt

commands.txt
============
a::ls /
b::ls /home


```
