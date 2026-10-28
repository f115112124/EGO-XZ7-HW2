# EGO-XZ7 HW2 攜帶包

## 另一台電腦的固定位置

將 ZIP 解壓到 C:\，確認得到 `C:\soc_hw2\export`，不是 `C:\soc_hw2\soc_hw2\export`。
需已安裝 Vivado 2018.3、Xilinx SDK 2018.3（含 Zynq-7000 與 Cable Drivers）。
軟體安裝路徑可以不同，檔案包不包含安裝軟體。USB 線、板子與電源也要帶走。

## 立即展示（使用既有已驗證成品）

- FPGA 檔案：`C:/soc_hw2/demo/design_1_wrapper.bit`
- PS 初始化：`C:/soc_hw2/demo/ps7_init.tcl`
- ARM 程式：`C:/soc_hw2/demo/hw2_demo.elf`
- 這三件是固定的已上板展示版本，請一起保留，不要個別覆寫。
- `export/design_1_wrapper.hdf` 則供 GUI 建立／更新硬體平台使用。

只下載 .bit 不會執行 C 程式，還需要初始化 PS 並下載 ELF。
若依 PPT 的 GUI 路徑無法執行，可在 SDK 的 XSCT Console 輸入：

```tcl
source C:/soc_hw2/scripts/run_prebuilt_demo.tcl
```

這一步會 reset 板子並重新載入，先確認只接這一片 EGO-XZ7。
此腳本只讀取 demo 裡的 BIT、ps7_init.tcl、ELF，不受後續 export 硬體更新影響。
看到 `HW2_DEMO_RUNNING` 後 LED 每 0.5 秒加 1，按中央 S6 後熄滅約兩秒，再從 1 計數。
本腳本不寫入 Flash，板子斷電後需重新執行。
另一台電腦的 UART COM 編號要在裝置管理員重新確認，115200、8N1、無流量控制。

## 看硬體工程／需要重新編譯時

Vivado 2018.3 不開其他工程，在底下 Tcl Console 輸入：

```tcl
source C:/soc_hw2/scripts/create_hardware_project.tcl
```

等 `HW2_PROJECT_READY` 後，工程在 `C:/soc_hw2/hardware/soc_hw2.xpr`。
這一步建立 Block Design 與 wrapper，不會跑合成或下載板子。
之後用 File > Open Project 開此 .xpr，不要再次 source 建立腳本。
GUI 的 Generate Bitstream 完成後，可 source `C:/soc_hw2/scripts/export_hardware.tcl` 更新 export 中的 BIT/HDF。
匯出成功訊息為 `HW2_EXPORT_OK`。此腳本不另外更新獨立的 ps7_init.tcl。
若要執行新硬體，請用新的 HDF 建立／更新 SDK 硬體平台並重新編譯 BSP 與應用程式。
新的 PS 初始化檔由 SDK 從 HDF 解出，位於 `C:/soc_hw2/sdk/hw_platform/ps7_init.tcl`。
GUI 使用該新硬體平台的初始化檔。請勿把新 export 的 BIT 和舊 demo 的 ELF／初始化檔混搭。
此包的 PS 參數和 XDC 已包含設定，BOARD_PART 空白是預期狀態，無需 EGO Board Files。

## 建立乾淨的 SDK 工作區

首次使用請讓 `C:/soc_hw2/sdk` 不存在或為空，使用新的 workspace。
GUI 可從 File > New > Other > Xilinx > Hardware Platform Specification 匯入 export 的 HDF，
再建立 hw2_demo 空白 C 專案、standalone BSP、ps7_cortexa9_0，並匯入 firmware/hw2_demo/main.c。
也可在 SDK XSCT Console 執行：

```tcl
source C:/soc_hw2/scripts/create_sdk_workspace.tcl
```

成功訊息 `SDK_BUILD_OK`，ELF 在 `C:/soc_hw2/sdk/hw2_demo/Debug/hw2_demo.elf`。
完成後 SDK 的 File > Switch Workspace > Other 選 `C:/soc_hw2/sdk`。
若 SDK Console 不支援建立專案，可用安裝目錄的 SDK/2018.3/bin/xsct.bat 執行同一份 Tcl。

## 檔案用途

- export：目前的 BIT 與 HDF，可由匯出腳本更新。
- demo：固定已上板版本的 BIT、ps7_init.tcl、ELF，供保底展示腳本整組使用。
- firmware：main.c 原始碼。
- constraints：EGO LED 與按鈕腳位 XDC。
- reference：PS7 板卡設定與參考來源。
- scripts：可攜重建、匯出、SDK 建立、JTAG 展示腳本。
- evidence：本次成功測試及編譯檢查紀錄。
- docs：Word 實驗報告。

不帶原電腦的 .metadata、.Xil、cache 或完整 SDK 安裝目錄，避免舊電腦絕對路徑。
檔案雜湊見 MANIFEST_SHA256.json。新電腦的硬體與驅動仍需在現場確認。
