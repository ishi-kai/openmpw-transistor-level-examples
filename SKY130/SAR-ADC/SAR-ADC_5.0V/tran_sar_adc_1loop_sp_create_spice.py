import os

def create_spice_files():
    # テンプレートファイル名
    base_dir = os.path.expanduser('~/.xschem/simulations/')
    template_file = os.path.join(base_dir, 'tran_sar_adc_1loop_sp.spice')
    
    # 1. ファイルの読み込み
    if not os.path.exists(template_file):
        print(f"エラー: {template_file} が見つかりません。")
        return

    with open(template_file, 'r', encoding='utf-8') as f:
        template_content = f.read()

    # パラメータ設定
    REF_VOLT = 5.0
    DELTA_VOLT = REF_VOLT / 64.0

    # 6. 0から63まで繰り返す
    for bit_count in range(64):
        # 2. 現在のビットカウントに基づいたVINの決定
        # 最初の「0」は delta_volt の 1/2
        if bit_count == 0:
            current_vin = DELTA_VOLT * 0.5
        else:
            current_vin = DELTA_VOLT * bit_count

        # 3. 変更箇所の作成（alter文の形式で作成）
        alter_vref = f"alter VREF {REF_VOLT:.6f}"
        alter_vin = f"alter VIN  {current_vin:.6f}"
        
        # 4. BITNUMの変更（ファイル内に「BITNUM」という文字列がある前提で置換）
        # ※もしファイル内にBITNUMが直接記述されていない場合は、
        #   .param BITNUM=... などの形式に合わせる必要があります
        bitnum_str = f"BITNUM_{bit_count}"

        # テンプレート内の該当箇所を置換
        # ここでは単純化のため、テンプレート内の特定の文字列を置き換える想定です
        # 実際のファイル構造に合わせて、この置換ロジックを調整してください
        new_content = template_content
        new_content = new_content.replace("alter VREF 5.0", alter_vref)
        new_content = new_content.replace("alter VIN  1.1", alter_vin)
        new_content = new_content.replace("BITNUM", bitnum_str)

        # 5. ファイルとして保存
        output_filename = f"tran_sar_adc_1loop_sp_{bit_count}.spice"
        with open(output_filename, 'w', encoding='utf-8') as f:
            f.write(new_content)
        
        print(f"生成完了: {output_filename}")

if __name__ == '__main__':
    create_spice_files()

