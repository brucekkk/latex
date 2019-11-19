#在 terminal 下操作
#这是一个可以将 latex的 bib 文件转成 endnote 的各种所需格式,所用的库为bibutils 
#安装 bibutils,mac 环境
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew install bibutils
#运行
bib2xml input.bib | xml2end > output.end #convert to .end
bib2xml info.bib | xml2ris > output.ris #convert to .ris