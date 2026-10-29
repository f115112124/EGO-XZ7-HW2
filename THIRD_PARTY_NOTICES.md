# 設定與產生檔來源

- PS7 板卡參數與腳位依據列在 [`reference/SOURCES.md`](reference/SOURCES.md)，其中包含 Chee-En/SoC_HW2 的固定 commit 連結。
- `demo/` 與 `demo_ip/` 的初始化檔、Bitstream、HDF 與 ELF 是 Vivado／Xilinx SDK 2018.3 的工程產生檔。
- `ip_repo/hw2_gpio_ip_1_0/` 包含 Xilinx 產生的 HDL 及 AXI GPIO／AXI Interconnect 子 IP 設定；保留其原始著作權標示。自訂成果是子系統的配置、介面、位址與封裝。
- 產生檔和報告中原有的 Xilinx 著作權標示予以保留。
- 本倉庫沒有替參考工程、Xilinx 軟體或產生檔另行指定開源授權。

公開版本的上板及 Vivado 報告移除了線材序號與建置主機名稱，保留 UART 測試結果、DRC 與時序數值。
