//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Oct 29 15:42:18 2026
//Host        : DESKTOP-US6CV0K running 64-bit major release  (build 9200)
//Command     : generate_target gpio_subsystem_wrapper.bd
//Design      : gpio_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module gpio_subsystem_wrapper
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    btn_i,
    irq,
    led_o,
    s_axi_aclk,
    s_axi_aresetn);
  input [16:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input [4:0]btn_i;
  output irq;
  output [7:0]led_o;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [16:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_arvalid;
  wire [16:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire [0:0]S_AXI_awready;
  wire [0:0]S_AXI_awvalid;
  wire [0:0]S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [0:0]S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [0:0]S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire [0:0]S_AXI_wvalid;
  wire [4:0]btn_i;
  wire irq;
  wire [7:0]led_o;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  gpio_subsystem gpio_subsystem_i
       (.S_AXI_araddr(S_AXI_araddr),
        .S_AXI_arprot(S_AXI_arprot),
        .S_AXI_arready(S_AXI_arready),
        .S_AXI_arvalid(S_AXI_arvalid),
        .S_AXI_awaddr(S_AXI_awaddr),
        .S_AXI_awprot(S_AXI_awprot),
        .S_AXI_awready(S_AXI_awready),
        .S_AXI_awvalid(S_AXI_awvalid),
        .S_AXI_bready(S_AXI_bready),
        .S_AXI_bresp(S_AXI_bresp),
        .S_AXI_bvalid(S_AXI_bvalid),
        .S_AXI_rdata(S_AXI_rdata),
        .S_AXI_rready(S_AXI_rready),
        .S_AXI_rresp(S_AXI_rresp),
        .S_AXI_rvalid(S_AXI_rvalid),
        .S_AXI_wdata(S_AXI_wdata),
        .S_AXI_wready(S_AXI_wready),
        .S_AXI_wstrb(S_AXI_wstrb),
        .S_AXI_wvalid(S_AXI_wvalid),
        .btn_i(btn_i),
        .irq(irq),
        .led_o(led_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
endmodule
