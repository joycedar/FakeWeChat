##配置clang -format

使用clang-format在提交时自动格式化发生改动的文件。

1. 安装clang-format。

2. 在`.git/hooks`目录下新建`pre-commit`：

   ```bash
   #!/bin/bash
   STYLE=$(git config --get hooks.clangformat.style)
   if [ -n "${STYLE}" ] ; then
     STYLEARG="-style=${STYLE}"
   else
     STYLEARG=""
   fi
   format_file() {
     file="${1}"
     if [ -f $file ]; then
       clang-format -i ${STYLEARG} ${1}
       git add ${1}
     fi
   }
   case "${1}" in
     --about )
       echo "Runs clang-format on source files"
       ;;
     * )
       for file in `git diff-index --cached --name-only HEAD` ; do
   
         extension="${file##*.}"
   
         if [ $extension = "h" ] || [ $extension = "m" ] || [ $extension = "mm" ] || [ $extension = "c" ] || [ $extension = "cpp" ]; then
   
           echo "format ${file}"
   
           format_file "${file}";
         fi
   
       done
       ;;
   esac
   ```

3. 使用命令`chmod a+x pre-commit`给`pre-commit`脚本添加可执行权限。
