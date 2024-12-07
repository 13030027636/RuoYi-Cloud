#!/bin/bash

# 输出空行
echo

# 输出信息
echo "[信息] 打包 Web 项目，生成 war/jar 文件"

# 获取当前脚本所在目录并进入该目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

# 返回上一级目录，并执行 Maven clean 和 package 命令，跳过测试
cd ../../
mvn clean package -Dmaven.test.skip=true

# 等待用户输入，模拟 pause（Linux 中常用的方式是读取输入）
#read -p "Press any key to continue..." key
