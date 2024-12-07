#!/bin/bash

# 输出空行
echo

# 输出信息
echo "[信息] 启动 Jar 文件，运行 Monitor 服务"

# 获取当前脚本所在目录，并进入该目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

# 进入目标目录
cd ../ruoyi-visual/ruoyi-monitor/target

# 设置 Java 参数
JAVA_OPTS="-Xms128m -Xmx256m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=256m"

# 启动 Jar 文件
java -Dfile.encoding=utf-8 $JAVA_OPTS -jar ruoyi-visual-monitor.jar

# 返回 bin 目录（如果需要的话）
cd bin

# 等待用户输入，模拟 pause（Linux 中常用的方式是读取输入）
#read -p "Press any key to continue..." key
