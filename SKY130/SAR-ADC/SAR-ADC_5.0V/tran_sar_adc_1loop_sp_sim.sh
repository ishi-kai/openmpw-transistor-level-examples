#!/bin/bash

# 設定: 使用するCPUコアの数
CPU_CORES=24


# ファイル名のプレフィックス
FILE_PREFIX="tran_sar_adc_1loop_sp"
FILE_EXT="spice"

# 6bit=64個のファイルをループ
for i in {0..63}; do
    # 現在のインデックスをCPUコア数で割った余りを計算してコア番号を割り当てる (0 ~ CPU_CORES-1)
    CORE_ID=$((i % CPU_CORES))
    
    FILE_NAME="${FILE_PREFIX}_${i}.${FILE_EXT}"
    
    echo "Starting $FILE_NAME on core $CORE_ID..."
    
    # xterm を起動し、指定されたコアに割り当てて ngspice を実行
    # -hold をつけると終了後にウィンドウが閉じないので、不要なら削除してください
    xterm -e "taskset -c $CORE_ID ngspice -i $FILE_NAME -a" &
    
    # 全てのウィンドウが一気に開くと負荷が高すぎる場合、必要に応じて sleep を追加
    # sleep 0.5
done

echo "すべてのシミュレーションを開始しました。"
