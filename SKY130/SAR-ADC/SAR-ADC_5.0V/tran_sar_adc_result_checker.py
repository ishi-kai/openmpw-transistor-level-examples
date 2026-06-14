#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import re
import csv

from datetime import datetime

import numpy as np
from math import floor

import sys, os

import pandas as pd
import matplotlib.pyplot as plt
import csv


def convert_csv_to_png(ref_volt, input_filename, output_filename, png_filename):
	result_file = input_filename
	result_file_d = open(result_file, mode='r')
	result_list = pd.read_csv(result_file_d).values.tolist()

	bits_file = output_filename
	bits_file_d = open(bits_file, mode='w')

	res_vin_volt_plot = []
	res_ref_volt_plot = []
	res_cnt = []

	bits_file_d.write("vin,adc\n")
	for vin_cnt in range(0, len(result_list)):
		volt_list = result_list[vin_cnt]
		div_num = 1
		cal_data = 0
		for vout_bit_cnt in range(1 , len(volt_list)):
			vout_volt_bit = 1 if volt_list[0] < volt_list[vout_bit_cnt] else 0
			div_num = div_num * 2

			cal_data = cal_data + (vout_volt_bit/div_num)
#			print("cal_data=" + str(cal_data) + " div_num=" + str(div_num) + " vout_volt_bit=" + str(vout_volt_bit))


		result_list[vin_cnt]
		print("vin=" + str(volt_list[0]) + " adc=" + str(cal_data * ref_volt))
		bits_file_d.write(str(volt_list[0]) + "," + str(cal_data * ref_volt) + "\n")
		res_vin_volt_plot.append(volt_list[0])
		res_ref_volt_plot.append(cal_data * ref_volt)
		res_cnt.append(vin_cnt)

	plt.plot(res_cnt, res_vin_volt_plot, color = 'green', marker = 'x', linestyle = '-.', label = 'Vin')
	plt.plot(res_cnt, res_ref_volt_plot, color = 'yellow', marker = '+', linestyle = '-.', label = 'ADC')
	view_title = "Vin-ADC"
	plt.title(view_title)
	plt.xlabel('cnt')
	plt.ylabel('V')
	plt.grid(True)
	plt.legend()
	plt.savefig(png_filename)
	plt.clf()


def convert_txt_to_csv(input_filename, output_filename):
    # 各変数を抽出するための正規表現パターン
    vin_pattern = re.compile(r'vin\s*=\s*([\d\.e\+\-]+)')
    vout_pattern = re.compile(r'vout([0-5])\s*=\s*([\d\.e\+\-]+)')
    
    data_list = []
    current_row = None
    
    with open(input_filename, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            
            # vin の行を見つけたら、新しい行データを作成
            vin_match = vin_pattern.search(line)
            if vin_match:
                # すでに読み込み中の行があればリストに追加して保存
                if current_row is not None:
                    data_list.append(current_row)
                
                vin_str = vin_match.group(1)
                # vinは2枚目画像(1.000000等)に合わせるため小数点表記に整形
                try:
                    vin_val = float(vin_str)
                    vin_formatted = f"{vin_val:.6f}"
                except ValueError:
                    vin_formatted = vin_str
                
                current_row = {'vin': vin_formatted}
                continue
            
            # vout0 ~ vout5 の行をマッチング
            vout_match = vout_pattern.search(line)
            if vout_match and current_row is not None:
                bit_num = int(vout_match.group(1))
                voltage_str = vout_match.group(2) # 元の数値の文字列をそのまま取得
                
                # 0, 1 への変換は行わず、元の数値のまま格納
                current_row[f'vout{bit_num}'] = voltage_str

        # 最後のブロックをリストに追加
        if current_row is not None:
            data_list.append(current_row)

    # CSVファイルへの書き込み
    headers = ['vin', 'vout5', 'vout4', 'vout3', 'vout2', 'vout1', 'vout0']
    
    with open(output_filename, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=headers)
        # ヘッダー (vin, vout5, ..., vout0) を書き込み
        writer.writeheader()
        
        for row in data_list:
            # データが欠損していた場合のデフォルト値は空文字に設定
            complete_row = {h: row.get(h, '') for h in headers}
            writer.writerow(complete_row)

    print(f"変換が完了しました。データ数: {len(data_list)} 行 -> {output_filename}")

if __name__ == '__main__':

    ref_volt = 5.0

    # ファイル名の指定
    base_dir = os.path.expanduser('~/.xschem/simulations/')
    input_file = os.path.join(base_dir, 'tran_sar_adc_out_typ.txt')
    csv_file = 'tran_sar_adc_out_typ.csv'
    adc_result_file = 'tran_sar_adc_vin_vout_result.csv'
    png_file = 'tran_sar_adc_vin_vout_result.png'
    
    convert_txt_to_csv(input_file, csv_file)
    convert_csv_to_png(ref_volt, csv_file, adc_result_file, png_file)

