## Simple Swap File For Linux/Ubuntu

Swap is space on a disk that is reserved to be used as virtual memory. When a Linux server runs out of memory, the kernel can move inactive processes into swap to make room for active processes in the working memory.

### RUN

First, download the main script:
```
wget https://raw.githubusercontent.com/rianawb/swap/master/swap.sh -O swap.sh
```
Then simply run the file with this format:
```
swap.sh
```
#### NOTE

Default swap is 2 GB, you can change the values in swap.sh
