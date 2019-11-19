#latex 文本划线为'\sout',先匹配到\sout{} 然后将整行替换为空,然后删除该行
sed '/\sout{.*}/s/.*//;/^$/d;w papermaterials.tex' Literature.tex
sed 's/\sout{.*}/\tcr{Paper}/;w output.tex' tst.tex #将横线替换为红色的 paper
sed 's/\\sout{/\\sout{\\tcr{Done} /g; w output.tex' tst.tex #找到 sout 替换 sout{\tcr{}}.注意和 grep 区别,grep 是找出对应的替换,结果只有包含关键字的行,而 sed 是修改整个文本
-----grep找到\sout-----
grep '\\sout{.*}' tst.tex #grep转义
grep '\\sout{.*}' tst.tex | sed 's/\\sout{/\\sout{\\tcr{Done} /g; w output.tex' #注意这种方法是找到这些匹配行再替换