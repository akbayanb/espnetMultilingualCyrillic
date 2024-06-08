#!/usr/bin/env bash
utils/combine_data.sh data/train_ky_tt data/train_ky data/train_tt
utils/combine_data.sh data/train_ky_tt_kk data/train_ky_tt data/train_kk
utils/combine_data.sh data/train_ky_tt_kk_ba data/train_ky_tt_kk data/train_ba
utils/combine_data.sh data/train_all data/train_ky_tt_kk_ba data/train_sah
#utils/combine_data.sh data/test_ky_tt data/test_ky data/test_tt
utils/combine_data.sh data/dev_ky_tt data/dev_ky data/dev_tt
utils/combine_data.sh data/dev_ky_tt_kk data/dev_ky_tt data/dev_kk
utils/combine_data.sh data/dev_ky_tt_kk_ba data/dev_ky_tt_kk data/dev_ba
utils/combine_data.sh data/dev_all data/dev_ky_tt_kk_ba data/dev_sah
#python3 local/data3.py data/train_ky_tt/text data/train_ky_tt/text2
#python3 local/data3.py data/dev_ky_tt/text data/dev_ky_tt/text2
#python3 local/data3.py data/test_ky_tt/text data/test_ky_tt/text2
#cat data/train_ky_tt/text2 |  awk '{print tolower($0)}' |  tr -s " " > data/train_ky_tt/text3
#cat data/dev_ky_tt/text2 |  awk '{print tolower($0)}' |  tr -s " " > data/dev_ky_tt/text3
#cat data/test_ky_tt/text2 |  awk '{print tolower($0)}' |  tr -s " " > data/test_ky_tt/text3
#cut -d" " -f1 data/train_ky_tt/text | paste -d " " -  data/train_ky_tt/text2 > data/train_ky_tt/text3
#cut -d" " -f1 data/dev_ky_tt/text | paste -d " " -  data/dev_ky_tt/text2 > data/dev_ky_tt/text3
#cut -d" " -f1 data/test_ky_tt/text | paste -d " " -  data/test_ky_tt/text2 > data/test_ky_tt/text3
#cp data/train_ky_tt/text data/train_ky_tt/text_org
#cp data/dev_ky_tt/text data/dev_ky_tt/text_org
#cp data/test_ky_tt/text data/test_ky_tt/text_org
#mv data/train_ky_tt/text3 data/train_ky_tt/text
#mv data/dev_ky_tt/text3 data/dev_ky_tt/text
#mv data/test_ky_tt/text3 data/test_ky_tt/text
utils/fix_data_dir.sh data/train_all
utils/fix_data_dir.sh data/dev_all
#utils/fix_data_dir.sh data/test_ky_tt
utils/validate_data_dir.sh --no-feats data/train_all
#utils/validate_data_dir.sh --no-feats data/test_ky_tt
utils/validate_data_dir.sh --no-feats data/dev_all
