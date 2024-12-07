#!/bin/bash

# 输出空行
echo

# 输出信息
echo "[信息] 清理 target 目录"

# 获取脚本所在目录并进入该目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

# 返回上一级目录并执行 Maven clean 命令
cd ..
mvn clean

# 等待用户输入，模拟 pause（Linux 中常用的方式是读取输入）
#read -p "Press any key to continue..." key
