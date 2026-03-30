// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : LeisureCruiseHarness
// Git hash  : 2887f683c0afb04fbbf84dfa2cf44c1d09ded9f5

`timescale 1ns/1ps

module LeisureCruiseHarness (
  input  wire          clk,
  input  wire          reset_n,
  input  wire          jtag_tms,
  input  wire          jtag_tdi,
  output wire          jtag_tdo,
  input  wire          jtag_tck,
  output wire          uart_txd,
  input  wire          uart_rxd,
  output wire          gpio_0,
  output wire          gpio_1,
  output wire          gpio_2,
  output wire          gpio_3
);

  wire                pad_gpio_0_c2p;
  wire                pad_gpio_0_c2p_en;
  wire                pad_gpio_1_c2p;
  wire                pad_gpio_1_c2p_en;
  wire                pad_gpio_2_c2p;
  wire                pad_gpio_2_c2p_en;
  wire                pad_gpio_3_c2p;
  wire                pad_gpio_3_c2p_en;
  wire                core_jtag_tdo;
  wire                core_uart_txd;
  wire       [3:0]    core_gpio_write;
  wire       [3:0]    core_gpio_writeEnable;
  wire                core_sram_0_A_CLK;
  wire                core_sram_0_A_MEN;
  wire                core_sram_0_A_WEN;
  wire                core_sram_0_A_REN;
  wire       [8:0]    core_sram_0_A_ADDR;
  wire       [31:0]   core_sram_0_A_DIN;
  wire                core_sram_0_A_DLY;
  wire       [31:0]   core_sram_0_A_BM;
  wire                core_sram_0_A_BIST_CLK;
  wire                core_sram_0_A_BIST_EN;
  wire                core_sram_0_A_BIST_MEN;
  wire                core_sram_0_A_BIST_WEN;
  wire                core_sram_0_A_BIST_REN;
  wire       [8:0]    core_sram_0_A_BIST_ADDR;
  wire       [31:0]   core_sram_0_A_BIST_DIN;
  wire       [31:0]   core_sram_0_A_BIST_BM;
  wire                core_sram_1_A_CLK;
  wire                core_sram_1_A_MEN;
  wire                core_sram_1_A_WEN;
  wire                core_sram_1_A_REN;
  wire       [8:0]    core_sram_1_A_ADDR;
  wire       [31:0]   core_sram_1_A_DIN;
  wire                core_sram_1_A_DLY;
  wire       [31:0]   core_sram_1_A_BM;
  wire                core_sram_1_A_BIST_CLK;
  wire                core_sram_1_A_BIST_EN;
  wire                core_sram_1_A_BIST_MEN;
  wire                core_sram_1_A_BIST_WEN;
  wire                core_sram_1_A_BIST_REN;
  wire       [8:0]    core_sram_1_A_BIST_ADDR;
  wire       [31:0]   core_sram_1_A_BIST_DIN;
  wire       [31:0]   core_sram_1_A_BIST_BM;
  wire                core_sram_2_A_CLK;
  wire                core_sram_2_A_MEN;
  wire                core_sram_2_A_WEN;
  wire                core_sram_2_A_REN;
  wire       [8:0]    core_sram_2_A_ADDR;
  wire       [31:0]   core_sram_2_A_DIN;
  wire                core_sram_2_A_DLY;
  wire       [31:0]   core_sram_2_A_BM;
  wire                core_sram_2_A_BIST_CLK;
  wire                core_sram_2_A_BIST_EN;
  wire                core_sram_2_A_BIST_MEN;
  wire                core_sram_2_A_BIST_WEN;
  wire                core_sram_2_A_BIST_REN;
  wire       [8:0]    core_sram_2_A_BIST_ADDR;
  wire       [31:0]   core_sram_2_A_BIST_DIN;
  wire       [31:0]   core_sram_2_A_BIST_BM;
  wire                core_sram_3_A_CLK;
  wire                core_sram_3_A_MEN;
  wire                core_sram_3_A_WEN;
  wire                core_sram_3_A_REN;
  wire       [8:0]    core_sram_3_A_ADDR;
  wire       [31:0]   core_sram_3_A_DIN;
  wire                core_sram_3_A_DLY;
  wire       [31:0]   core_sram_3_A_BM;
  wire                core_sram_3_A_BIST_CLK;
  wire                core_sram_3_A_BIST_EN;
  wire                core_sram_3_A_BIST_MEN;
  wire                core_sram_3_A_BIST_WEN;
  wire                core_sram_3_A_BIST_REN;
  wire       [8:0]    core_sram_3_A_BIST_ADDR;
  wire       [31:0]   core_sram_3_A_BIST_DIN;
  wire       [31:0]   core_sram_3_A_BIST_BM;
  wire                pad_clk_p2c;
  wire                pad_reset_n_p2c;
  wire                pad_jtag_tms_p2c;
  wire                pad_jtag_tdi_p2c;
  wire                pad_jtag_tck_p2c;
  wire                pad_uart_rxd_p2c;
  wire                pad_gpio_0_p2c;
  wire                pad_gpio_1_p2c;
  wire                pad_gpio_2_p2c;
  wire                pad_gpio_3_p2c;
  wire       [31:0]   srams_0_A_DOUT;
  wire       [31:0]   srams_1_A_DOUT;
  wire       [31:0]   srams_2_A_DOUT;
  wire       [31:0]   srams_3_A_DOUT;
  reg        [3:0]    _zz_gpio_read;

  LeisureCruise core (
    .clk                (pad_clk_p2c                 ), //i
    .reset_n            (pad_reset_n_p2c             ), //i
    .jtag_tms           (pad_jtag_tms_p2c            ), //i
    .jtag_tdi           (pad_jtag_tdi_p2c            ), //i
    .jtag_tdo           (core_jtag_tdo               ), //o
    .jtag_tck           (pad_jtag_tck_p2c            ), //i
    .uart_txd           (core_uart_txd               ), //o
    .uart_rxd           (pad_uart_rxd_p2c            ), //i
    .gpio_read          (_zz_gpio_read[3:0]          ), //i
    .gpio_write         (core_gpio_write[3:0]        ), //o
    .gpio_writeEnable   (core_gpio_writeEnable[3:0]  ), //o
    .sram_0_A_CLK       (core_sram_0_A_CLK           ), //o
    .sram_0_A_MEN       (core_sram_0_A_MEN           ), //o
    .sram_0_A_WEN       (core_sram_0_A_WEN           ), //o
    .sram_0_A_REN       (core_sram_0_A_REN           ), //o
    .sram_0_A_ADDR      (core_sram_0_A_ADDR[8:0]     ), //o
    .sram_0_A_DIN       (core_sram_0_A_DIN[31:0]     ), //o
    .sram_0_A_DLY       (core_sram_0_A_DLY           ), //o
    .sram_0_A_DOUT      (srams_0_A_DOUT[31:0]        ), //i
    .sram_0_A_BM        (core_sram_0_A_BM[31:0]      ), //o
    .sram_0_A_BIST_CLK  (core_sram_0_A_BIST_CLK      ), //o
    .sram_0_A_BIST_EN   (core_sram_0_A_BIST_EN       ), //o
    .sram_0_A_BIST_MEN  (core_sram_0_A_BIST_MEN      ), //o
    .sram_0_A_BIST_WEN  (core_sram_0_A_BIST_WEN      ), //o
    .sram_0_A_BIST_REN  (core_sram_0_A_BIST_REN      ), //o
    .sram_0_A_BIST_ADDR (core_sram_0_A_BIST_ADDR[8:0]), //o
    .sram_0_A_BIST_DIN  (core_sram_0_A_BIST_DIN[31:0]), //o
    .sram_0_A_BIST_BM   (core_sram_0_A_BIST_BM[31:0] ), //o
    .sram_1_A_CLK       (core_sram_1_A_CLK           ), //o
    .sram_1_A_MEN       (core_sram_1_A_MEN           ), //o
    .sram_1_A_WEN       (core_sram_1_A_WEN           ), //o
    .sram_1_A_REN       (core_sram_1_A_REN           ), //o
    .sram_1_A_ADDR      (core_sram_1_A_ADDR[8:0]     ), //o
    .sram_1_A_DIN       (core_sram_1_A_DIN[31:0]     ), //o
    .sram_1_A_DLY       (core_sram_1_A_DLY           ), //o
    .sram_1_A_DOUT      (srams_1_A_DOUT[31:0]        ), //i
    .sram_1_A_BM        (core_sram_1_A_BM[31:0]      ), //o
    .sram_1_A_BIST_CLK  (core_sram_1_A_BIST_CLK      ), //o
    .sram_1_A_BIST_EN   (core_sram_1_A_BIST_EN       ), //o
    .sram_1_A_BIST_MEN  (core_sram_1_A_BIST_MEN      ), //o
    .sram_1_A_BIST_WEN  (core_sram_1_A_BIST_WEN      ), //o
    .sram_1_A_BIST_REN  (core_sram_1_A_BIST_REN      ), //o
    .sram_1_A_BIST_ADDR (core_sram_1_A_BIST_ADDR[8:0]), //o
    .sram_1_A_BIST_DIN  (core_sram_1_A_BIST_DIN[31:0]), //o
    .sram_1_A_BIST_BM   (core_sram_1_A_BIST_BM[31:0] ), //o
    .sram_2_A_CLK       (core_sram_2_A_CLK           ), //o
    .sram_2_A_MEN       (core_sram_2_A_MEN           ), //o
    .sram_2_A_WEN       (core_sram_2_A_WEN           ), //o
    .sram_2_A_REN       (core_sram_2_A_REN           ), //o
    .sram_2_A_ADDR      (core_sram_2_A_ADDR[8:0]     ), //o
    .sram_2_A_DIN       (core_sram_2_A_DIN[31:0]     ), //o
    .sram_2_A_DLY       (core_sram_2_A_DLY           ), //o
    .sram_2_A_DOUT      (srams_2_A_DOUT[31:0]        ), //i
    .sram_2_A_BM        (core_sram_2_A_BM[31:0]      ), //o
    .sram_2_A_BIST_CLK  (core_sram_2_A_BIST_CLK      ), //o
    .sram_2_A_BIST_EN   (core_sram_2_A_BIST_EN       ), //o
    .sram_2_A_BIST_MEN  (core_sram_2_A_BIST_MEN      ), //o
    .sram_2_A_BIST_WEN  (core_sram_2_A_BIST_WEN      ), //o
    .sram_2_A_BIST_REN  (core_sram_2_A_BIST_REN      ), //o
    .sram_2_A_BIST_ADDR (core_sram_2_A_BIST_ADDR[8:0]), //o
    .sram_2_A_BIST_DIN  (core_sram_2_A_BIST_DIN[31:0]), //o
    .sram_2_A_BIST_BM   (core_sram_2_A_BIST_BM[31:0] ), //o
    .sram_3_A_CLK       (core_sram_3_A_CLK           ), //o
    .sram_3_A_MEN       (core_sram_3_A_MEN           ), //o
    .sram_3_A_WEN       (core_sram_3_A_WEN           ), //o
    .sram_3_A_REN       (core_sram_3_A_REN           ), //o
    .sram_3_A_ADDR      (core_sram_3_A_ADDR[8:0]     ), //o
    .sram_3_A_DIN       (core_sram_3_A_DIN[31:0]     ), //o
    .sram_3_A_DLY       (core_sram_3_A_DLY           ), //o
    .sram_3_A_DOUT      (srams_3_A_DOUT[31:0]        ), //i
    .sram_3_A_BM        (core_sram_3_A_BM[31:0]      ), //o
    .sram_3_A_BIST_CLK  (core_sram_3_A_BIST_CLK      ), //o
    .sram_3_A_BIST_EN   (core_sram_3_A_BIST_EN       ), //o
    .sram_3_A_BIST_MEN  (core_sram_3_A_BIST_MEN      ), //o
    .sram_3_A_BIST_WEN  (core_sram_3_A_BIST_WEN      ), //o
    .sram_3_A_BIST_REN  (core_sram_3_A_BIST_REN      ), //o
    .sram_3_A_BIST_ADDR (core_sram_3_A_BIST_ADDR[8:0]), //o
    .sram_3_A_BIST_DIN  (core_sram_3_A_BIST_DIN[31:0]), //o
    .sram_3_A_BIST_BM   (core_sram_3_A_BIST_BM[31:0] )  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadIn pad_clk (
    .pad (clk        ), //~
    .p2c (pad_clk_p2c)  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadIn pad_reset_n (
    .pad (reset_n        ), //~
    .p2c (pad_reset_n_p2c)  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadIn pad_jtag_tms (
    .pad (jtag_tms        ), //~
    .p2c (pad_jtag_tms_p2c)  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadIn pad_jtag_tdi (
    .pad (jtag_tdi        ), //~
    .p2c (pad_jtag_tdi_p2c)  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadOut4mA pad_jtag_tdo (
    .pad (jtag_tdo     ), //~
    .c2p (core_jtag_tdo)  //i
  );
  (* keep = "true" *) sg13cmos5l_IOPadIn pad_jtag_tck (
    .pad (jtag_tck        ), //~
    .p2c (pad_jtag_tck_p2c)  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadOut4mA pad_uart_txd (
    .pad (uart_txd     ), //~
    .c2p (core_uart_txd)  //i
  );
  (* keep = "true" *) sg13cmos5l_IOPadIn pad_uart_rxd (
    .pad (uart_rxd        ), //~
    .p2c (pad_uart_rxd_p2c)  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadInOut4mA pad_gpio_0 (
    .pad    (gpio_0           ), //~
    .c2p    (pad_gpio_0_c2p   ), //i
    .c2p_en (pad_gpio_0_c2p_en), //i
    .p2c    (pad_gpio_0_p2c   )  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadInOut4mA pad_gpio_1 (
    .pad    (gpio_1           ), //~
    .c2p    (pad_gpio_1_c2p   ), //i
    .c2p_en (pad_gpio_1_c2p_en), //i
    .p2c    (pad_gpio_1_p2c   )  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadInOut4mA pad_gpio_2 (
    .pad    (gpio_2           ), //~
    .c2p    (pad_gpio_2_c2p   ), //i
    .c2p_en (pad_gpio_2_c2p_en), //i
    .p2c    (pad_gpio_2_p2c   )  //o
  );
  (* keep = "true" *) sg13cmos5l_IOPadInOut4mA pad_gpio_3 (
    .pad    (gpio_3           ), //~
    .c2p    (pad_gpio_3_c2p   ), //i
    .c2p_en (pad_gpio_3_c2p_en), //i
    .p2c    (pad_gpio_3_p2c   )  //o
  );
  RM_IHPSG13_1P_512x32_c2_bm_bist srams_0 (
    .A_CLK       (core_sram_0_A_CLK           ), //i
    .A_MEN       (core_sram_0_A_MEN           ), //i
    .A_WEN       (core_sram_0_A_WEN           ), //i
    .A_REN       (core_sram_0_A_REN           ), //i
    .A_ADDR      (core_sram_0_A_ADDR[8:0]     ), //i
    .A_DIN       (core_sram_0_A_DIN[31:0]     ), //i
    .A_DLY       (core_sram_0_A_DLY           ), //i
    .A_DOUT      (srams_0_A_DOUT[31:0]        ), //o
    .A_BM        (core_sram_0_A_BM[31:0]      ), //i
    .A_BIST_CLK  (core_sram_0_A_BIST_CLK      ), //i
    .A_BIST_EN   (core_sram_0_A_BIST_EN       ), //i
    .A_BIST_MEN  (core_sram_0_A_BIST_MEN      ), //i
    .A_BIST_WEN  (core_sram_0_A_BIST_WEN      ), //i
    .A_BIST_REN  (core_sram_0_A_BIST_REN      ), //i
    .A_BIST_ADDR (core_sram_0_A_BIST_ADDR[8:0]), //i
    .A_BIST_DIN  (core_sram_0_A_BIST_DIN[31:0]), //i
    .A_BIST_BM   (core_sram_0_A_BIST_BM[31:0] )  //i
  );
  RM_IHPSG13_1P_512x32_c2_bm_bist srams_1 (
    .A_CLK       (core_sram_1_A_CLK           ), //i
    .A_MEN       (core_sram_1_A_MEN           ), //i
    .A_WEN       (core_sram_1_A_WEN           ), //i
    .A_REN       (core_sram_1_A_REN           ), //i
    .A_ADDR      (core_sram_1_A_ADDR[8:0]     ), //i
    .A_DIN       (core_sram_1_A_DIN[31:0]     ), //i
    .A_DLY       (core_sram_1_A_DLY           ), //i
    .A_DOUT      (srams_1_A_DOUT[31:0]        ), //o
    .A_BM        (core_sram_1_A_BM[31:0]      ), //i
    .A_BIST_CLK  (core_sram_1_A_BIST_CLK      ), //i
    .A_BIST_EN   (core_sram_1_A_BIST_EN       ), //i
    .A_BIST_MEN  (core_sram_1_A_BIST_MEN      ), //i
    .A_BIST_WEN  (core_sram_1_A_BIST_WEN      ), //i
    .A_BIST_REN  (core_sram_1_A_BIST_REN      ), //i
    .A_BIST_ADDR (core_sram_1_A_BIST_ADDR[8:0]), //i
    .A_BIST_DIN  (core_sram_1_A_BIST_DIN[31:0]), //i
    .A_BIST_BM   (core_sram_1_A_BIST_BM[31:0] )  //i
  );
  RM_IHPSG13_1P_512x32_c2_bm_bist srams_2 (
    .A_CLK       (core_sram_2_A_CLK           ), //i
    .A_MEN       (core_sram_2_A_MEN           ), //i
    .A_WEN       (core_sram_2_A_WEN           ), //i
    .A_REN       (core_sram_2_A_REN           ), //i
    .A_ADDR      (core_sram_2_A_ADDR[8:0]     ), //i
    .A_DIN       (core_sram_2_A_DIN[31:0]     ), //i
    .A_DLY       (core_sram_2_A_DLY           ), //i
    .A_DOUT      (srams_2_A_DOUT[31:0]        ), //o
    .A_BM        (core_sram_2_A_BM[31:0]      ), //i
    .A_BIST_CLK  (core_sram_2_A_BIST_CLK      ), //i
    .A_BIST_EN   (core_sram_2_A_BIST_EN       ), //i
    .A_BIST_MEN  (core_sram_2_A_BIST_MEN      ), //i
    .A_BIST_WEN  (core_sram_2_A_BIST_WEN      ), //i
    .A_BIST_REN  (core_sram_2_A_BIST_REN      ), //i
    .A_BIST_ADDR (core_sram_2_A_BIST_ADDR[8:0]), //i
    .A_BIST_DIN  (core_sram_2_A_BIST_DIN[31:0]), //i
    .A_BIST_BM   (core_sram_2_A_BIST_BM[31:0] )  //i
  );
  RM_IHPSG13_1P_512x32_c2_bm_bist srams_3 (
    .A_CLK       (core_sram_3_A_CLK           ), //i
    .A_MEN       (core_sram_3_A_MEN           ), //i
    .A_WEN       (core_sram_3_A_WEN           ), //i
    .A_REN       (core_sram_3_A_REN           ), //i
    .A_ADDR      (core_sram_3_A_ADDR[8:0]     ), //i
    .A_DIN       (core_sram_3_A_DIN[31:0]     ), //i
    .A_DLY       (core_sram_3_A_DLY           ), //i
    .A_DOUT      (srams_3_A_DOUT[31:0]        ), //o
    .A_BM        (core_sram_3_A_BM[31:0]      ), //i
    .A_BIST_CLK  (core_sram_3_A_BIST_CLK      ), //i
    .A_BIST_EN   (core_sram_3_A_BIST_EN       ), //i
    .A_BIST_MEN  (core_sram_3_A_BIST_MEN      ), //i
    .A_BIST_WEN  (core_sram_3_A_BIST_WEN      ), //i
    .A_BIST_REN  (core_sram_3_A_BIST_REN      ), //i
    .A_BIST_ADDR (core_sram_3_A_BIST_ADDR[8:0]), //i
    .A_BIST_DIN  (core_sram_3_A_BIST_DIN[31:0]), //i
    .A_BIST_BM   (core_sram_3_A_BIST_BM[31:0] )  //i
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVss pad_core_gndpad_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVdd pad_core_vddpad_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVss pad_core_gndcore_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVdd pad_core_vddcore_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVss pad_sram_gndpad_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVdd pad_sram_vddpad_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVss pad_sram_gndcore_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVdd pad_sram_vddcore_0 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVss pad_sram_gndpad_1 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVdd pad_sram_vddpad_1 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVss pad_sram_gndcore_1 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVdd pad_sram_vddcore_1 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVss pad_sram_gndpad_2 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVdd pad_sram_vddpad_2 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVss pad_sram_gndcore_2 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVdd pad_sram_vddcore_2 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVss pad_sram_gndpad_3 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadIOVdd pad_sram_vddpad_3 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVss pad_sram_gndcore_3 (
  );
  (* keep = "true" *) sg13cmos5l_IOPadVdd pad_sram_vddcore_3 (
  );
  assign pad_gpio_0_c2p = core_gpio_write[0];
  assign pad_gpio_0_c2p_en = core_gpio_writeEnable[0];
  always @(*) begin
    _zz_gpio_read[0] = pad_gpio_0_p2c;
    _zz_gpio_read[1] = pad_gpio_1_p2c;
    _zz_gpio_read[2] = pad_gpio_2_p2c;
    _zz_gpio_read[3] = pad_gpio_3_p2c;
  end

  assign pad_gpio_1_c2p = core_gpio_write[1];
  assign pad_gpio_1_c2p_en = core_gpio_writeEnable[1];
  assign pad_gpio_2_c2p = core_gpio_write[2];
  assign pad_gpio_2_c2p_en = core_gpio_writeEnable[2];
  assign pad_gpio_3_c2p = core_gpio_write[3];
  assign pad_gpio_3_c2p_en = core_gpio_writeEnable[3];

endmodule

module LeisureCruise (
  input  wire          clk,
  input  wire          reset_n,
  input  wire          jtag_tms,
  input  wire          jtag_tdi,
  output wire          jtag_tdo,
  input  wire          jtag_tck,
  output wire          uart_txd,
  input  wire          uart_rxd,
  input  wire [3:0]    gpio_read,
  output wire [3:0]    gpio_write,
  output wire [3:0]    gpio_writeEnable,
  output wire          sram_0_A_CLK,
  output wire          sram_0_A_MEN,
  output wire          sram_0_A_WEN,
  output wire          sram_0_A_REN,
  output wire [8:0]    sram_0_A_ADDR,
  output wire [31:0]   sram_0_A_DIN,
  output wire          sram_0_A_DLY,
  input  wire [31:0]   sram_0_A_DOUT,
  output wire [31:0]   sram_0_A_BM,
  output wire          sram_0_A_BIST_CLK,
  output wire          sram_0_A_BIST_EN,
  output wire          sram_0_A_BIST_MEN,
  output wire          sram_0_A_BIST_WEN,
  output wire          sram_0_A_BIST_REN,
  output wire [8:0]    sram_0_A_BIST_ADDR,
  output wire [31:0]   sram_0_A_BIST_DIN,
  output wire [31:0]   sram_0_A_BIST_BM,
  output wire          sram_1_A_CLK,
  output wire          sram_1_A_MEN,
  output wire          sram_1_A_WEN,
  output wire          sram_1_A_REN,
  output wire [8:0]    sram_1_A_ADDR,
  output wire [31:0]   sram_1_A_DIN,
  output wire          sram_1_A_DLY,
  input  wire [31:0]   sram_1_A_DOUT,
  output wire [31:0]   sram_1_A_BM,
  output wire          sram_1_A_BIST_CLK,
  output wire          sram_1_A_BIST_EN,
  output wire          sram_1_A_BIST_MEN,
  output wire          sram_1_A_BIST_WEN,
  output wire          sram_1_A_BIST_REN,
  output wire [8:0]    sram_1_A_BIST_ADDR,
  output wire [31:0]   sram_1_A_BIST_DIN,
  output wire [31:0]   sram_1_A_BIST_BM,
  output wire          sram_2_A_CLK,
  output wire          sram_2_A_MEN,
  output wire          sram_2_A_WEN,
  output wire          sram_2_A_REN,
  output wire [8:0]    sram_2_A_ADDR,
  output wire [31:0]   sram_2_A_DIN,
  output wire          sram_2_A_DLY,
  input  wire [31:0]   sram_2_A_DOUT,
  output wire [31:0]   sram_2_A_BM,
  output wire          sram_2_A_BIST_CLK,
  output wire          sram_2_A_BIST_EN,
  output wire          sram_2_A_BIST_MEN,
  output wire          sram_2_A_BIST_WEN,
  output wire          sram_2_A_BIST_REN,
  output wire [8:0]    sram_2_A_BIST_ADDR,
  output wire [31:0]   sram_2_A_BIST_DIN,
  output wire [31:0]   sram_2_A_BIST_BM,
  output wire          sram_3_A_CLK,
  output wire          sram_3_A_MEN,
  output wire          sram_3_A_WEN,
  output wire          sram_3_A_REN,
  output wire [8:0]    sram_3_A_ADDR,
  output wire [31:0]   sram_3_A_DIN,
  output wire          sram_3_A_DLY,
  input  wire [31:0]   sram_3_A_DOUT,
  output wire [31:0]   sram_3_A_BM,
  output wire          sram_3_A_BIST_CLK,
  output wire          sram_3_A_BIST_EN,
  output wire          sram_3_A_BIST_MEN,
  output wire          sram_3_A_BIST_WEN,
  output wire          sram_3_A_BIST_REN,
  output wire [8:0]    sram_3_A_BIST_ADDR,
  output wire [31:0]   sram_3_A_BIST_DIN,
  output wire [31:0]   sram_3_A_BIST_BM
);

  wire                core_cpu_iBus_rsp_payload_error;
  wire       [7:0]    core_cpu_debug_bus_cmd_payload_address;
  wire                core_cpu_dBus_cmd_ready;
  wire                core_cpu_dBus_rsp_error;
  wire                core_srams_0_io_powerEnable;
  wire                core_srams_1_io_powerEnable;
  wire                core_srams_2_io_powerEnable;
  wire                core_srams_3_io_powerEnable;
  wire       [11:0]   core_gpio_io_bus_PADDR;
  wire       [4:0]    core_uart_io_apb_PADDR;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_input_ar_payload_addr;
  wire       [2:0]    axi4SharedDecoder_1_io_input_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1_io_input_w_payload_strb;
  wire       [19:0]   core_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr;
  wire                core_cpu_iBus_cmd_valid;
  wire       [31:0]   core_cpu_iBus_cmd_payload_pc;
  wire                core_cpu_debug_bus_cmd_ready;
  wire       [31:0]   core_cpu_debug_bus_rsp_data;
  wire                core_cpu_debug_resetOut;
  wire                core_cpu_dBus_cmd_valid;
  wire                core_cpu_dBus_cmd_payload_wr;
  wire       [3:0]    core_cpu_dBus_cmd_payload_mask;
  wire       [31:0]   core_cpu_dBus_cmd_payload_address;
  wire       [31:0]   core_cpu_dBus_cmd_payload_data;
  wire       [1:0]    core_cpu_dBus_cmd_payload_size;
  wire                jtagBridge_1_io_jtag_tdo;
  wire                jtagBridge_1_io_remote_cmd_valid;
  wire                jtagBridge_1_io_remote_cmd_payload_last;
  wire       [0:0]    jtagBridge_1_io_remote_cmd_payload_fragment;
  wire                jtagBridge_1_io_remote_rsp_ready;
  wire                systemDebugger_1_io_remote_cmd_ready;
  wire                systemDebugger_1_io_remote_rsp_valid;
  wire                systemDebugger_1_io_remote_rsp_payload_error;
  wire       [31:0]   systemDebugger_1_io_remote_rsp_payload_data;
  wire                systemDebugger_1_io_mem_cmd_valid;
  wire       [31:0]   systemDebugger_1_io_mem_cmd_payload_address;
  wire       [31:0]   systemDebugger_1_io_mem_cmd_payload_data;
  wire                systemDebugger_1_io_mem_cmd_payload_wr;
  wire       [1:0]    systemDebugger_1_io_mem_cmd_payload_size;
  wire                core_srams_0_io_axi_arw_ready;
  wire                core_srams_0_io_axi_w_ready;
  wire                core_srams_0_io_axi_b_valid;
  wire       [3:0]    core_srams_0_io_axi_b_payload_id;
  wire       [1:0]    core_srams_0_io_axi_b_payload_resp;
  wire                core_srams_0_io_axi_r_valid;
  wire       [31:0]   core_srams_0_io_axi_r_payload_data;
  wire       [3:0]    core_srams_0_io_axi_r_payload_id;
  wire       [1:0]    core_srams_0_io_axi_r_payload_resp;
  wire                core_srams_0_io_axi_r_payload_last;
  wire                core_srams_0_io_sram_A_CLK;
  wire                core_srams_0_io_sram_A_MEN;
  wire                core_srams_0_io_sram_A_WEN;
  wire                core_srams_0_io_sram_A_REN;
  wire       [8:0]    core_srams_0_io_sram_A_ADDR;
  wire       [31:0]   core_srams_0_io_sram_A_DIN;
  wire                core_srams_0_io_sram_A_DLY;
  wire       [31:0]   core_srams_0_io_sram_A_BM;
  wire                core_srams_0_io_sram_A_BIST_CLK;
  wire                core_srams_0_io_sram_A_BIST_EN;
  wire                core_srams_0_io_sram_A_BIST_MEN;
  wire                core_srams_0_io_sram_A_BIST_WEN;
  wire                core_srams_0_io_sram_A_BIST_REN;
  wire       [8:0]    core_srams_0_io_sram_A_BIST_ADDR;
  wire       [31:0]   core_srams_0_io_sram_A_BIST_DIN;
  wire       [31:0]   core_srams_0_io_sram_A_BIST_BM;
  wire                core_srams_1_io_axi_arw_ready;
  wire                core_srams_1_io_axi_w_ready;
  wire                core_srams_1_io_axi_b_valid;
  wire       [3:0]    core_srams_1_io_axi_b_payload_id;
  wire       [1:0]    core_srams_1_io_axi_b_payload_resp;
  wire                core_srams_1_io_axi_r_valid;
  wire       [31:0]   core_srams_1_io_axi_r_payload_data;
  wire       [3:0]    core_srams_1_io_axi_r_payload_id;
  wire       [1:0]    core_srams_1_io_axi_r_payload_resp;
  wire                core_srams_1_io_axi_r_payload_last;
  wire                core_srams_1_io_sram_A_CLK;
  wire                core_srams_1_io_sram_A_MEN;
  wire                core_srams_1_io_sram_A_WEN;
  wire                core_srams_1_io_sram_A_REN;
  wire       [8:0]    core_srams_1_io_sram_A_ADDR;
  wire       [31:0]   core_srams_1_io_sram_A_DIN;
  wire                core_srams_1_io_sram_A_DLY;
  wire       [31:0]   core_srams_1_io_sram_A_BM;
  wire                core_srams_1_io_sram_A_BIST_CLK;
  wire                core_srams_1_io_sram_A_BIST_EN;
  wire                core_srams_1_io_sram_A_BIST_MEN;
  wire                core_srams_1_io_sram_A_BIST_WEN;
  wire                core_srams_1_io_sram_A_BIST_REN;
  wire       [8:0]    core_srams_1_io_sram_A_BIST_ADDR;
  wire       [31:0]   core_srams_1_io_sram_A_BIST_DIN;
  wire       [31:0]   core_srams_1_io_sram_A_BIST_BM;
  wire                core_srams_2_io_axi_arw_ready;
  wire                core_srams_2_io_axi_w_ready;
  wire                core_srams_2_io_axi_b_valid;
  wire       [3:0]    core_srams_2_io_axi_b_payload_id;
  wire       [1:0]    core_srams_2_io_axi_b_payload_resp;
  wire                core_srams_2_io_axi_r_valid;
  wire       [31:0]   core_srams_2_io_axi_r_payload_data;
  wire       [3:0]    core_srams_2_io_axi_r_payload_id;
  wire       [1:0]    core_srams_2_io_axi_r_payload_resp;
  wire                core_srams_2_io_axi_r_payload_last;
  wire                core_srams_2_io_sram_A_CLK;
  wire                core_srams_2_io_sram_A_MEN;
  wire                core_srams_2_io_sram_A_WEN;
  wire                core_srams_2_io_sram_A_REN;
  wire       [8:0]    core_srams_2_io_sram_A_ADDR;
  wire       [31:0]   core_srams_2_io_sram_A_DIN;
  wire                core_srams_2_io_sram_A_DLY;
  wire       [31:0]   core_srams_2_io_sram_A_BM;
  wire                core_srams_2_io_sram_A_BIST_CLK;
  wire                core_srams_2_io_sram_A_BIST_EN;
  wire                core_srams_2_io_sram_A_BIST_MEN;
  wire                core_srams_2_io_sram_A_BIST_WEN;
  wire                core_srams_2_io_sram_A_BIST_REN;
  wire       [8:0]    core_srams_2_io_sram_A_BIST_ADDR;
  wire       [31:0]   core_srams_2_io_sram_A_BIST_DIN;
  wire       [31:0]   core_srams_2_io_sram_A_BIST_BM;
  wire                core_srams_3_io_axi_arw_ready;
  wire                core_srams_3_io_axi_w_ready;
  wire                core_srams_3_io_axi_b_valid;
  wire       [3:0]    core_srams_3_io_axi_b_payload_id;
  wire       [1:0]    core_srams_3_io_axi_b_payload_resp;
  wire                core_srams_3_io_axi_r_valid;
  wire       [31:0]   core_srams_3_io_axi_r_payload_data;
  wire       [3:0]    core_srams_3_io_axi_r_payload_id;
  wire       [1:0]    core_srams_3_io_axi_r_payload_resp;
  wire                core_srams_3_io_axi_r_payload_last;
  wire                core_srams_3_io_sram_A_CLK;
  wire                core_srams_3_io_sram_A_MEN;
  wire                core_srams_3_io_sram_A_WEN;
  wire                core_srams_3_io_sram_A_REN;
  wire       [8:0]    core_srams_3_io_sram_A_ADDR;
  wire       [31:0]   core_srams_3_io_sram_A_DIN;
  wire                core_srams_3_io_sram_A_DLY;
  wire       [31:0]   core_srams_3_io_sram_A_BM;
  wire                core_srams_3_io_sram_A_BIST_CLK;
  wire                core_srams_3_io_sram_A_BIST_EN;
  wire                core_srams_3_io_sram_A_BIST_MEN;
  wire                core_srams_3_io_sram_A_BIST_WEN;
  wire                core_srams_3_io_sram_A_BIST_REN;
  wire       [8:0]    core_srams_3_io_sram_A_BIST_ADDR;
  wire       [31:0]   core_srams_3_io_sram_A_BIST_DIN;
  wire       [31:0]   core_srams_3_io_sram_A_BIST_BM;
  wire                core_apbBridge_io_axi_arw_ready;
  wire                core_apbBridge_io_axi_w_ready;
  wire                core_apbBridge_io_axi_b_valid;
  wire       [3:0]    core_apbBridge_io_axi_b_payload_id;
  wire       [1:0]    core_apbBridge_io_axi_b_payload_resp;
  wire                core_apbBridge_io_axi_r_valid;
  wire       [31:0]   core_apbBridge_io_axi_r_payload_data;
  wire       [3:0]    core_apbBridge_io_axi_r_payload_id;
  wire       [1:0]    core_apbBridge_io_axi_r_payload_resp;
  wire                core_apbBridge_io_axi_r_payload_last;
  wire       [19:0]   core_apbBridge_io_apb_PADDR;
  wire       [0:0]    core_apbBridge_io_apb_PSEL;
  wire                core_apbBridge_io_apb_PENABLE;
  wire                core_apbBridge_io_apb_PWRITE;
  wire       [31:0]   core_apbBridge_io_apb_PWDATA;
  wire       [3:0]    core_gpio_io_gpio_write;
  wire       [3:0]    core_gpio_io_gpio_writeEnable;
  wire                core_gpio_io_bus_PREADY;
  wire       [31:0]   core_gpio_io_bus_PRDATA;
  wire                core_gpio_io_bus_PSLVERROR;
  wire       [3:0]    core_gpio_io_interrupt;
  wire                core_uart_io_apb_PREADY;
  wire       [31:0]   core_uart_io_apb_PRDATA;
  wire                core_uart_io_uart_txd;
  wire                core_uart_io_interrupt;
  wire                io_apb_decoder_io_input_PREADY;
  wire       [31:0]   io_apb_decoder_io_input_PRDATA;
  wire                io_apb_decoder_io_input_PSLVERROR;
  wire       [19:0]   io_apb_decoder_io_output_PADDR;
  wire       [1:0]    io_apb_decoder_io_output_PSEL;
  wire                io_apb_decoder_io_output_PENABLE;
  wire                io_apb_decoder_io_output_PWRITE;
  wire       [31:0]   io_apb_decoder_io_output_PWDATA;
  wire                apb3Router_1_io_input_PREADY;
  wire       [31:0]   apb3Router_1_io_input_PRDATA;
  wire                apb3Router_1_io_input_PSLVERROR;
  wire       [19:0]   apb3Router_1_io_outputs_0_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_0_PSEL;
  wire                apb3Router_1_io_outputs_0_PENABLE;
  wire                apb3Router_1_io_outputs_0_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_0_PWDATA;
  wire       [19:0]   apb3Router_1_io_outputs_1_PADDR;
  wire       [0:0]    apb3Router_1_io_outputs_1_PSEL;
  wire                apb3Router_1_io_outputs_1_PENABLE;
  wire                apb3Router_1_io_outputs_1_PWRITE;
  wire       [31:0]   apb3Router_1_io_outputs_1_PWDATA;
  wire                axi4ReadOnlyDecoder_1_io_input_ar_ready;
  wire                axi4ReadOnlyDecoder_1_io_input_r_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_input_r_payload_data;
  wire       [1:0]    axi4ReadOnlyDecoder_1_io_input_r_payload_resp;
  wire                axi4ReadOnlyDecoder_1_io_input_r_payload_last;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_addr;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_1_io_outputs_0_r_ready;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_addr;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_1_io_outputs_1_r_ready;
  wire                axi4ReadOnlyDecoder_1_io_outputs_2_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_addr;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_1_io_outputs_2_r_ready;
  wire                axi4ReadOnlyDecoder_1_io_outputs_3_ar_valid;
  wire       [31:0]   axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_addr;
  wire       [3:0]    axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_cache;
  wire       [2:0]    axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_prot;
  wire                axi4ReadOnlyDecoder_1_io_outputs_3_r_ready;
  wire                axi4SharedDecoder_1_io_input_arw_ready;
  wire                axi4SharedDecoder_1_io_input_w_ready;
  wire                axi4SharedDecoder_1_io_input_b_valid;
  wire       [1:0]    axi4SharedDecoder_1_io_input_b_payload_resp;
  wire                axi4SharedDecoder_1_io_input_r_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_input_r_payload_data;
  wire       [1:0]    axi4SharedDecoder_1_io_input_r_payload_resp;
  wire                axi4SharedDecoder_1_io_input_r_payload_last;
  wire                axi4SharedDecoder_1_io_sharedOutputs_0_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_addr;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_prot;
  wire                axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_write;
  wire                axi4SharedDecoder_1_io_sharedOutputs_0_w_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_strb;
  wire                axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_last;
  wire                axi4SharedDecoder_1_io_sharedOutputs_0_b_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_0_r_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_1_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_addr;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_prot;
  wire                axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_write;
  wire                axi4SharedDecoder_1_io_sharedOutputs_1_w_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_strb;
  wire                axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_last;
  wire                axi4SharedDecoder_1_io_sharedOutputs_1_b_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_1_r_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_2_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_addr;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_prot;
  wire                axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_write;
  wire                axi4SharedDecoder_1_io_sharedOutputs_2_w_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_strb;
  wire                axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_last;
  wire                axi4SharedDecoder_1_io_sharedOutputs_2_b_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_2_r_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_3_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_addr;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_prot;
  wire                axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_write;
  wire                axi4SharedDecoder_1_io_sharedOutputs_3_w_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_strb;
  wire                axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_last;
  wire                axi4SharedDecoder_1_io_sharedOutputs_3_b_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_3_r_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_4_arw_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_addr;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_size;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_cache;
  wire       [2:0]    axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_prot;
  wire                axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_write;
  wire                axi4SharedDecoder_1_io_sharedOutputs_4_w_valid;
  wire       [31:0]   axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_data;
  wire       [3:0]    axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_strb;
  wire                axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_last;
  wire                axi4SharedDecoder_1_io_sharedOutputs_4_b_ready;
  wire                axi4SharedDecoder_1_io_sharedOutputs_4_r_ready;
  wire                core_srams_0_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                core_srams_0_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                core_srams_0_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                core_srams_0_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                core_srams_0_io_axi_arbiter_io_output_arw_valid;
  wire       [31:0]   core_srams_0_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_id;
  wire       [3:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_region;
  wire       [7:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_burst;
  wire       [0:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_lock;
  wire       [3:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_cache;
  wire       [3:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_qos;
  wire       [2:0]    core_srams_0_io_axi_arbiter_io_output_arw_payload_prot;
  wire                core_srams_0_io_axi_arbiter_io_output_arw_payload_write;
  wire                core_srams_0_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   core_srams_0_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    core_srams_0_io_axi_arbiter_io_output_w_payload_strb;
  wire                core_srams_0_io_axi_arbiter_io_output_w_payload_last;
  wire                core_srams_0_io_axi_arbiter_io_output_b_ready;
  wire                core_srams_0_io_axi_arbiter_io_output_r_ready;
  wire                core_srams_1_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                core_srams_1_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                core_srams_1_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                core_srams_1_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                core_srams_1_io_axi_arbiter_io_output_arw_valid;
  wire       [31:0]   core_srams_1_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_id;
  wire       [3:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_region;
  wire       [7:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_burst;
  wire       [0:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_lock;
  wire       [3:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_cache;
  wire       [3:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_qos;
  wire       [2:0]    core_srams_1_io_axi_arbiter_io_output_arw_payload_prot;
  wire                core_srams_1_io_axi_arbiter_io_output_arw_payload_write;
  wire                core_srams_1_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   core_srams_1_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    core_srams_1_io_axi_arbiter_io_output_w_payload_strb;
  wire                core_srams_1_io_axi_arbiter_io_output_w_payload_last;
  wire                core_srams_1_io_axi_arbiter_io_output_b_ready;
  wire                core_srams_1_io_axi_arbiter_io_output_r_ready;
  wire                core_srams_2_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                core_srams_2_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                core_srams_2_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                core_srams_2_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                core_srams_2_io_axi_arbiter_io_output_arw_valid;
  wire       [31:0]   core_srams_2_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_id;
  wire       [3:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_region;
  wire       [7:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_burst;
  wire       [0:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_lock;
  wire       [3:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_cache;
  wire       [3:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_qos;
  wire       [2:0]    core_srams_2_io_axi_arbiter_io_output_arw_payload_prot;
  wire                core_srams_2_io_axi_arbiter_io_output_arw_payload_write;
  wire                core_srams_2_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   core_srams_2_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    core_srams_2_io_axi_arbiter_io_output_w_payload_strb;
  wire                core_srams_2_io_axi_arbiter_io_output_w_payload_last;
  wire                core_srams_2_io_axi_arbiter_io_output_b_ready;
  wire                core_srams_2_io_axi_arbiter_io_output_r_ready;
  wire                core_srams_3_io_axi_arbiter_io_readInputs_0_ar_ready;
  wire                core_srams_3_io_axi_arbiter_io_readInputs_0_r_valid;
  wire       [31:0]   core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_data;
  wire       [2:0]    core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_id;
  wire       [1:0]    core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_resp;
  wire                core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_last;
  wire                core_srams_3_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                core_srams_3_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [2:0]    core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [2:0]    core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                core_srams_3_io_axi_arbiter_io_output_arw_valid;
  wire       [31:0]   core_srams_3_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_id;
  wire       [3:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_region;
  wire       [7:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_burst;
  wire       [0:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_lock;
  wire       [3:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_cache;
  wire       [3:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_qos;
  wire       [2:0]    core_srams_3_io_axi_arbiter_io_output_arw_payload_prot;
  wire                core_srams_3_io_axi_arbiter_io_output_arw_payload_write;
  wire                core_srams_3_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   core_srams_3_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    core_srams_3_io_axi_arbiter_io_output_w_payload_strb;
  wire                core_srams_3_io_axi_arbiter_io_output_w_payload_last;
  wire                core_srams_3_io_axi_arbiter_io_output_b_ready;
  wire                core_srams_3_io_axi_arbiter_io_output_r_ready;
  wire                core_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  wire                core_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready;
  wire                core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid;
  wire       [3:0]    core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id;
  wire       [1:0]    core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp;
  wire                core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid;
  wire       [31:0]   core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data;
  wire       [3:0]    core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id;
  wire       [1:0]    core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp;
  wire                core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last;
  wire                core_apbBridge_io_axi_arbiter_io_output_arw_valid;
  wire       [19:0]   core_apbBridge_io_axi_arbiter_io_output_arw_payload_addr;
  wire       [3:0]    core_apbBridge_io_axi_arbiter_io_output_arw_payload_id;
  wire       [7:0]    core_apbBridge_io_axi_arbiter_io_output_arw_payload_len;
  wire       [2:0]    core_apbBridge_io_axi_arbiter_io_output_arw_payload_size;
  wire       [1:0]    core_apbBridge_io_axi_arbiter_io_output_arw_payload_burst;
  wire                core_apbBridge_io_axi_arbiter_io_output_arw_payload_write;
  wire                core_apbBridge_io_axi_arbiter_io_output_w_valid;
  wire       [31:0]   core_apbBridge_io_axi_arbiter_io_output_w_payload_data;
  wire       [3:0]    core_apbBridge_io_axi_arbiter_io_output_w_payload_strb;
  wire                core_apbBridge_io_axi_arbiter_io_output_w_payload_last;
  wire                core_apbBridge_io_axi_arbiter_io_output_b_ready;
  wire                core_apbBridge_io_axi_arbiter_io_output_r_ready;
  wire                core_core_cpu_dBus_cmd_fire;
  wire                when_Utils_l706;
  reg                 _zz_when_Utils_l735;
  reg                 _zz_when_Utils_l735_1;
  reg        [2:0]    _zz_dBus_cmd_ready;
  reg        [2:0]    _zz_dBus_cmd_ready_1;
  wire                when_Utils_l735;
  wire                when_Utils_l737;
  wire                _zz_dBus_cmd_ready_2;
  wire                _zz_io_input_arw_valid;
  reg                 _zz_dBus_cmd_ready_3;
  wire                _zz_when_Stream_l445;
  wire       [31:0]   _zz_io_input_arw_payload_addr;
  wire       [1:0]    _zz_io_input_arw_payload_size;
  wire                _zz_io_input_arw_valid_1;
  wire                _zz_when_Stream_l1063;
  wire                _zz_io_input_w_valid;
  reg                 _zz_when_Stream_l1063_1;
  reg                 _zz_when_Stream_l1063_2;
  reg                 _zz_when_Stream_l1063_3;
  wire                when_Stream_l1063;
  wire                when_Stream_l1063_1;
  wire                when_Stream_l445;
  reg                 _zz_io_input_w_valid_1;
  reg        [3:0]    _zz_io_input_w_payload_strb;
  wire                core_core_cpu_debug_bus_cmd_fire;
  reg                 core_core_cpu_debug_bus_cmd_fire_regNext;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready;
  wire       [31:0]   core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_addr;
  wire       [3:0]    core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_cache;
  wire       [2:0]    core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_prot;
  reg                 core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready;
  wire       [31:0]   core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_addr;
  wire       [3:0]    core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_cache;
  wire       [2:0]    core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_prot;
  reg                 core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_valid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_ready;
  wire       [31:0]   core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_addr;
  wire       [3:0]    core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_cache;
  wire       [2:0]    core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_prot;
  reg                 core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_rValid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_fire;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_valid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_ready;
  wire       [31:0]   core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_addr;
  wire       [3:0]    core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_cache;
  wire       [2:0]    core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_prot;
  reg                 core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_rValid;
  wire                core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_fire;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_valid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_ready;
  wire       [31:0]   core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_addr;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_size;
  wire       [3:0]    core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_cache;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_prot;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_write;
  reg                 core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_rValid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_fire;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_valid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_ready;
  wire       [31:0]   core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_addr;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_size;
  wire       [3:0]    core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_cache;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_prot;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_write;
  reg                 core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_rValid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_fire;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_valid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_ready;
  wire       [31:0]   core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_addr;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_size;
  wire       [3:0]    core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_cache;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_prot;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_write;
  reg                 core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_rValid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_fire;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_valid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_ready;
  wire       [31:0]   core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_addr;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_size;
  wire       [3:0]    core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_cache;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_prot;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_write;
  reg                 core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_rValid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_fire;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_valid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_ready;
  wire       [31:0]   core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_addr;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_size;
  wire       [3:0]    core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_cache;
  wire       [2:0]    core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_prot;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_write;
  reg                 core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_rValid;
  wire                core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_fire;
  wire       [2:0]    _zz_io_readInputs_0_ar_payload_id;
  wire       [3:0]    _zz_io_readInputs_0_ar_payload_region;
  wire       [7:0]    _zz_io_readInputs_0_ar_payload_len;
  wire       [2:0]    _zz_io_sharedInputs_0_arw_payload_id;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_region;
  wire       [7:0]    _zz_io_sharedInputs_0_arw_payload_len;
  wire       [2:0]    _zz_io_readInputs_0_ar_payload_id_1;
  wire       [3:0]    _zz_io_readInputs_0_ar_payload_region_1;
  wire       [7:0]    _zz_io_readInputs_0_ar_payload_len_1;
  wire       [2:0]    _zz_io_sharedInputs_0_arw_payload_id_1;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_region_1;
  wire       [7:0]    _zz_io_sharedInputs_0_arw_payload_len_1;
  wire       [2:0]    _zz_io_readInputs_0_ar_payload_id_2;
  wire       [3:0]    _zz_io_readInputs_0_ar_payload_region_2;
  wire       [7:0]    _zz_io_readInputs_0_ar_payload_len_2;
  wire       [2:0]    _zz_io_sharedInputs_0_arw_payload_id_2;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_region_2;
  wire       [7:0]    _zz_io_sharedInputs_0_arw_payload_len_2;
  wire       [2:0]    _zz_io_readInputs_0_ar_payload_id_3;
  wire       [3:0]    _zz_io_readInputs_0_ar_payload_region_3;
  wire       [7:0]    _zz_io_readInputs_0_ar_payload_len_3;
  wire       [2:0]    _zz_io_sharedInputs_0_arw_payload_id_3;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_region_3;
  wire       [7:0]    _zz_io_sharedInputs_0_arw_payload_len_3;
  wire       [3:0]    _zz_io_sharedInputs_0_arw_payload_id_4;
  wire       [7:0]    _zz_io_sharedInputs_0_arw_payload_len_4;

  VexRiscv core_cpu (
    .iBus_cmd_valid                (core_cpu_iBus_cmd_valid                            ), //o
    .iBus_cmd_ready                (axi4ReadOnlyDecoder_1_io_input_ar_ready            ), //i
    .iBus_cmd_payload_pc           (core_cpu_iBus_cmd_payload_pc[31:0]                 ), //o
    .iBus_rsp_valid                (axi4ReadOnlyDecoder_1_io_input_r_valid             ), //i
    .iBus_rsp_payload_error        (core_cpu_iBus_rsp_payload_error                    ), //i
    .iBus_rsp_payload_inst         (axi4ReadOnlyDecoder_1_io_input_r_payload_data[31:0]), //i
    .timerInterrupt                (1'b0                                               ), //i
    .externalInterrupt             (1'b0                                               ), //i
    .softwareInterrupt             (1'b0                                               ), //i
    .debug_bus_cmd_valid           (systemDebugger_1_io_mem_cmd_valid                  ), //i
    .debug_bus_cmd_ready           (core_cpu_debug_bus_cmd_ready                       ), //o
    .debug_bus_cmd_payload_wr      (systemDebugger_1_io_mem_cmd_payload_wr             ), //i
    .debug_bus_cmd_payload_address (core_cpu_debug_bus_cmd_payload_address[7:0]        ), //i
    .debug_bus_cmd_payload_data    (systemDebugger_1_io_mem_cmd_payload_data[31:0]     ), //i
    .debug_bus_rsp_data            (core_cpu_debug_bus_rsp_data[31:0]                  ), //o
    .debug_resetOut                (core_cpu_debug_resetOut                            ), //o
    .dBus_cmd_valid                (core_cpu_dBus_cmd_valid                            ), //o
    .dBus_cmd_ready                (core_cpu_dBus_cmd_ready                            ), //i
    .dBus_cmd_payload_wr           (core_cpu_dBus_cmd_payload_wr                       ), //o
    .dBus_cmd_payload_mask         (core_cpu_dBus_cmd_payload_mask[3:0]                ), //o
    .dBus_cmd_payload_address      (core_cpu_dBus_cmd_payload_address[31:0]            ), //o
    .dBus_cmd_payload_data         (core_cpu_dBus_cmd_payload_data[31:0]               ), //o
    .dBus_cmd_payload_size         (core_cpu_dBus_cmd_payload_size[1:0]                ), //o
    .dBus_rsp_ready                (axi4SharedDecoder_1_io_input_r_valid               ), //i
    .dBus_rsp_error                (core_cpu_dBus_rsp_error                            ), //i
    .dBus_rsp_data                 (axi4SharedDecoder_1_io_input_r_payload_data[31:0]  ), //i
    .clk                           (clk                                                ), //i
    .reset_n                       (reset_n                                            )  //i
  );
  JtagBridge jtagBridge_1 (
    .io_jtag_tms                    (jtag_tms                                         ), //i
    .io_jtag_tdi                    (jtag_tdi                                         ), //i
    .io_jtag_tdo                    (jtagBridge_1_io_jtag_tdo                         ), //o
    .io_jtag_tck                    (jtag_tck                                         ), //i
    .io_remote_cmd_valid            (jtagBridge_1_io_remote_cmd_valid                 ), //o
    .io_remote_cmd_ready            (systemDebugger_1_io_remote_cmd_ready             ), //i
    .io_remote_cmd_payload_last     (jtagBridge_1_io_remote_cmd_payload_last          ), //o
    .io_remote_cmd_payload_fragment (jtagBridge_1_io_remote_cmd_payload_fragment      ), //o
    .io_remote_rsp_valid            (systemDebugger_1_io_remote_rsp_valid             ), //i
    .io_remote_rsp_ready            (jtagBridge_1_io_remote_rsp_ready                 ), //o
    .io_remote_rsp_payload_error    (systemDebugger_1_io_remote_rsp_payload_error     ), //i
    .io_remote_rsp_payload_data     (systemDebugger_1_io_remote_rsp_payload_data[31:0]), //i
    .clk                            (clk                                              ), //i
    .reset_n                        (reset_n                                          )  //i
  );
  SystemDebugger systemDebugger_1 (
    .io_remote_cmd_valid            (jtagBridge_1_io_remote_cmd_valid                 ), //i
    .io_remote_cmd_ready            (systemDebugger_1_io_remote_cmd_ready             ), //o
    .io_remote_cmd_payload_last     (jtagBridge_1_io_remote_cmd_payload_last          ), //i
    .io_remote_cmd_payload_fragment (jtagBridge_1_io_remote_cmd_payload_fragment      ), //i
    .io_remote_rsp_valid            (systemDebugger_1_io_remote_rsp_valid             ), //o
    .io_remote_rsp_ready            (jtagBridge_1_io_remote_rsp_ready                 ), //i
    .io_remote_rsp_payload_error    (systemDebugger_1_io_remote_rsp_payload_error     ), //o
    .io_remote_rsp_payload_data     (systemDebugger_1_io_remote_rsp_payload_data[31:0]), //o
    .io_mem_cmd_valid               (systemDebugger_1_io_mem_cmd_valid                ), //o
    .io_mem_cmd_ready               (core_cpu_debug_bus_cmd_ready                     ), //i
    .io_mem_cmd_payload_address     (systemDebugger_1_io_mem_cmd_payload_address[31:0]), //o
    .io_mem_cmd_payload_data        (systemDebugger_1_io_mem_cmd_payload_data[31:0]   ), //o
    .io_mem_cmd_payload_wr          (systemDebugger_1_io_mem_cmd_payload_wr           ), //o
    .io_mem_cmd_payload_size        (systemDebugger_1_io_mem_cmd_payload_size[1:0]    ), //o
    .io_mem_rsp_valid               (core_core_cpu_debug_bus_cmd_fire_regNext         ), //i
    .io_mem_rsp_payload             (core_cpu_debug_bus_rsp_data[31:0]                ), //i
    .clk                            (clk                                              ), //i
    .reset_n                        (reset_n                                          )  //i
  );
  Axi4SharedSram1PBlock core_srams_0 (
    .io_axi_arw_valid          (core_srams_0_io_axi_arbiter_io_output_arw_valid              ), //i
    .io_axi_arw_ready          (core_srams_0_io_axi_arw_ready                                ), //o
    .io_axi_arw_payload_addr   (core_srams_0_io_axi_arbiter_io_output_arw_payload_addr[31:0] ), //i
    .io_axi_arw_payload_id     (core_srams_0_io_axi_arbiter_io_output_arw_payload_id[3:0]    ), //i
    .io_axi_arw_payload_region (core_srams_0_io_axi_arbiter_io_output_arw_payload_region[3:0]), //i
    .io_axi_arw_payload_len    (core_srams_0_io_axi_arbiter_io_output_arw_payload_len[7:0]   ), //i
    .io_axi_arw_payload_size   (core_srams_0_io_axi_arbiter_io_output_arw_payload_size[2:0]  ), //i
    .io_axi_arw_payload_burst  (core_srams_0_io_axi_arbiter_io_output_arw_payload_burst[1:0] ), //i
    .io_axi_arw_payload_lock   (core_srams_0_io_axi_arbiter_io_output_arw_payload_lock       ), //i
    .io_axi_arw_payload_cache  (core_srams_0_io_axi_arbiter_io_output_arw_payload_cache[3:0] ), //i
    .io_axi_arw_payload_qos    (core_srams_0_io_axi_arbiter_io_output_arw_payload_qos[3:0]   ), //i
    .io_axi_arw_payload_prot   (core_srams_0_io_axi_arbiter_io_output_arw_payload_prot[2:0]  ), //i
    .io_axi_arw_payload_write  (core_srams_0_io_axi_arbiter_io_output_arw_payload_write      ), //i
    .io_axi_w_valid            (core_srams_0_io_axi_arbiter_io_output_w_valid                ), //i
    .io_axi_w_ready            (core_srams_0_io_axi_w_ready                                  ), //o
    .io_axi_w_payload_data     (core_srams_0_io_axi_arbiter_io_output_w_payload_data[31:0]   ), //i
    .io_axi_w_payload_strb     (core_srams_0_io_axi_arbiter_io_output_w_payload_strb[3:0]    ), //i
    .io_axi_w_payload_last     (core_srams_0_io_axi_arbiter_io_output_w_payload_last         ), //i
    .io_axi_b_valid            (core_srams_0_io_axi_b_valid                                  ), //o
    .io_axi_b_ready            (core_srams_0_io_axi_arbiter_io_output_b_ready                ), //i
    .io_axi_b_payload_id       (core_srams_0_io_axi_b_payload_id[3:0]                        ), //o
    .io_axi_b_payload_resp     (core_srams_0_io_axi_b_payload_resp[1:0]                      ), //o
    .io_axi_r_valid            (core_srams_0_io_axi_r_valid                                  ), //o
    .io_axi_r_ready            (core_srams_0_io_axi_arbiter_io_output_r_ready                ), //i
    .io_axi_r_payload_data     (core_srams_0_io_axi_r_payload_data[31:0]                     ), //o
    .io_axi_r_payload_id       (core_srams_0_io_axi_r_payload_id[3:0]                        ), //o
    .io_axi_r_payload_resp     (core_srams_0_io_axi_r_payload_resp[1:0]                      ), //o
    .io_axi_r_payload_last     (core_srams_0_io_axi_r_payload_last                           ), //o
    .io_powerEnable            (core_srams_0_io_powerEnable                                  ), //i
    .io_sram_A_CLK             (core_srams_0_io_sram_A_CLK                                   ), //o
    .io_sram_A_MEN             (core_srams_0_io_sram_A_MEN                                   ), //o
    .io_sram_A_WEN             (core_srams_0_io_sram_A_WEN                                   ), //o
    .io_sram_A_REN             (core_srams_0_io_sram_A_REN                                   ), //o
    .io_sram_A_ADDR            (core_srams_0_io_sram_A_ADDR[8:0]                             ), //o
    .io_sram_A_DIN             (core_srams_0_io_sram_A_DIN[31:0]                             ), //o
    .io_sram_A_DLY             (core_srams_0_io_sram_A_DLY                                   ), //o
    .io_sram_A_DOUT            (sram_0_A_DOUT[31:0]                                          ), //i
    .io_sram_A_BM              (core_srams_0_io_sram_A_BM[31:0]                              ), //o
    .io_sram_A_BIST_CLK        (core_srams_0_io_sram_A_BIST_CLK                              ), //o
    .io_sram_A_BIST_EN         (core_srams_0_io_sram_A_BIST_EN                               ), //o
    .io_sram_A_BIST_MEN        (core_srams_0_io_sram_A_BIST_MEN                              ), //o
    .io_sram_A_BIST_WEN        (core_srams_0_io_sram_A_BIST_WEN                              ), //o
    .io_sram_A_BIST_REN        (core_srams_0_io_sram_A_BIST_REN                              ), //o
    .io_sram_A_BIST_ADDR       (core_srams_0_io_sram_A_BIST_ADDR[8:0]                        ), //o
    .io_sram_A_BIST_DIN        (core_srams_0_io_sram_A_BIST_DIN[31:0]                        ), //o
    .io_sram_A_BIST_BM         (core_srams_0_io_sram_A_BIST_BM[31:0]                         ), //o
    .clk                       (clk                                                          ), //i
    .reset_n                   (reset_n                                                      )  //i
  );
  Axi4SharedSram1PBlock core_srams_1 (
    .io_axi_arw_valid          (core_srams_1_io_axi_arbiter_io_output_arw_valid              ), //i
    .io_axi_arw_ready          (core_srams_1_io_axi_arw_ready                                ), //o
    .io_axi_arw_payload_addr   (core_srams_1_io_axi_arbiter_io_output_arw_payload_addr[31:0] ), //i
    .io_axi_arw_payload_id     (core_srams_1_io_axi_arbiter_io_output_arw_payload_id[3:0]    ), //i
    .io_axi_arw_payload_region (core_srams_1_io_axi_arbiter_io_output_arw_payload_region[3:0]), //i
    .io_axi_arw_payload_len    (core_srams_1_io_axi_arbiter_io_output_arw_payload_len[7:0]   ), //i
    .io_axi_arw_payload_size   (core_srams_1_io_axi_arbiter_io_output_arw_payload_size[2:0]  ), //i
    .io_axi_arw_payload_burst  (core_srams_1_io_axi_arbiter_io_output_arw_payload_burst[1:0] ), //i
    .io_axi_arw_payload_lock   (core_srams_1_io_axi_arbiter_io_output_arw_payload_lock       ), //i
    .io_axi_arw_payload_cache  (core_srams_1_io_axi_arbiter_io_output_arw_payload_cache[3:0] ), //i
    .io_axi_arw_payload_qos    (core_srams_1_io_axi_arbiter_io_output_arw_payload_qos[3:0]   ), //i
    .io_axi_arw_payload_prot   (core_srams_1_io_axi_arbiter_io_output_arw_payload_prot[2:0]  ), //i
    .io_axi_arw_payload_write  (core_srams_1_io_axi_arbiter_io_output_arw_payload_write      ), //i
    .io_axi_w_valid            (core_srams_1_io_axi_arbiter_io_output_w_valid                ), //i
    .io_axi_w_ready            (core_srams_1_io_axi_w_ready                                  ), //o
    .io_axi_w_payload_data     (core_srams_1_io_axi_arbiter_io_output_w_payload_data[31:0]   ), //i
    .io_axi_w_payload_strb     (core_srams_1_io_axi_arbiter_io_output_w_payload_strb[3:0]    ), //i
    .io_axi_w_payload_last     (core_srams_1_io_axi_arbiter_io_output_w_payload_last         ), //i
    .io_axi_b_valid            (core_srams_1_io_axi_b_valid                                  ), //o
    .io_axi_b_ready            (core_srams_1_io_axi_arbiter_io_output_b_ready                ), //i
    .io_axi_b_payload_id       (core_srams_1_io_axi_b_payload_id[3:0]                        ), //o
    .io_axi_b_payload_resp     (core_srams_1_io_axi_b_payload_resp[1:0]                      ), //o
    .io_axi_r_valid            (core_srams_1_io_axi_r_valid                                  ), //o
    .io_axi_r_ready            (core_srams_1_io_axi_arbiter_io_output_r_ready                ), //i
    .io_axi_r_payload_data     (core_srams_1_io_axi_r_payload_data[31:0]                     ), //o
    .io_axi_r_payload_id       (core_srams_1_io_axi_r_payload_id[3:0]                        ), //o
    .io_axi_r_payload_resp     (core_srams_1_io_axi_r_payload_resp[1:0]                      ), //o
    .io_axi_r_payload_last     (core_srams_1_io_axi_r_payload_last                           ), //o
    .io_powerEnable            (core_srams_1_io_powerEnable                                  ), //i
    .io_sram_A_CLK             (core_srams_1_io_sram_A_CLK                                   ), //o
    .io_sram_A_MEN             (core_srams_1_io_sram_A_MEN                                   ), //o
    .io_sram_A_WEN             (core_srams_1_io_sram_A_WEN                                   ), //o
    .io_sram_A_REN             (core_srams_1_io_sram_A_REN                                   ), //o
    .io_sram_A_ADDR            (core_srams_1_io_sram_A_ADDR[8:0]                             ), //o
    .io_sram_A_DIN             (core_srams_1_io_sram_A_DIN[31:0]                             ), //o
    .io_sram_A_DLY             (core_srams_1_io_sram_A_DLY                                   ), //o
    .io_sram_A_DOUT            (sram_1_A_DOUT[31:0]                                          ), //i
    .io_sram_A_BM              (core_srams_1_io_sram_A_BM[31:0]                              ), //o
    .io_sram_A_BIST_CLK        (core_srams_1_io_sram_A_BIST_CLK                              ), //o
    .io_sram_A_BIST_EN         (core_srams_1_io_sram_A_BIST_EN                               ), //o
    .io_sram_A_BIST_MEN        (core_srams_1_io_sram_A_BIST_MEN                              ), //o
    .io_sram_A_BIST_WEN        (core_srams_1_io_sram_A_BIST_WEN                              ), //o
    .io_sram_A_BIST_REN        (core_srams_1_io_sram_A_BIST_REN                              ), //o
    .io_sram_A_BIST_ADDR       (core_srams_1_io_sram_A_BIST_ADDR[8:0]                        ), //o
    .io_sram_A_BIST_DIN        (core_srams_1_io_sram_A_BIST_DIN[31:0]                        ), //o
    .io_sram_A_BIST_BM         (core_srams_1_io_sram_A_BIST_BM[31:0]                         ), //o
    .clk                       (clk                                                          ), //i
    .reset_n                   (reset_n                                                      )  //i
  );
  Axi4SharedSram1PBlock core_srams_2 (
    .io_axi_arw_valid          (core_srams_2_io_axi_arbiter_io_output_arw_valid              ), //i
    .io_axi_arw_ready          (core_srams_2_io_axi_arw_ready                                ), //o
    .io_axi_arw_payload_addr   (core_srams_2_io_axi_arbiter_io_output_arw_payload_addr[31:0] ), //i
    .io_axi_arw_payload_id     (core_srams_2_io_axi_arbiter_io_output_arw_payload_id[3:0]    ), //i
    .io_axi_arw_payload_region (core_srams_2_io_axi_arbiter_io_output_arw_payload_region[3:0]), //i
    .io_axi_arw_payload_len    (core_srams_2_io_axi_arbiter_io_output_arw_payload_len[7:0]   ), //i
    .io_axi_arw_payload_size   (core_srams_2_io_axi_arbiter_io_output_arw_payload_size[2:0]  ), //i
    .io_axi_arw_payload_burst  (core_srams_2_io_axi_arbiter_io_output_arw_payload_burst[1:0] ), //i
    .io_axi_arw_payload_lock   (core_srams_2_io_axi_arbiter_io_output_arw_payload_lock       ), //i
    .io_axi_arw_payload_cache  (core_srams_2_io_axi_arbiter_io_output_arw_payload_cache[3:0] ), //i
    .io_axi_arw_payload_qos    (core_srams_2_io_axi_arbiter_io_output_arw_payload_qos[3:0]   ), //i
    .io_axi_arw_payload_prot   (core_srams_2_io_axi_arbiter_io_output_arw_payload_prot[2:0]  ), //i
    .io_axi_arw_payload_write  (core_srams_2_io_axi_arbiter_io_output_arw_payload_write      ), //i
    .io_axi_w_valid            (core_srams_2_io_axi_arbiter_io_output_w_valid                ), //i
    .io_axi_w_ready            (core_srams_2_io_axi_w_ready                                  ), //o
    .io_axi_w_payload_data     (core_srams_2_io_axi_arbiter_io_output_w_payload_data[31:0]   ), //i
    .io_axi_w_payload_strb     (core_srams_2_io_axi_arbiter_io_output_w_payload_strb[3:0]    ), //i
    .io_axi_w_payload_last     (core_srams_2_io_axi_arbiter_io_output_w_payload_last         ), //i
    .io_axi_b_valid            (core_srams_2_io_axi_b_valid                                  ), //o
    .io_axi_b_ready            (core_srams_2_io_axi_arbiter_io_output_b_ready                ), //i
    .io_axi_b_payload_id       (core_srams_2_io_axi_b_payload_id[3:0]                        ), //o
    .io_axi_b_payload_resp     (core_srams_2_io_axi_b_payload_resp[1:0]                      ), //o
    .io_axi_r_valid            (core_srams_2_io_axi_r_valid                                  ), //o
    .io_axi_r_ready            (core_srams_2_io_axi_arbiter_io_output_r_ready                ), //i
    .io_axi_r_payload_data     (core_srams_2_io_axi_r_payload_data[31:0]                     ), //o
    .io_axi_r_payload_id       (core_srams_2_io_axi_r_payload_id[3:0]                        ), //o
    .io_axi_r_payload_resp     (core_srams_2_io_axi_r_payload_resp[1:0]                      ), //o
    .io_axi_r_payload_last     (core_srams_2_io_axi_r_payload_last                           ), //o
    .io_powerEnable            (core_srams_2_io_powerEnable                                  ), //i
    .io_sram_A_CLK             (core_srams_2_io_sram_A_CLK                                   ), //o
    .io_sram_A_MEN             (core_srams_2_io_sram_A_MEN                                   ), //o
    .io_sram_A_WEN             (core_srams_2_io_sram_A_WEN                                   ), //o
    .io_sram_A_REN             (core_srams_2_io_sram_A_REN                                   ), //o
    .io_sram_A_ADDR            (core_srams_2_io_sram_A_ADDR[8:0]                             ), //o
    .io_sram_A_DIN             (core_srams_2_io_sram_A_DIN[31:0]                             ), //o
    .io_sram_A_DLY             (core_srams_2_io_sram_A_DLY                                   ), //o
    .io_sram_A_DOUT            (sram_2_A_DOUT[31:0]                                          ), //i
    .io_sram_A_BM              (core_srams_2_io_sram_A_BM[31:0]                              ), //o
    .io_sram_A_BIST_CLK        (core_srams_2_io_sram_A_BIST_CLK                              ), //o
    .io_sram_A_BIST_EN         (core_srams_2_io_sram_A_BIST_EN                               ), //o
    .io_sram_A_BIST_MEN        (core_srams_2_io_sram_A_BIST_MEN                              ), //o
    .io_sram_A_BIST_WEN        (core_srams_2_io_sram_A_BIST_WEN                              ), //o
    .io_sram_A_BIST_REN        (core_srams_2_io_sram_A_BIST_REN                              ), //o
    .io_sram_A_BIST_ADDR       (core_srams_2_io_sram_A_BIST_ADDR[8:0]                        ), //o
    .io_sram_A_BIST_DIN        (core_srams_2_io_sram_A_BIST_DIN[31:0]                        ), //o
    .io_sram_A_BIST_BM         (core_srams_2_io_sram_A_BIST_BM[31:0]                         ), //o
    .clk                       (clk                                                          ), //i
    .reset_n                   (reset_n                                                      )  //i
  );
  Axi4SharedSram1PBlock core_srams_3 (
    .io_axi_arw_valid          (core_srams_3_io_axi_arbiter_io_output_arw_valid              ), //i
    .io_axi_arw_ready          (core_srams_3_io_axi_arw_ready                                ), //o
    .io_axi_arw_payload_addr   (core_srams_3_io_axi_arbiter_io_output_arw_payload_addr[31:0] ), //i
    .io_axi_arw_payload_id     (core_srams_3_io_axi_arbiter_io_output_arw_payload_id[3:0]    ), //i
    .io_axi_arw_payload_region (core_srams_3_io_axi_arbiter_io_output_arw_payload_region[3:0]), //i
    .io_axi_arw_payload_len    (core_srams_3_io_axi_arbiter_io_output_arw_payload_len[7:0]   ), //i
    .io_axi_arw_payload_size   (core_srams_3_io_axi_arbiter_io_output_arw_payload_size[2:0]  ), //i
    .io_axi_arw_payload_burst  (core_srams_3_io_axi_arbiter_io_output_arw_payload_burst[1:0] ), //i
    .io_axi_arw_payload_lock   (core_srams_3_io_axi_arbiter_io_output_arw_payload_lock       ), //i
    .io_axi_arw_payload_cache  (core_srams_3_io_axi_arbiter_io_output_arw_payload_cache[3:0] ), //i
    .io_axi_arw_payload_qos    (core_srams_3_io_axi_arbiter_io_output_arw_payload_qos[3:0]   ), //i
    .io_axi_arw_payload_prot   (core_srams_3_io_axi_arbiter_io_output_arw_payload_prot[2:0]  ), //i
    .io_axi_arw_payload_write  (core_srams_3_io_axi_arbiter_io_output_arw_payload_write      ), //i
    .io_axi_w_valid            (core_srams_3_io_axi_arbiter_io_output_w_valid                ), //i
    .io_axi_w_ready            (core_srams_3_io_axi_w_ready                                  ), //o
    .io_axi_w_payload_data     (core_srams_3_io_axi_arbiter_io_output_w_payload_data[31:0]   ), //i
    .io_axi_w_payload_strb     (core_srams_3_io_axi_arbiter_io_output_w_payload_strb[3:0]    ), //i
    .io_axi_w_payload_last     (core_srams_3_io_axi_arbiter_io_output_w_payload_last         ), //i
    .io_axi_b_valid            (core_srams_3_io_axi_b_valid                                  ), //o
    .io_axi_b_ready            (core_srams_3_io_axi_arbiter_io_output_b_ready                ), //i
    .io_axi_b_payload_id       (core_srams_3_io_axi_b_payload_id[3:0]                        ), //o
    .io_axi_b_payload_resp     (core_srams_3_io_axi_b_payload_resp[1:0]                      ), //o
    .io_axi_r_valid            (core_srams_3_io_axi_r_valid                                  ), //o
    .io_axi_r_ready            (core_srams_3_io_axi_arbiter_io_output_r_ready                ), //i
    .io_axi_r_payload_data     (core_srams_3_io_axi_r_payload_data[31:0]                     ), //o
    .io_axi_r_payload_id       (core_srams_3_io_axi_r_payload_id[3:0]                        ), //o
    .io_axi_r_payload_resp     (core_srams_3_io_axi_r_payload_resp[1:0]                      ), //o
    .io_axi_r_payload_last     (core_srams_3_io_axi_r_payload_last                           ), //o
    .io_powerEnable            (core_srams_3_io_powerEnable                                  ), //i
    .io_sram_A_CLK             (core_srams_3_io_sram_A_CLK                                   ), //o
    .io_sram_A_MEN             (core_srams_3_io_sram_A_MEN                                   ), //o
    .io_sram_A_WEN             (core_srams_3_io_sram_A_WEN                                   ), //o
    .io_sram_A_REN             (core_srams_3_io_sram_A_REN                                   ), //o
    .io_sram_A_ADDR            (core_srams_3_io_sram_A_ADDR[8:0]                             ), //o
    .io_sram_A_DIN             (core_srams_3_io_sram_A_DIN[31:0]                             ), //o
    .io_sram_A_DLY             (core_srams_3_io_sram_A_DLY                                   ), //o
    .io_sram_A_DOUT            (sram_3_A_DOUT[31:0]                                          ), //i
    .io_sram_A_BM              (core_srams_3_io_sram_A_BM[31:0]                              ), //o
    .io_sram_A_BIST_CLK        (core_srams_3_io_sram_A_BIST_CLK                              ), //o
    .io_sram_A_BIST_EN         (core_srams_3_io_sram_A_BIST_EN                               ), //o
    .io_sram_A_BIST_MEN        (core_srams_3_io_sram_A_BIST_MEN                              ), //o
    .io_sram_A_BIST_WEN        (core_srams_3_io_sram_A_BIST_WEN                              ), //o
    .io_sram_A_BIST_REN        (core_srams_3_io_sram_A_BIST_REN                              ), //o
    .io_sram_A_BIST_ADDR       (core_srams_3_io_sram_A_BIST_ADDR[8:0]                        ), //o
    .io_sram_A_BIST_DIN        (core_srams_3_io_sram_A_BIST_DIN[31:0]                        ), //o
    .io_sram_A_BIST_BM         (core_srams_3_io_sram_A_BIST_BM[31:0]                         ), //o
    .clk                       (clk                                                          ), //i
    .reset_n                   (reset_n                                                      )  //i
  );
  Axi4SharedToApb3Bridge core_apbBridge (
    .io_axi_arw_valid         (core_apbBridge_io_axi_arbiter_io_output_arw_valid             ), //i
    .io_axi_arw_ready         (core_apbBridge_io_axi_arw_ready                               ), //o
    .io_axi_arw_payload_addr  (core_apbBridge_io_axi_arbiter_io_output_arw_payload_addr[19:0]), //i
    .io_axi_arw_payload_id    (core_apbBridge_io_axi_arbiter_io_output_arw_payload_id[3:0]   ), //i
    .io_axi_arw_payload_len   (core_apbBridge_io_axi_arbiter_io_output_arw_payload_len[7:0]  ), //i
    .io_axi_arw_payload_size  (core_apbBridge_io_axi_arbiter_io_output_arw_payload_size[2:0] ), //i
    .io_axi_arw_payload_burst (core_apbBridge_io_axi_arbiter_io_output_arw_payload_burst[1:0]), //i
    .io_axi_arw_payload_write (core_apbBridge_io_axi_arbiter_io_output_arw_payload_write     ), //i
    .io_axi_w_valid           (core_apbBridge_io_axi_arbiter_io_output_w_valid               ), //i
    .io_axi_w_ready           (core_apbBridge_io_axi_w_ready                                 ), //o
    .io_axi_w_payload_data    (core_apbBridge_io_axi_arbiter_io_output_w_payload_data[31:0]  ), //i
    .io_axi_w_payload_strb    (core_apbBridge_io_axi_arbiter_io_output_w_payload_strb[3:0]   ), //i
    .io_axi_w_payload_last    (core_apbBridge_io_axi_arbiter_io_output_w_payload_last        ), //i
    .io_axi_b_valid           (core_apbBridge_io_axi_b_valid                                 ), //o
    .io_axi_b_ready           (core_apbBridge_io_axi_arbiter_io_output_b_ready               ), //i
    .io_axi_b_payload_id      (core_apbBridge_io_axi_b_payload_id[3:0]                       ), //o
    .io_axi_b_payload_resp    (core_apbBridge_io_axi_b_payload_resp[1:0]                     ), //o
    .io_axi_r_valid           (core_apbBridge_io_axi_r_valid                                 ), //o
    .io_axi_r_ready           (core_apbBridge_io_axi_arbiter_io_output_r_ready               ), //i
    .io_axi_r_payload_data    (core_apbBridge_io_axi_r_payload_data[31:0]                    ), //o
    .io_axi_r_payload_id      (core_apbBridge_io_axi_r_payload_id[3:0]                       ), //o
    .io_axi_r_payload_resp    (core_apbBridge_io_axi_r_payload_resp[1:0]                     ), //o
    .io_axi_r_payload_last    (core_apbBridge_io_axi_r_payload_last                          ), //o
    .io_apb_PADDR             (core_apbBridge_io_apb_PADDR[19:0]                             ), //o
    .io_apb_PSEL              (core_apbBridge_io_apb_PSEL                                    ), //o
    .io_apb_PENABLE           (core_apbBridge_io_apb_PENABLE                                 ), //o
    .io_apb_PREADY            (io_apb_decoder_io_input_PREADY                                ), //i
    .io_apb_PWRITE            (core_apbBridge_io_apb_PWRITE                                  ), //o
    .io_apb_PWDATA            (core_apbBridge_io_apb_PWDATA[31:0]                            ), //o
    .io_apb_PRDATA            (io_apb_decoder_io_input_PRDATA[31:0]                          ), //i
    .io_apb_PSLVERROR         (io_apb_decoder_io_input_PSLVERROR                             ), //i
    .clk                      (clk                                                           ), //i
    .reset_n                  (reset_n                                                       )  //i
  );
  Apb3Gpio2 core_gpio (
    .io_gpio_read        (gpio_read[3:0]                        ), //i
    .io_gpio_write       (core_gpio_io_gpio_write[3:0]          ), //o
    .io_gpio_writeEnable (core_gpio_io_gpio_writeEnable[3:0]    ), //o
    .io_bus_PADDR        (core_gpio_io_bus_PADDR[11:0]          ), //i
    .io_bus_PSEL         (apb3Router_1_io_outputs_0_PSEL        ), //i
    .io_bus_PENABLE      (apb3Router_1_io_outputs_0_PENABLE     ), //i
    .io_bus_PREADY       (core_gpio_io_bus_PREADY               ), //o
    .io_bus_PWRITE       (apb3Router_1_io_outputs_0_PWRITE      ), //i
    .io_bus_PWDATA       (apb3Router_1_io_outputs_0_PWDATA[31:0]), //i
    .io_bus_PRDATA       (core_gpio_io_bus_PRDATA[31:0]         ), //o
    .io_bus_PSLVERROR    (core_gpio_io_bus_PSLVERROR            ), //o
    .io_interrupt        (core_gpio_io_interrupt[3:0]           ), //o
    .clk                 (clk                                   ), //i
    .reset_n             (reset_n                               )  //i
  );
  Apb3UartCtrl core_uart (
    .io_apb_PADDR   (core_uart_io_apb_PADDR[4:0]           ), //i
    .io_apb_PSEL    (apb3Router_1_io_outputs_1_PSEL        ), //i
    .io_apb_PENABLE (apb3Router_1_io_outputs_1_PENABLE     ), //i
    .io_apb_PREADY  (core_uart_io_apb_PREADY               ), //o
    .io_apb_PWRITE  (apb3Router_1_io_outputs_1_PWRITE      ), //i
    .io_apb_PWDATA  (apb3Router_1_io_outputs_1_PWDATA[31:0]), //i
    .io_apb_PRDATA  (core_uart_io_apb_PRDATA[31:0]         ), //o
    .io_uart_txd    (core_uart_io_uart_txd                 ), //o
    .io_uart_rxd    (uart_rxd                              ), //i
    .io_interrupt   (core_uart_io_interrupt                ), //o
    .clk            (clk                                   ), //i
    .reset_n        (reset_n                               )  //i
  );
  Apb3Decoder io_apb_decoder (
    .io_input_PADDR      (core_apbBridge_io_apb_PADDR[19:0]    ), //i
    .io_input_PSEL       (core_apbBridge_io_apb_PSEL           ), //i
    .io_input_PENABLE    (core_apbBridge_io_apb_PENABLE        ), //i
    .io_input_PREADY     (io_apb_decoder_io_input_PREADY       ), //o
    .io_input_PWRITE     (core_apbBridge_io_apb_PWRITE         ), //i
    .io_input_PWDATA     (core_apbBridge_io_apb_PWDATA[31:0]   ), //i
    .io_input_PRDATA     (io_apb_decoder_io_input_PRDATA[31:0] ), //o
    .io_input_PSLVERROR  (io_apb_decoder_io_input_PSLVERROR    ), //o
    .io_output_PADDR     (io_apb_decoder_io_output_PADDR[19:0] ), //o
    .io_output_PSEL      (io_apb_decoder_io_output_PSEL[1:0]   ), //o
    .io_output_PENABLE   (io_apb_decoder_io_output_PENABLE     ), //o
    .io_output_PREADY    (apb3Router_1_io_input_PREADY         ), //i
    .io_output_PWRITE    (io_apb_decoder_io_output_PWRITE      ), //o
    .io_output_PWDATA    (io_apb_decoder_io_output_PWDATA[31:0]), //o
    .io_output_PRDATA    (apb3Router_1_io_input_PRDATA[31:0]   ), //i
    .io_output_PSLVERROR (apb3Router_1_io_input_PSLVERROR      )  //i
  );
  Apb3Router apb3Router_1 (
    .io_input_PADDR         (io_apb_decoder_io_output_PADDR[19:0]  ), //i
    .io_input_PSEL          (io_apb_decoder_io_output_PSEL[1:0]    ), //i
    .io_input_PENABLE       (io_apb_decoder_io_output_PENABLE      ), //i
    .io_input_PREADY        (apb3Router_1_io_input_PREADY          ), //o
    .io_input_PWRITE        (io_apb_decoder_io_output_PWRITE       ), //i
    .io_input_PWDATA        (io_apb_decoder_io_output_PWDATA[31:0] ), //i
    .io_input_PRDATA        (apb3Router_1_io_input_PRDATA[31:0]    ), //o
    .io_input_PSLVERROR     (apb3Router_1_io_input_PSLVERROR       ), //o
    .io_outputs_0_PADDR     (apb3Router_1_io_outputs_0_PADDR[19:0] ), //o
    .io_outputs_0_PSEL      (apb3Router_1_io_outputs_0_PSEL        ), //o
    .io_outputs_0_PENABLE   (apb3Router_1_io_outputs_0_PENABLE     ), //o
    .io_outputs_0_PREADY    (core_gpio_io_bus_PREADY               ), //i
    .io_outputs_0_PWRITE    (apb3Router_1_io_outputs_0_PWRITE      ), //o
    .io_outputs_0_PWDATA    (apb3Router_1_io_outputs_0_PWDATA[31:0]), //o
    .io_outputs_0_PRDATA    (core_gpio_io_bus_PRDATA[31:0]         ), //i
    .io_outputs_0_PSLVERROR (core_gpio_io_bus_PSLVERROR            ), //i
    .io_outputs_1_PADDR     (apb3Router_1_io_outputs_1_PADDR[19:0] ), //o
    .io_outputs_1_PSEL      (apb3Router_1_io_outputs_1_PSEL        ), //o
    .io_outputs_1_PENABLE   (apb3Router_1_io_outputs_1_PENABLE     ), //o
    .io_outputs_1_PREADY    (core_uart_io_apb_PREADY               ), //i
    .io_outputs_1_PWRITE    (apb3Router_1_io_outputs_1_PWRITE      ), //o
    .io_outputs_1_PWDATA    (apb3Router_1_io_outputs_1_PWDATA[31:0]), //o
    .io_outputs_1_PRDATA    (core_uart_io_apb_PRDATA[31:0]         ), //i
    .io_outputs_1_PSLVERROR (1'b0                                  ), //i
    .clk                    (clk                                   ), //i
    .reset_n                (reset_n                               )  //i
  );
  Axi4ReadOnlyDecoder axi4ReadOnlyDecoder_1 (
    .io_input_ar_valid             (core_cpu_iBus_cmd_valid                                         ), //i
    .io_input_ar_ready             (axi4ReadOnlyDecoder_1_io_input_ar_ready                         ), //o
    .io_input_ar_payload_addr      (axi4ReadOnlyDecoder_1_io_input_ar_payload_addr[31:0]            ), //i
    .io_input_ar_payload_cache     (4'b1111                                                         ), //i
    .io_input_ar_payload_prot      (3'b110                                                          ), //i
    .io_input_r_valid              (axi4ReadOnlyDecoder_1_io_input_r_valid                          ), //o
    .io_input_r_ready              (1'b1                                                            ), //i
    .io_input_r_payload_data       (axi4ReadOnlyDecoder_1_io_input_r_payload_data[31:0]             ), //o
    .io_input_r_payload_resp       (axi4ReadOnlyDecoder_1_io_input_r_payload_resp[1:0]              ), //o
    .io_input_r_payload_last       (axi4ReadOnlyDecoder_1_io_input_r_payload_last                   ), //o
    .io_outputs_0_ar_valid         (axi4ReadOnlyDecoder_1_io_outputs_0_ar_valid                     ), //o
    .io_outputs_0_ar_ready         (core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire       ), //i
    .io_outputs_0_ar_payload_addr  (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_addr[31:0]        ), //o
    .io_outputs_0_ar_payload_cache (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_cache[3:0]        ), //o
    .io_outputs_0_ar_payload_prot  (axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_prot[2:0]         ), //o
    .io_outputs_0_r_valid          (core_srams_0_io_axi_arbiter_io_readInputs_0_r_valid             ), //i
    .io_outputs_0_r_ready          (axi4ReadOnlyDecoder_1_io_outputs_0_r_ready                      ), //o
    .io_outputs_0_r_payload_data   (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]), //i
    .io_outputs_0_r_payload_resp   (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0] ), //i
    .io_outputs_0_r_payload_last   (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_last      ), //i
    .io_outputs_1_ar_valid         (axi4ReadOnlyDecoder_1_io_outputs_1_ar_valid                     ), //o
    .io_outputs_1_ar_ready         (core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire       ), //i
    .io_outputs_1_ar_payload_addr  (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_addr[31:0]        ), //o
    .io_outputs_1_ar_payload_cache (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_cache[3:0]        ), //o
    .io_outputs_1_ar_payload_prot  (axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_prot[2:0]         ), //o
    .io_outputs_1_r_valid          (core_srams_1_io_axi_arbiter_io_readInputs_0_r_valid             ), //i
    .io_outputs_1_r_ready          (axi4ReadOnlyDecoder_1_io_outputs_1_r_ready                      ), //o
    .io_outputs_1_r_payload_data   (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]), //i
    .io_outputs_1_r_payload_resp   (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0] ), //i
    .io_outputs_1_r_payload_last   (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_last      ), //i
    .io_outputs_2_ar_valid         (axi4ReadOnlyDecoder_1_io_outputs_2_ar_valid                     ), //o
    .io_outputs_2_ar_ready         (core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_fire       ), //i
    .io_outputs_2_ar_payload_addr  (axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_addr[31:0]        ), //o
    .io_outputs_2_ar_payload_cache (axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_cache[3:0]        ), //o
    .io_outputs_2_ar_payload_prot  (axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_prot[2:0]         ), //o
    .io_outputs_2_r_valid          (core_srams_2_io_axi_arbiter_io_readInputs_0_r_valid             ), //i
    .io_outputs_2_r_ready          (axi4ReadOnlyDecoder_1_io_outputs_2_r_ready                      ), //o
    .io_outputs_2_r_payload_data   (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]), //i
    .io_outputs_2_r_payload_resp   (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0] ), //i
    .io_outputs_2_r_payload_last   (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_last      ), //i
    .io_outputs_3_ar_valid         (axi4ReadOnlyDecoder_1_io_outputs_3_ar_valid                     ), //o
    .io_outputs_3_ar_ready         (core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_fire       ), //i
    .io_outputs_3_ar_payload_addr  (axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_addr[31:0]        ), //o
    .io_outputs_3_ar_payload_cache (axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_cache[3:0]        ), //o
    .io_outputs_3_ar_payload_prot  (axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_prot[2:0]         ), //o
    .io_outputs_3_r_valid          (core_srams_3_io_axi_arbiter_io_readInputs_0_r_valid             ), //i
    .io_outputs_3_r_ready          (axi4ReadOnlyDecoder_1_io_outputs_3_r_ready                      ), //o
    .io_outputs_3_r_payload_data   (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]), //i
    .io_outputs_3_r_payload_resp   (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0] ), //i
    .io_outputs_3_r_payload_last   (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_last      ), //i
    .clk                           (clk                                                             ), //i
    .reset_n                       (reset_n                                                         )  //i
  );
  Axi4SharedDecoder axi4SharedDecoder_1 (
    .io_input_arw_valid                   (_zz_io_input_arw_valid_1                                            ), //i
    .io_input_arw_ready                   (axi4SharedDecoder_1_io_input_arw_ready                              ), //o
    .io_input_arw_payload_addr            (_zz_io_input_arw_payload_addr[31:0]                                 ), //i
    .io_input_arw_payload_size            (axi4SharedDecoder_1_io_input_arw_payload_size[2:0]                  ), //i
    .io_input_arw_payload_cache           (4'b1111                                                             ), //i
    .io_input_arw_payload_prot            (3'b010                                                              ), //i
    .io_input_arw_payload_write           (_zz_when_Stream_l445                                                ), //i
    .io_input_w_valid                     (_zz_io_input_w_valid_1                                              ), //i
    .io_input_w_ready                     (axi4SharedDecoder_1_io_input_w_ready                                ), //o
    .io_input_w_payload_data              (core_cpu_dBus_cmd_payload_data[31:0]                                ), //i
    .io_input_w_payload_strb              (axi4SharedDecoder_1_io_input_w_payload_strb[3:0]                    ), //i
    .io_input_w_payload_last              (1'b1                                                                ), //i
    .io_input_b_valid                     (axi4SharedDecoder_1_io_input_b_valid                                ), //o
    .io_input_b_ready                     (1'b1                                                                ), //i
    .io_input_b_payload_resp              (axi4SharedDecoder_1_io_input_b_payload_resp[1:0]                    ), //o
    .io_input_r_valid                     (axi4SharedDecoder_1_io_input_r_valid                                ), //o
    .io_input_r_ready                     (1'b1                                                                ), //i
    .io_input_r_payload_data              (axi4SharedDecoder_1_io_input_r_payload_data[31:0]                   ), //o
    .io_input_r_payload_resp              (axi4SharedDecoder_1_io_input_r_payload_resp[1:0]                    ), //o
    .io_input_r_payload_last              (axi4SharedDecoder_1_io_input_r_payload_last                         ), //o
    .io_sharedOutputs_0_arw_valid         (axi4SharedDecoder_1_io_sharedOutputs_0_arw_valid                    ), //o
    .io_sharedOutputs_0_arw_ready         (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_fire      ), //i
    .io_sharedOutputs_0_arw_payload_addr  (axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_0_arw_payload_size  (axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_0_arw_payload_cache (axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_0_arw_payload_prot  (axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_0_arw_payload_write (axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_write            ), //o
    .io_sharedOutputs_0_w_valid           (axi4SharedDecoder_1_io_sharedOutputs_0_w_valid                      ), //o
    .io_sharedOutputs_0_w_ready           (core_srams_0_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_0_w_payload_data    (axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_0_w_payload_strb    (axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_0_w_payload_last    (axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_last               ), //o
    .io_sharedOutputs_0_b_valid           (core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_0_b_ready           (axi4SharedDecoder_1_io_sharedOutputs_0_b_ready                      ), //o
    .io_sharedOutputs_0_b_payload_resp    (core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //i
    .io_sharedOutputs_0_r_valid           (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_0_r_ready           (axi4SharedDecoder_1_io_sharedOutputs_0_r_ready                      ), //o
    .io_sharedOutputs_0_r_payload_data    (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_0_r_payload_resp    (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //i
    .io_sharedOutputs_0_r_payload_last    (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_1_arw_valid         (axi4SharedDecoder_1_io_sharedOutputs_1_arw_valid                    ), //o
    .io_sharedOutputs_1_arw_ready         (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_fire      ), //i
    .io_sharedOutputs_1_arw_payload_addr  (axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_1_arw_payload_size  (axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_1_arw_payload_cache (axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_1_arw_payload_prot  (axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_1_arw_payload_write (axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_write            ), //o
    .io_sharedOutputs_1_w_valid           (axi4SharedDecoder_1_io_sharedOutputs_1_w_valid                      ), //o
    .io_sharedOutputs_1_w_ready           (core_srams_1_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_1_w_payload_data    (axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_1_w_payload_strb    (axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_1_w_payload_last    (axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_last               ), //o
    .io_sharedOutputs_1_b_valid           (core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_1_b_ready           (axi4SharedDecoder_1_io_sharedOutputs_1_b_ready                      ), //o
    .io_sharedOutputs_1_b_payload_resp    (core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //i
    .io_sharedOutputs_1_r_valid           (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_1_r_ready           (axi4SharedDecoder_1_io_sharedOutputs_1_r_ready                      ), //o
    .io_sharedOutputs_1_r_payload_data    (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_1_r_payload_resp    (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //i
    .io_sharedOutputs_1_r_payload_last    (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_2_arw_valid         (axi4SharedDecoder_1_io_sharedOutputs_2_arw_valid                    ), //o
    .io_sharedOutputs_2_arw_ready         (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_fire      ), //i
    .io_sharedOutputs_2_arw_payload_addr  (axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_2_arw_payload_size  (axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_2_arw_payload_cache (axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_2_arw_payload_prot  (axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_2_arw_payload_write (axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_write            ), //o
    .io_sharedOutputs_2_w_valid           (axi4SharedDecoder_1_io_sharedOutputs_2_w_valid                      ), //o
    .io_sharedOutputs_2_w_ready           (core_srams_2_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_2_w_payload_data    (axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_2_w_payload_strb    (axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_2_w_payload_last    (axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_last               ), //o
    .io_sharedOutputs_2_b_valid           (core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_2_b_ready           (axi4SharedDecoder_1_io_sharedOutputs_2_b_ready                      ), //o
    .io_sharedOutputs_2_b_payload_resp    (core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //i
    .io_sharedOutputs_2_r_valid           (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_2_r_ready           (axi4SharedDecoder_1_io_sharedOutputs_2_r_ready                      ), //o
    .io_sharedOutputs_2_r_payload_data    (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_2_r_payload_resp    (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //i
    .io_sharedOutputs_2_r_payload_last    (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_3_arw_valid         (axi4SharedDecoder_1_io_sharedOutputs_3_arw_valid                    ), //o
    .io_sharedOutputs_3_arw_ready         (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_fire      ), //i
    .io_sharedOutputs_3_arw_payload_addr  (axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_3_arw_payload_size  (axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_3_arw_payload_cache (axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_3_arw_payload_prot  (axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_3_arw_payload_write (axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_write            ), //o
    .io_sharedOutputs_3_w_valid           (axi4SharedDecoder_1_io_sharedOutputs_3_w_valid                      ), //o
    .io_sharedOutputs_3_w_ready           (core_srams_3_io_axi_arbiter_io_sharedInputs_0_w_ready               ), //i
    .io_sharedOutputs_3_w_payload_data    (axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_3_w_payload_strb    (axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_3_w_payload_last    (axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_last               ), //o
    .io_sharedOutputs_3_b_valid           (core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_valid               ), //i
    .io_sharedOutputs_3_b_ready           (axi4SharedDecoder_1_io_sharedOutputs_3_b_ready                      ), //o
    .io_sharedOutputs_3_b_payload_resp    (core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]   ), //i
    .io_sharedOutputs_3_r_valid           (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_valid               ), //i
    .io_sharedOutputs_3_r_ready           (axi4SharedDecoder_1_io_sharedOutputs_3_r_ready                      ), //o
    .io_sharedOutputs_3_r_payload_data    (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]  ), //i
    .io_sharedOutputs_3_r_payload_resp    (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]   ), //i
    .io_sharedOutputs_3_r_payload_last    (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_last        ), //i
    .io_sharedOutputs_4_arw_valid         (axi4SharedDecoder_1_io_sharedOutputs_4_arw_valid                    ), //o
    .io_sharedOutputs_4_arw_ready         (core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_fire      ), //i
    .io_sharedOutputs_4_arw_payload_addr  (axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_addr[31:0]       ), //o
    .io_sharedOutputs_4_arw_payload_size  (axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_size[2:0]        ), //o
    .io_sharedOutputs_4_arw_payload_cache (axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_cache[3:0]       ), //o
    .io_sharedOutputs_4_arw_payload_prot  (axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_prot[2:0]        ), //o
    .io_sharedOutputs_4_arw_payload_write (axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_write            ), //o
    .io_sharedOutputs_4_w_valid           (axi4SharedDecoder_1_io_sharedOutputs_4_w_valid                      ), //o
    .io_sharedOutputs_4_w_ready           (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready             ), //i
    .io_sharedOutputs_4_w_payload_data    (axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_data[31:0]         ), //o
    .io_sharedOutputs_4_w_payload_strb    (axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_strb[3:0]          ), //o
    .io_sharedOutputs_4_w_payload_last    (axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_last               ), //o
    .io_sharedOutputs_4_b_valid           (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid             ), //i
    .io_sharedOutputs_4_b_ready           (axi4SharedDecoder_1_io_sharedOutputs_4_b_ready                      ), //o
    .io_sharedOutputs_4_b_payload_resp    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0] ), //i
    .io_sharedOutputs_4_r_valid           (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid             ), //i
    .io_sharedOutputs_4_r_ready           (axi4SharedDecoder_1_io_sharedOutputs_4_r_ready                      ), //o
    .io_sharedOutputs_4_r_payload_data    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]), //i
    .io_sharedOutputs_4_r_payload_resp    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0] ), //i
    .io_sharedOutputs_4_r_payload_last    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last      ), //i
    .clk                                  (clk                                                                 ), //i
    .reset_n                              (reset_n                                                             )  //i
  );
  Axi4SharedArbiter core_srams_0_io_axi_arbiter (
    .io_readInputs_0_ar_valid             (core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid                  ), //i
    .io_readInputs_0_ar_ready             (core_srams_0_io_axi_arbiter_io_readInputs_0_ar_ready                        ), //o
    .io_readInputs_0_ar_payload_addr      (core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_addr[31:0]     ), //i
    .io_readInputs_0_ar_payload_id        (_zz_io_readInputs_0_ar_payload_id[2:0]                                      ), //i
    .io_readInputs_0_ar_payload_region    (_zz_io_readInputs_0_ar_payload_region[3:0]                                  ), //i
    .io_readInputs_0_ar_payload_len       (_zz_io_readInputs_0_ar_payload_len[7:0]                                     ), //i
    .io_readInputs_0_ar_payload_size      (3'b010                                                                      ), //i
    .io_readInputs_0_ar_payload_burst     (2'b01                                                                       ), //i
    .io_readInputs_0_ar_payload_lock      (1'b0                                                                        ), //i
    .io_readInputs_0_ar_payload_cache     (core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_cache[3:0]     ), //i
    .io_readInputs_0_ar_payload_qos       (4'b0000                                                                     ), //i
    .io_readInputs_0_ar_payload_prot      (core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_prot[2:0]      ), //i
    .io_readInputs_0_r_valid              (core_srams_0_io_axi_arbiter_io_readInputs_0_r_valid                         ), //o
    .io_readInputs_0_r_ready              (axi4ReadOnlyDecoder_1_io_outputs_0_r_ready                                  ), //i
    .io_readInputs_0_r_payload_data       (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]            ), //o
    .io_readInputs_0_r_payload_id         (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_id[2:0]               ), //o
    .io_readInputs_0_r_payload_resp       (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]             ), //o
    .io_readInputs_0_r_payload_last       (core_srams_0_io_axi_arbiter_io_readInputs_0_r_payload_last                  ), //o
    .io_sharedInputs_0_arw_valid          (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_valid             ), //i
    .io_sharedInputs_0_arw_ready          (core_srams_0_io_axi_arbiter_io_sharedInputs_0_arw_ready                     ), //o
    .io_sharedInputs_0_arw_payload_addr   (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_addr[31:0]), //i
    .io_sharedInputs_0_arw_payload_id     (_zz_io_sharedInputs_0_arw_payload_id[2:0]                                   ), //i
    .io_sharedInputs_0_arw_payload_region (_zz_io_sharedInputs_0_arw_payload_region[3:0]                               ), //i
    .io_sharedInputs_0_arw_payload_len    (_zz_io_sharedInputs_0_arw_payload_len[7:0]                                  ), //i
    .io_sharedInputs_0_arw_payload_size   (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_size[2:0] ), //i
    .io_sharedInputs_0_arw_payload_burst  (2'b01                                                                       ), //i
    .io_sharedInputs_0_arw_payload_lock   (1'b0                                                                        ), //i
    .io_sharedInputs_0_arw_payload_cache  (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_cache[3:0]), //i
    .io_sharedInputs_0_arw_payload_qos    (4'b0000                                                                     ), //i
    .io_sharedInputs_0_arw_payload_prot   (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_prot[2:0] ), //i
    .io_sharedInputs_0_arw_payload_write  (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_write     ), //i
    .io_sharedInputs_0_w_valid            (axi4SharedDecoder_1_io_sharedOutputs_0_w_valid                              ), //i
    .io_sharedInputs_0_w_ready            (core_srams_0_io_axi_arbiter_io_sharedInputs_0_w_ready                       ), //o
    .io_sharedInputs_0_w_payload_data     (axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_data[31:0]                 ), //i
    .io_sharedInputs_0_w_payload_strb     (axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_strb[3:0]                  ), //i
    .io_sharedInputs_0_w_payload_last     (axi4SharedDecoder_1_io_sharedOutputs_0_w_payload_last                       ), //i
    .io_sharedInputs_0_b_valid            (core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_valid                       ), //o
    .io_sharedInputs_0_b_ready            (axi4SharedDecoder_1_io_sharedOutputs_0_b_ready                              ), //i
    .io_sharedInputs_0_b_payload_id       (core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_payload_id[2:0]             ), //o
    .io_sharedInputs_0_b_payload_resp     (core_srams_0_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_valid            (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_valid                       ), //o
    .io_sharedInputs_0_r_ready            (axi4SharedDecoder_1_io_sharedOutputs_0_r_ready                              ), //i
    .io_sharedInputs_0_r_payload_data     (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]          ), //o
    .io_sharedInputs_0_r_payload_id       (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_id[2:0]             ), //o
    .io_sharedInputs_0_r_payload_resp     (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_payload_last     (core_srams_0_io_axi_arbiter_io_sharedInputs_0_r_payload_last                ), //o
    .io_output_arw_valid                  (core_srams_0_io_axi_arbiter_io_output_arw_valid                             ), //o
    .io_output_arw_ready                  (core_srams_0_io_axi_arw_ready                                               ), //i
    .io_output_arw_payload_addr           (core_srams_0_io_axi_arbiter_io_output_arw_payload_addr[31:0]                ), //o
    .io_output_arw_payload_id             (core_srams_0_io_axi_arbiter_io_output_arw_payload_id[3:0]                   ), //o
    .io_output_arw_payload_region         (core_srams_0_io_axi_arbiter_io_output_arw_payload_region[3:0]               ), //o
    .io_output_arw_payload_len            (core_srams_0_io_axi_arbiter_io_output_arw_payload_len[7:0]                  ), //o
    .io_output_arw_payload_size           (core_srams_0_io_axi_arbiter_io_output_arw_payload_size[2:0]                 ), //o
    .io_output_arw_payload_burst          (core_srams_0_io_axi_arbiter_io_output_arw_payload_burst[1:0]                ), //o
    .io_output_arw_payload_lock           (core_srams_0_io_axi_arbiter_io_output_arw_payload_lock                      ), //o
    .io_output_arw_payload_cache          (core_srams_0_io_axi_arbiter_io_output_arw_payload_cache[3:0]                ), //o
    .io_output_arw_payload_qos            (core_srams_0_io_axi_arbiter_io_output_arw_payload_qos[3:0]                  ), //o
    .io_output_arw_payload_prot           (core_srams_0_io_axi_arbiter_io_output_arw_payload_prot[2:0]                 ), //o
    .io_output_arw_payload_write          (core_srams_0_io_axi_arbiter_io_output_arw_payload_write                     ), //o
    .io_output_w_valid                    (core_srams_0_io_axi_arbiter_io_output_w_valid                               ), //o
    .io_output_w_ready                    (core_srams_0_io_axi_w_ready                                                 ), //i
    .io_output_w_payload_data             (core_srams_0_io_axi_arbiter_io_output_w_payload_data[31:0]                  ), //o
    .io_output_w_payload_strb             (core_srams_0_io_axi_arbiter_io_output_w_payload_strb[3:0]                   ), //o
    .io_output_w_payload_last             (core_srams_0_io_axi_arbiter_io_output_w_payload_last                        ), //o
    .io_output_b_valid                    (core_srams_0_io_axi_b_valid                                                 ), //i
    .io_output_b_ready                    (core_srams_0_io_axi_arbiter_io_output_b_ready                               ), //o
    .io_output_b_payload_id               (core_srams_0_io_axi_b_payload_id[3:0]                                       ), //i
    .io_output_b_payload_resp             (core_srams_0_io_axi_b_payload_resp[1:0]                                     ), //i
    .io_output_r_valid                    (core_srams_0_io_axi_r_valid                                                 ), //i
    .io_output_r_ready                    (core_srams_0_io_axi_arbiter_io_output_r_ready                               ), //o
    .io_output_r_payload_data             (core_srams_0_io_axi_r_payload_data[31:0]                                    ), //i
    .io_output_r_payload_id               (core_srams_0_io_axi_r_payload_id[3:0]                                       ), //i
    .io_output_r_payload_resp             (core_srams_0_io_axi_r_payload_resp[1:0]                                     ), //i
    .io_output_r_payload_last             (core_srams_0_io_axi_r_payload_last                                          ), //i
    .clk                                  (clk                                                                         ), //i
    .reset_n                              (reset_n                                                                     )  //i
  );
  Axi4SharedArbiter_1 core_srams_1_io_axi_arbiter (
    .io_readInputs_0_ar_valid             (core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid                  ), //i
    .io_readInputs_0_ar_ready             (core_srams_1_io_axi_arbiter_io_readInputs_0_ar_ready                        ), //o
    .io_readInputs_0_ar_payload_addr      (core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_addr[31:0]     ), //i
    .io_readInputs_0_ar_payload_id        (_zz_io_readInputs_0_ar_payload_id_1[2:0]                                    ), //i
    .io_readInputs_0_ar_payload_region    (_zz_io_readInputs_0_ar_payload_region_1[3:0]                                ), //i
    .io_readInputs_0_ar_payload_len       (_zz_io_readInputs_0_ar_payload_len_1[7:0]                                   ), //i
    .io_readInputs_0_ar_payload_size      (3'b010                                                                      ), //i
    .io_readInputs_0_ar_payload_burst     (2'b01                                                                       ), //i
    .io_readInputs_0_ar_payload_lock      (1'b0                                                                        ), //i
    .io_readInputs_0_ar_payload_cache     (core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_cache[3:0]     ), //i
    .io_readInputs_0_ar_payload_qos       (4'b0000                                                                     ), //i
    .io_readInputs_0_ar_payload_prot      (core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_prot[2:0]      ), //i
    .io_readInputs_0_r_valid              (core_srams_1_io_axi_arbiter_io_readInputs_0_r_valid                         ), //o
    .io_readInputs_0_r_ready              (axi4ReadOnlyDecoder_1_io_outputs_1_r_ready                                  ), //i
    .io_readInputs_0_r_payload_data       (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]            ), //o
    .io_readInputs_0_r_payload_id         (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_id[2:0]               ), //o
    .io_readInputs_0_r_payload_resp       (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]             ), //o
    .io_readInputs_0_r_payload_last       (core_srams_1_io_axi_arbiter_io_readInputs_0_r_payload_last                  ), //o
    .io_sharedInputs_0_arw_valid          (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_valid             ), //i
    .io_sharedInputs_0_arw_ready          (core_srams_1_io_axi_arbiter_io_sharedInputs_0_arw_ready                     ), //o
    .io_sharedInputs_0_arw_payload_addr   (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_addr[31:0]), //i
    .io_sharedInputs_0_arw_payload_id     (_zz_io_sharedInputs_0_arw_payload_id_1[2:0]                                 ), //i
    .io_sharedInputs_0_arw_payload_region (_zz_io_sharedInputs_0_arw_payload_region_1[3:0]                             ), //i
    .io_sharedInputs_0_arw_payload_len    (_zz_io_sharedInputs_0_arw_payload_len_1[7:0]                                ), //i
    .io_sharedInputs_0_arw_payload_size   (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_size[2:0] ), //i
    .io_sharedInputs_0_arw_payload_burst  (2'b01                                                                       ), //i
    .io_sharedInputs_0_arw_payload_lock   (1'b0                                                                        ), //i
    .io_sharedInputs_0_arw_payload_cache  (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_cache[3:0]), //i
    .io_sharedInputs_0_arw_payload_qos    (4'b0000                                                                     ), //i
    .io_sharedInputs_0_arw_payload_prot   (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_prot[2:0] ), //i
    .io_sharedInputs_0_arw_payload_write  (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_write     ), //i
    .io_sharedInputs_0_w_valid            (axi4SharedDecoder_1_io_sharedOutputs_1_w_valid                              ), //i
    .io_sharedInputs_0_w_ready            (core_srams_1_io_axi_arbiter_io_sharedInputs_0_w_ready                       ), //o
    .io_sharedInputs_0_w_payload_data     (axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_data[31:0]                 ), //i
    .io_sharedInputs_0_w_payload_strb     (axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_strb[3:0]                  ), //i
    .io_sharedInputs_0_w_payload_last     (axi4SharedDecoder_1_io_sharedOutputs_1_w_payload_last                       ), //i
    .io_sharedInputs_0_b_valid            (core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_valid                       ), //o
    .io_sharedInputs_0_b_ready            (axi4SharedDecoder_1_io_sharedOutputs_1_b_ready                              ), //i
    .io_sharedInputs_0_b_payload_id       (core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_payload_id[2:0]             ), //o
    .io_sharedInputs_0_b_payload_resp     (core_srams_1_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_valid            (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_valid                       ), //o
    .io_sharedInputs_0_r_ready            (axi4SharedDecoder_1_io_sharedOutputs_1_r_ready                              ), //i
    .io_sharedInputs_0_r_payload_data     (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]          ), //o
    .io_sharedInputs_0_r_payload_id       (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_id[2:0]             ), //o
    .io_sharedInputs_0_r_payload_resp     (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_payload_last     (core_srams_1_io_axi_arbiter_io_sharedInputs_0_r_payload_last                ), //o
    .io_output_arw_valid                  (core_srams_1_io_axi_arbiter_io_output_arw_valid                             ), //o
    .io_output_arw_ready                  (core_srams_1_io_axi_arw_ready                                               ), //i
    .io_output_arw_payload_addr           (core_srams_1_io_axi_arbiter_io_output_arw_payload_addr[31:0]                ), //o
    .io_output_arw_payload_id             (core_srams_1_io_axi_arbiter_io_output_arw_payload_id[3:0]                   ), //o
    .io_output_arw_payload_region         (core_srams_1_io_axi_arbiter_io_output_arw_payload_region[3:0]               ), //o
    .io_output_arw_payload_len            (core_srams_1_io_axi_arbiter_io_output_arw_payload_len[7:0]                  ), //o
    .io_output_arw_payload_size           (core_srams_1_io_axi_arbiter_io_output_arw_payload_size[2:0]                 ), //o
    .io_output_arw_payload_burst          (core_srams_1_io_axi_arbiter_io_output_arw_payload_burst[1:0]                ), //o
    .io_output_arw_payload_lock           (core_srams_1_io_axi_arbiter_io_output_arw_payload_lock                      ), //o
    .io_output_arw_payload_cache          (core_srams_1_io_axi_arbiter_io_output_arw_payload_cache[3:0]                ), //o
    .io_output_arw_payload_qos            (core_srams_1_io_axi_arbiter_io_output_arw_payload_qos[3:0]                  ), //o
    .io_output_arw_payload_prot           (core_srams_1_io_axi_arbiter_io_output_arw_payload_prot[2:0]                 ), //o
    .io_output_arw_payload_write          (core_srams_1_io_axi_arbiter_io_output_arw_payload_write                     ), //o
    .io_output_w_valid                    (core_srams_1_io_axi_arbiter_io_output_w_valid                               ), //o
    .io_output_w_ready                    (core_srams_1_io_axi_w_ready                                                 ), //i
    .io_output_w_payload_data             (core_srams_1_io_axi_arbiter_io_output_w_payload_data[31:0]                  ), //o
    .io_output_w_payload_strb             (core_srams_1_io_axi_arbiter_io_output_w_payload_strb[3:0]                   ), //o
    .io_output_w_payload_last             (core_srams_1_io_axi_arbiter_io_output_w_payload_last                        ), //o
    .io_output_b_valid                    (core_srams_1_io_axi_b_valid                                                 ), //i
    .io_output_b_ready                    (core_srams_1_io_axi_arbiter_io_output_b_ready                               ), //o
    .io_output_b_payload_id               (core_srams_1_io_axi_b_payload_id[3:0]                                       ), //i
    .io_output_b_payload_resp             (core_srams_1_io_axi_b_payload_resp[1:0]                                     ), //i
    .io_output_r_valid                    (core_srams_1_io_axi_r_valid                                                 ), //i
    .io_output_r_ready                    (core_srams_1_io_axi_arbiter_io_output_r_ready                               ), //o
    .io_output_r_payload_data             (core_srams_1_io_axi_r_payload_data[31:0]                                    ), //i
    .io_output_r_payload_id               (core_srams_1_io_axi_r_payload_id[3:0]                                       ), //i
    .io_output_r_payload_resp             (core_srams_1_io_axi_r_payload_resp[1:0]                                     ), //i
    .io_output_r_payload_last             (core_srams_1_io_axi_r_payload_last                                          ), //i
    .clk                                  (clk                                                                         ), //i
    .reset_n                              (reset_n                                                                     )  //i
  );
  Axi4SharedArbiter_2 core_srams_2_io_axi_arbiter (
    .io_readInputs_0_ar_valid             (core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_valid                  ), //i
    .io_readInputs_0_ar_ready             (core_srams_2_io_axi_arbiter_io_readInputs_0_ar_ready                        ), //o
    .io_readInputs_0_ar_payload_addr      (core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_addr[31:0]     ), //i
    .io_readInputs_0_ar_payload_id        (_zz_io_readInputs_0_ar_payload_id_2[2:0]                                    ), //i
    .io_readInputs_0_ar_payload_region    (_zz_io_readInputs_0_ar_payload_region_2[3:0]                                ), //i
    .io_readInputs_0_ar_payload_len       (_zz_io_readInputs_0_ar_payload_len_2[7:0]                                   ), //i
    .io_readInputs_0_ar_payload_size      (3'b010                                                                      ), //i
    .io_readInputs_0_ar_payload_burst     (2'b01                                                                       ), //i
    .io_readInputs_0_ar_payload_lock      (1'b0                                                                        ), //i
    .io_readInputs_0_ar_payload_cache     (core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_cache[3:0]     ), //i
    .io_readInputs_0_ar_payload_qos       (4'b0000                                                                     ), //i
    .io_readInputs_0_ar_payload_prot      (core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_prot[2:0]      ), //i
    .io_readInputs_0_r_valid              (core_srams_2_io_axi_arbiter_io_readInputs_0_r_valid                         ), //o
    .io_readInputs_0_r_ready              (axi4ReadOnlyDecoder_1_io_outputs_2_r_ready                                  ), //i
    .io_readInputs_0_r_payload_data       (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]            ), //o
    .io_readInputs_0_r_payload_id         (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_id[2:0]               ), //o
    .io_readInputs_0_r_payload_resp       (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]             ), //o
    .io_readInputs_0_r_payload_last       (core_srams_2_io_axi_arbiter_io_readInputs_0_r_payload_last                  ), //o
    .io_sharedInputs_0_arw_valid          (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_valid             ), //i
    .io_sharedInputs_0_arw_ready          (core_srams_2_io_axi_arbiter_io_sharedInputs_0_arw_ready                     ), //o
    .io_sharedInputs_0_arw_payload_addr   (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_addr[31:0]), //i
    .io_sharedInputs_0_arw_payload_id     (_zz_io_sharedInputs_0_arw_payload_id_2[2:0]                                 ), //i
    .io_sharedInputs_0_arw_payload_region (_zz_io_sharedInputs_0_arw_payload_region_2[3:0]                             ), //i
    .io_sharedInputs_0_arw_payload_len    (_zz_io_sharedInputs_0_arw_payload_len_2[7:0]                                ), //i
    .io_sharedInputs_0_arw_payload_size   (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_size[2:0] ), //i
    .io_sharedInputs_0_arw_payload_burst  (2'b01                                                                       ), //i
    .io_sharedInputs_0_arw_payload_lock   (1'b0                                                                        ), //i
    .io_sharedInputs_0_arw_payload_cache  (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_cache[3:0]), //i
    .io_sharedInputs_0_arw_payload_qos    (4'b0000                                                                     ), //i
    .io_sharedInputs_0_arw_payload_prot   (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_prot[2:0] ), //i
    .io_sharedInputs_0_arw_payload_write  (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_write     ), //i
    .io_sharedInputs_0_w_valid            (axi4SharedDecoder_1_io_sharedOutputs_2_w_valid                              ), //i
    .io_sharedInputs_0_w_ready            (core_srams_2_io_axi_arbiter_io_sharedInputs_0_w_ready                       ), //o
    .io_sharedInputs_0_w_payload_data     (axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_data[31:0]                 ), //i
    .io_sharedInputs_0_w_payload_strb     (axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_strb[3:0]                  ), //i
    .io_sharedInputs_0_w_payload_last     (axi4SharedDecoder_1_io_sharedOutputs_2_w_payload_last                       ), //i
    .io_sharedInputs_0_b_valid            (core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_valid                       ), //o
    .io_sharedInputs_0_b_ready            (axi4SharedDecoder_1_io_sharedOutputs_2_b_ready                              ), //i
    .io_sharedInputs_0_b_payload_id       (core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_payload_id[2:0]             ), //o
    .io_sharedInputs_0_b_payload_resp     (core_srams_2_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_valid            (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_valid                       ), //o
    .io_sharedInputs_0_r_ready            (axi4SharedDecoder_1_io_sharedOutputs_2_r_ready                              ), //i
    .io_sharedInputs_0_r_payload_data     (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]          ), //o
    .io_sharedInputs_0_r_payload_id       (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_id[2:0]             ), //o
    .io_sharedInputs_0_r_payload_resp     (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_payload_last     (core_srams_2_io_axi_arbiter_io_sharedInputs_0_r_payload_last                ), //o
    .io_output_arw_valid                  (core_srams_2_io_axi_arbiter_io_output_arw_valid                             ), //o
    .io_output_arw_ready                  (core_srams_2_io_axi_arw_ready                                               ), //i
    .io_output_arw_payload_addr           (core_srams_2_io_axi_arbiter_io_output_arw_payload_addr[31:0]                ), //o
    .io_output_arw_payload_id             (core_srams_2_io_axi_arbiter_io_output_arw_payload_id[3:0]                   ), //o
    .io_output_arw_payload_region         (core_srams_2_io_axi_arbiter_io_output_arw_payload_region[3:0]               ), //o
    .io_output_arw_payload_len            (core_srams_2_io_axi_arbiter_io_output_arw_payload_len[7:0]                  ), //o
    .io_output_arw_payload_size           (core_srams_2_io_axi_arbiter_io_output_arw_payload_size[2:0]                 ), //o
    .io_output_arw_payload_burst          (core_srams_2_io_axi_arbiter_io_output_arw_payload_burst[1:0]                ), //o
    .io_output_arw_payload_lock           (core_srams_2_io_axi_arbiter_io_output_arw_payload_lock                      ), //o
    .io_output_arw_payload_cache          (core_srams_2_io_axi_arbiter_io_output_arw_payload_cache[3:0]                ), //o
    .io_output_arw_payload_qos            (core_srams_2_io_axi_arbiter_io_output_arw_payload_qos[3:0]                  ), //o
    .io_output_arw_payload_prot           (core_srams_2_io_axi_arbiter_io_output_arw_payload_prot[2:0]                 ), //o
    .io_output_arw_payload_write          (core_srams_2_io_axi_arbiter_io_output_arw_payload_write                     ), //o
    .io_output_w_valid                    (core_srams_2_io_axi_arbiter_io_output_w_valid                               ), //o
    .io_output_w_ready                    (core_srams_2_io_axi_w_ready                                                 ), //i
    .io_output_w_payload_data             (core_srams_2_io_axi_arbiter_io_output_w_payload_data[31:0]                  ), //o
    .io_output_w_payload_strb             (core_srams_2_io_axi_arbiter_io_output_w_payload_strb[3:0]                   ), //o
    .io_output_w_payload_last             (core_srams_2_io_axi_arbiter_io_output_w_payload_last                        ), //o
    .io_output_b_valid                    (core_srams_2_io_axi_b_valid                                                 ), //i
    .io_output_b_ready                    (core_srams_2_io_axi_arbiter_io_output_b_ready                               ), //o
    .io_output_b_payload_id               (core_srams_2_io_axi_b_payload_id[3:0]                                       ), //i
    .io_output_b_payload_resp             (core_srams_2_io_axi_b_payload_resp[1:0]                                     ), //i
    .io_output_r_valid                    (core_srams_2_io_axi_r_valid                                                 ), //i
    .io_output_r_ready                    (core_srams_2_io_axi_arbiter_io_output_r_ready                               ), //o
    .io_output_r_payload_data             (core_srams_2_io_axi_r_payload_data[31:0]                                    ), //i
    .io_output_r_payload_id               (core_srams_2_io_axi_r_payload_id[3:0]                                       ), //i
    .io_output_r_payload_resp             (core_srams_2_io_axi_r_payload_resp[1:0]                                     ), //i
    .io_output_r_payload_last             (core_srams_2_io_axi_r_payload_last                                          ), //i
    .clk                                  (clk                                                                         ), //i
    .reset_n                              (reset_n                                                                     )  //i
  );
  Axi4SharedArbiter_3 core_srams_3_io_axi_arbiter (
    .io_readInputs_0_ar_valid             (core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_valid                  ), //i
    .io_readInputs_0_ar_ready             (core_srams_3_io_axi_arbiter_io_readInputs_0_ar_ready                        ), //o
    .io_readInputs_0_ar_payload_addr      (core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_addr[31:0]     ), //i
    .io_readInputs_0_ar_payload_id        (_zz_io_readInputs_0_ar_payload_id_3[2:0]                                    ), //i
    .io_readInputs_0_ar_payload_region    (_zz_io_readInputs_0_ar_payload_region_3[3:0]                                ), //i
    .io_readInputs_0_ar_payload_len       (_zz_io_readInputs_0_ar_payload_len_3[7:0]                                   ), //i
    .io_readInputs_0_ar_payload_size      (3'b010                                                                      ), //i
    .io_readInputs_0_ar_payload_burst     (2'b01                                                                       ), //i
    .io_readInputs_0_ar_payload_lock      (1'b0                                                                        ), //i
    .io_readInputs_0_ar_payload_cache     (core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_cache[3:0]     ), //i
    .io_readInputs_0_ar_payload_qos       (4'b0000                                                                     ), //i
    .io_readInputs_0_ar_payload_prot      (core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_prot[2:0]      ), //i
    .io_readInputs_0_r_valid              (core_srams_3_io_axi_arbiter_io_readInputs_0_r_valid                         ), //o
    .io_readInputs_0_r_ready              (axi4ReadOnlyDecoder_1_io_outputs_3_r_ready                                  ), //i
    .io_readInputs_0_r_payload_data       (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_data[31:0]            ), //o
    .io_readInputs_0_r_payload_id         (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_id[2:0]               ), //o
    .io_readInputs_0_r_payload_resp       (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_resp[1:0]             ), //o
    .io_readInputs_0_r_payload_last       (core_srams_3_io_axi_arbiter_io_readInputs_0_r_payload_last                  ), //o
    .io_sharedInputs_0_arw_valid          (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_valid             ), //i
    .io_sharedInputs_0_arw_ready          (core_srams_3_io_axi_arbiter_io_sharedInputs_0_arw_ready                     ), //o
    .io_sharedInputs_0_arw_payload_addr   (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_addr[31:0]), //i
    .io_sharedInputs_0_arw_payload_id     (_zz_io_sharedInputs_0_arw_payload_id_3[2:0]                                 ), //i
    .io_sharedInputs_0_arw_payload_region (_zz_io_sharedInputs_0_arw_payload_region_3[3:0]                             ), //i
    .io_sharedInputs_0_arw_payload_len    (_zz_io_sharedInputs_0_arw_payload_len_3[7:0]                                ), //i
    .io_sharedInputs_0_arw_payload_size   (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_size[2:0] ), //i
    .io_sharedInputs_0_arw_payload_burst  (2'b01                                                                       ), //i
    .io_sharedInputs_0_arw_payload_lock   (1'b0                                                                        ), //i
    .io_sharedInputs_0_arw_payload_cache  (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_cache[3:0]), //i
    .io_sharedInputs_0_arw_payload_qos    (4'b0000                                                                     ), //i
    .io_sharedInputs_0_arw_payload_prot   (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_prot[2:0] ), //i
    .io_sharedInputs_0_arw_payload_write  (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_write     ), //i
    .io_sharedInputs_0_w_valid            (axi4SharedDecoder_1_io_sharedOutputs_3_w_valid                              ), //i
    .io_sharedInputs_0_w_ready            (core_srams_3_io_axi_arbiter_io_sharedInputs_0_w_ready                       ), //o
    .io_sharedInputs_0_w_payload_data     (axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_data[31:0]                 ), //i
    .io_sharedInputs_0_w_payload_strb     (axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_strb[3:0]                  ), //i
    .io_sharedInputs_0_w_payload_last     (axi4SharedDecoder_1_io_sharedOutputs_3_w_payload_last                       ), //i
    .io_sharedInputs_0_b_valid            (core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_valid                       ), //o
    .io_sharedInputs_0_b_ready            (axi4SharedDecoder_1_io_sharedOutputs_3_b_ready                              ), //i
    .io_sharedInputs_0_b_payload_id       (core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_payload_id[2:0]             ), //o
    .io_sharedInputs_0_b_payload_resp     (core_srams_3_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_valid            (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_valid                       ), //o
    .io_sharedInputs_0_r_ready            (axi4SharedDecoder_1_io_sharedOutputs_3_r_ready                              ), //i
    .io_sharedInputs_0_r_payload_data     (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]          ), //o
    .io_sharedInputs_0_r_payload_id       (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_id[2:0]             ), //o
    .io_sharedInputs_0_r_payload_resp     (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]           ), //o
    .io_sharedInputs_0_r_payload_last     (core_srams_3_io_axi_arbiter_io_sharedInputs_0_r_payload_last                ), //o
    .io_output_arw_valid                  (core_srams_3_io_axi_arbiter_io_output_arw_valid                             ), //o
    .io_output_arw_ready                  (core_srams_3_io_axi_arw_ready                                               ), //i
    .io_output_arw_payload_addr           (core_srams_3_io_axi_arbiter_io_output_arw_payload_addr[31:0]                ), //o
    .io_output_arw_payload_id             (core_srams_3_io_axi_arbiter_io_output_arw_payload_id[3:0]                   ), //o
    .io_output_arw_payload_region         (core_srams_3_io_axi_arbiter_io_output_arw_payload_region[3:0]               ), //o
    .io_output_arw_payload_len            (core_srams_3_io_axi_arbiter_io_output_arw_payload_len[7:0]                  ), //o
    .io_output_arw_payload_size           (core_srams_3_io_axi_arbiter_io_output_arw_payload_size[2:0]                 ), //o
    .io_output_arw_payload_burst          (core_srams_3_io_axi_arbiter_io_output_arw_payload_burst[1:0]                ), //o
    .io_output_arw_payload_lock           (core_srams_3_io_axi_arbiter_io_output_arw_payload_lock                      ), //o
    .io_output_arw_payload_cache          (core_srams_3_io_axi_arbiter_io_output_arw_payload_cache[3:0]                ), //o
    .io_output_arw_payload_qos            (core_srams_3_io_axi_arbiter_io_output_arw_payload_qos[3:0]                  ), //o
    .io_output_arw_payload_prot           (core_srams_3_io_axi_arbiter_io_output_arw_payload_prot[2:0]                 ), //o
    .io_output_arw_payload_write          (core_srams_3_io_axi_arbiter_io_output_arw_payload_write                     ), //o
    .io_output_w_valid                    (core_srams_3_io_axi_arbiter_io_output_w_valid                               ), //o
    .io_output_w_ready                    (core_srams_3_io_axi_w_ready                                                 ), //i
    .io_output_w_payload_data             (core_srams_3_io_axi_arbiter_io_output_w_payload_data[31:0]                  ), //o
    .io_output_w_payload_strb             (core_srams_3_io_axi_arbiter_io_output_w_payload_strb[3:0]                   ), //o
    .io_output_w_payload_last             (core_srams_3_io_axi_arbiter_io_output_w_payload_last                        ), //o
    .io_output_b_valid                    (core_srams_3_io_axi_b_valid                                                 ), //i
    .io_output_b_ready                    (core_srams_3_io_axi_arbiter_io_output_b_ready                               ), //o
    .io_output_b_payload_id               (core_srams_3_io_axi_b_payload_id[3:0]                                       ), //i
    .io_output_b_payload_resp             (core_srams_3_io_axi_b_payload_resp[1:0]                                     ), //i
    .io_output_r_valid                    (core_srams_3_io_axi_r_valid                                                 ), //i
    .io_output_r_ready                    (core_srams_3_io_axi_arbiter_io_output_r_ready                               ), //o
    .io_output_r_payload_data             (core_srams_3_io_axi_r_payload_data[31:0]                                    ), //i
    .io_output_r_payload_id               (core_srams_3_io_axi_r_payload_id[3:0]                                       ), //i
    .io_output_r_payload_resp             (core_srams_3_io_axi_r_payload_resp[1:0]                                     ), //i
    .io_output_r_payload_last             (core_srams_3_io_axi_r_payload_last                                          ), //i
    .clk                                  (clk                                                                         ), //i
    .reset_n                              (reset_n                                                                     )  //i
  );
  Axi4SharedArbiter_4 core_apbBridge_io_axi_arbiter (
    .io_sharedInputs_0_arw_valid         (core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_valid            ), //i
    .io_sharedInputs_0_arw_ready         (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready                  ), //o
    .io_sharedInputs_0_arw_payload_addr  (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr[19:0]     ), //i
    .io_sharedInputs_0_arw_payload_id    (_zz_io_sharedInputs_0_arw_payload_id_4[3:0]                                ), //i
    .io_sharedInputs_0_arw_payload_len   (_zz_io_sharedInputs_0_arw_payload_len_4[7:0]                               ), //i
    .io_sharedInputs_0_arw_payload_size  (core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_size[2:0]), //i
    .io_sharedInputs_0_arw_payload_burst (2'b01                                                                      ), //i
    .io_sharedInputs_0_arw_payload_write (core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_write    ), //i
    .io_sharedInputs_0_w_valid           (axi4SharedDecoder_1_io_sharedOutputs_4_w_valid                             ), //i
    .io_sharedInputs_0_w_ready           (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_w_ready                    ), //o
    .io_sharedInputs_0_w_payload_data    (axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_data[31:0]                ), //i
    .io_sharedInputs_0_w_payload_strb    (axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_strb[3:0]                 ), //i
    .io_sharedInputs_0_w_payload_last    (axi4SharedDecoder_1_io_sharedOutputs_4_w_payload_last                      ), //i
    .io_sharedInputs_0_b_valid           (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_valid                    ), //o
    .io_sharedInputs_0_b_ready           (axi4SharedDecoder_1_io_sharedOutputs_4_b_ready                             ), //i
    .io_sharedInputs_0_b_payload_id      (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_id[3:0]          ), //o
    .io_sharedInputs_0_b_payload_resp    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_b_payload_resp[1:0]        ), //o
    .io_sharedInputs_0_r_valid           (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_valid                    ), //o
    .io_sharedInputs_0_r_ready           (axi4SharedDecoder_1_io_sharedOutputs_4_r_ready                             ), //i
    .io_sharedInputs_0_r_payload_data    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_data[31:0]       ), //o
    .io_sharedInputs_0_r_payload_id      (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_id[3:0]          ), //o
    .io_sharedInputs_0_r_payload_resp    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_resp[1:0]        ), //o
    .io_sharedInputs_0_r_payload_last    (core_apbBridge_io_axi_arbiter_io_sharedInputs_0_r_payload_last             ), //o
    .io_output_arw_valid                 (core_apbBridge_io_axi_arbiter_io_output_arw_valid                          ), //o
    .io_output_arw_ready                 (core_apbBridge_io_axi_arw_ready                                            ), //i
    .io_output_arw_payload_addr          (core_apbBridge_io_axi_arbiter_io_output_arw_payload_addr[19:0]             ), //o
    .io_output_arw_payload_id            (core_apbBridge_io_axi_arbiter_io_output_arw_payload_id[3:0]                ), //o
    .io_output_arw_payload_len           (core_apbBridge_io_axi_arbiter_io_output_arw_payload_len[7:0]               ), //o
    .io_output_arw_payload_size          (core_apbBridge_io_axi_arbiter_io_output_arw_payload_size[2:0]              ), //o
    .io_output_arw_payload_burst         (core_apbBridge_io_axi_arbiter_io_output_arw_payload_burst[1:0]             ), //o
    .io_output_arw_payload_write         (core_apbBridge_io_axi_arbiter_io_output_arw_payload_write                  ), //o
    .io_output_w_valid                   (core_apbBridge_io_axi_arbiter_io_output_w_valid                            ), //o
    .io_output_w_ready                   (core_apbBridge_io_axi_w_ready                                              ), //i
    .io_output_w_payload_data            (core_apbBridge_io_axi_arbiter_io_output_w_payload_data[31:0]               ), //o
    .io_output_w_payload_strb            (core_apbBridge_io_axi_arbiter_io_output_w_payload_strb[3:0]                ), //o
    .io_output_w_payload_last            (core_apbBridge_io_axi_arbiter_io_output_w_payload_last                     ), //o
    .io_output_b_valid                   (core_apbBridge_io_axi_b_valid                                              ), //i
    .io_output_b_ready                   (core_apbBridge_io_axi_arbiter_io_output_b_ready                            ), //o
    .io_output_b_payload_id              (core_apbBridge_io_axi_b_payload_id[3:0]                                    ), //i
    .io_output_b_payload_resp            (core_apbBridge_io_axi_b_payload_resp[1:0]                                  ), //i
    .io_output_r_valid                   (core_apbBridge_io_axi_r_valid                                              ), //i
    .io_output_r_ready                   (core_apbBridge_io_axi_arbiter_io_output_r_ready                            ), //o
    .io_output_r_payload_data            (core_apbBridge_io_axi_r_payload_data[31:0]                                 ), //i
    .io_output_r_payload_id              (core_apbBridge_io_axi_r_payload_id[3:0]                                    ), //i
    .io_output_r_payload_resp            (core_apbBridge_io_axi_r_payload_resp[1:0]                                  ), //i
    .io_output_r_payload_last            (core_apbBridge_io_axi_r_payload_last                                       ), //i
    .clk                                 (clk                                                                        ), //i
    .reset_n                             (reset_n                                                                    )  //i
  );
  assign core_cpu_iBus_rsp_payload_error = (! (axi4ReadOnlyDecoder_1_io_input_r_payload_resp == 2'b00));
  assign core_core_cpu_dBus_cmd_fire = (core_cpu_dBus_cmd_valid && core_cpu_dBus_cmd_ready);
  assign when_Utils_l706 = (core_core_cpu_dBus_cmd_fire && core_cpu_dBus_cmd_payload_wr);
  always @(*) begin
    _zz_when_Utils_l735 = 1'b0;
    if(when_Utils_l706) begin
      _zz_when_Utils_l735 = 1'b1;
    end
  end

  always @(*) begin
    _zz_when_Utils_l735_1 = 1'b0;
    if((axi4SharedDecoder_1_io_input_b_valid && 1'b1)) begin
      _zz_when_Utils_l735_1 = 1'b1;
    end
  end

  assign when_Utils_l735 = (_zz_when_Utils_l735 && (! _zz_when_Utils_l735_1));
  always @(*) begin
    if(when_Utils_l735) begin
      _zz_dBus_cmd_ready_1 = 3'b001;
    end else begin
      if(when_Utils_l737) begin
        _zz_dBus_cmd_ready_1 = 3'b111;
      end else begin
        _zz_dBus_cmd_ready_1 = 3'b000;
      end
    end
  end

  assign when_Utils_l737 = ((! _zz_when_Utils_l735) && _zz_when_Utils_l735_1);
  assign _zz_dBus_cmd_ready_2 = (! ((((_zz_dBus_cmd_ready != 3'b000) && core_cpu_dBus_cmd_valid) && (! core_cpu_dBus_cmd_payload_wr)) || (_zz_dBus_cmd_ready == 3'b111)));
  assign _zz_io_input_arw_valid = (core_cpu_dBus_cmd_valid && _zz_dBus_cmd_ready_2);
  assign core_cpu_dBus_cmd_ready = (_zz_dBus_cmd_ready_3 && _zz_dBus_cmd_ready_2);
  assign _zz_when_Stream_l445 = core_cpu_dBus_cmd_payload_wr;
  assign _zz_io_input_arw_payload_addr = core_cpu_dBus_cmd_payload_address;
  assign _zz_io_input_arw_payload_size = core_cpu_dBus_cmd_payload_size;
  always @(*) begin
    _zz_dBus_cmd_ready_3 = 1'b1;
    if(when_Stream_l1063) begin
      _zz_dBus_cmd_ready_3 = 1'b0;
    end
    if(when_Stream_l1063_1) begin
      _zz_dBus_cmd_ready_3 = 1'b0;
    end
  end

  assign when_Stream_l1063 = ((! _zz_when_Stream_l1063) && _zz_when_Stream_l1063_2);
  assign when_Stream_l1063_1 = ((! _zz_when_Stream_l1063_1) && _zz_when_Stream_l1063_3);
  assign _zz_io_input_arw_valid_1 = (_zz_io_input_arw_valid && _zz_when_Stream_l1063_2);
  assign _zz_io_input_w_valid = (_zz_io_input_arw_valid && _zz_when_Stream_l1063_3);
  assign _zz_when_Stream_l1063 = axi4SharedDecoder_1_io_input_arw_ready;
  assign when_Stream_l445 = (! _zz_when_Stream_l445);
  always @(*) begin
    _zz_io_input_w_valid_1 = _zz_io_input_w_valid;
    if(when_Stream_l445) begin
      _zz_io_input_w_valid_1 = 1'b0;
    end
  end

  always @(*) begin
    _zz_when_Stream_l1063_1 = axi4SharedDecoder_1_io_input_w_ready;
    if(when_Stream_l445) begin
      _zz_when_Stream_l1063_1 = 1'b1;
    end
  end

  always @(*) begin
    case(_zz_io_input_arw_payload_size)
      2'b00 : begin
        _zz_io_input_w_payload_strb = 4'b0001;
      end
      2'b01 : begin
        _zz_io_input_w_payload_strb = 4'b0011;
      end
      default : begin
        _zz_io_input_w_payload_strb = 4'b1111;
      end
    endcase
  end

  assign core_cpu_dBus_rsp_error = (! (axi4SharedDecoder_1_io_input_r_payload_resp == 2'b00));
  assign core_cpu_debug_bus_cmd_payload_address = systemDebugger_1_io_mem_cmd_payload_address[7:0];
  assign core_core_cpu_debug_bus_cmd_fire = (systemDebugger_1_io_mem_cmd_valid && core_cpu_debug_bus_cmd_ready);
  assign jtag_tdo = jtagBridge_1_io_jtag_tdo;
  assign sram_0_A_CLK = core_srams_0_io_sram_A_CLK;
  assign sram_0_A_MEN = core_srams_0_io_sram_A_MEN;
  assign sram_0_A_WEN = core_srams_0_io_sram_A_WEN;
  assign sram_0_A_REN = core_srams_0_io_sram_A_REN;
  assign sram_0_A_ADDR = core_srams_0_io_sram_A_ADDR;
  assign sram_0_A_DIN = core_srams_0_io_sram_A_DIN;
  assign sram_0_A_DLY = core_srams_0_io_sram_A_DLY;
  assign sram_0_A_BM = core_srams_0_io_sram_A_BM;
  assign sram_0_A_BIST_CLK = core_srams_0_io_sram_A_BIST_CLK;
  assign sram_0_A_BIST_EN = core_srams_0_io_sram_A_BIST_EN;
  assign sram_0_A_BIST_MEN = core_srams_0_io_sram_A_BIST_MEN;
  assign sram_0_A_BIST_WEN = core_srams_0_io_sram_A_BIST_WEN;
  assign sram_0_A_BIST_REN = core_srams_0_io_sram_A_BIST_REN;
  assign sram_0_A_BIST_ADDR = core_srams_0_io_sram_A_BIST_ADDR;
  assign sram_0_A_BIST_DIN = core_srams_0_io_sram_A_BIST_DIN;
  assign sram_0_A_BIST_BM = core_srams_0_io_sram_A_BIST_BM;
  assign sram_1_A_CLK = core_srams_1_io_sram_A_CLK;
  assign sram_1_A_MEN = core_srams_1_io_sram_A_MEN;
  assign sram_1_A_WEN = core_srams_1_io_sram_A_WEN;
  assign sram_1_A_REN = core_srams_1_io_sram_A_REN;
  assign sram_1_A_ADDR = core_srams_1_io_sram_A_ADDR;
  assign sram_1_A_DIN = core_srams_1_io_sram_A_DIN;
  assign sram_1_A_DLY = core_srams_1_io_sram_A_DLY;
  assign sram_1_A_BM = core_srams_1_io_sram_A_BM;
  assign sram_1_A_BIST_CLK = core_srams_1_io_sram_A_BIST_CLK;
  assign sram_1_A_BIST_EN = core_srams_1_io_sram_A_BIST_EN;
  assign sram_1_A_BIST_MEN = core_srams_1_io_sram_A_BIST_MEN;
  assign sram_1_A_BIST_WEN = core_srams_1_io_sram_A_BIST_WEN;
  assign sram_1_A_BIST_REN = core_srams_1_io_sram_A_BIST_REN;
  assign sram_1_A_BIST_ADDR = core_srams_1_io_sram_A_BIST_ADDR;
  assign sram_1_A_BIST_DIN = core_srams_1_io_sram_A_BIST_DIN;
  assign sram_1_A_BIST_BM = core_srams_1_io_sram_A_BIST_BM;
  assign sram_2_A_CLK = core_srams_2_io_sram_A_CLK;
  assign sram_2_A_MEN = core_srams_2_io_sram_A_MEN;
  assign sram_2_A_WEN = core_srams_2_io_sram_A_WEN;
  assign sram_2_A_REN = core_srams_2_io_sram_A_REN;
  assign sram_2_A_ADDR = core_srams_2_io_sram_A_ADDR;
  assign sram_2_A_DIN = core_srams_2_io_sram_A_DIN;
  assign sram_2_A_DLY = core_srams_2_io_sram_A_DLY;
  assign sram_2_A_BM = core_srams_2_io_sram_A_BM;
  assign sram_2_A_BIST_CLK = core_srams_2_io_sram_A_BIST_CLK;
  assign sram_2_A_BIST_EN = core_srams_2_io_sram_A_BIST_EN;
  assign sram_2_A_BIST_MEN = core_srams_2_io_sram_A_BIST_MEN;
  assign sram_2_A_BIST_WEN = core_srams_2_io_sram_A_BIST_WEN;
  assign sram_2_A_BIST_REN = core_srams_2_io_sram_A_BIST_REN;
  assign sram_2_A_BIST_ADDR = core_srams_2_io_sram_A_BIST_ADDR;
  assign sram_2_A_BIST_DIN = core_srams_2_io_sram_A_BIST_DIN;
  assign sram_2_A_BIST_BM = core_srams_2_io_sram_A_BIST_BM;
  assign sram_3_A_CLK = core_srams_3_io_sram_A_CLK;
  assign sram_3_A_MEN = core_srams_3_io_sram_A_MEN;
  assign sram_3_A_WEN = core_srams_3_io_sram_A_WEN;
  assign sram_3_A_REN = core_srams_3_io_sram_A_REN;
  assign sram_3_A_ADDR = core_srams_3_io_sram_A_ADDR;
  assign sram_3_A_DIN = core_srams_3_io_sram_A_DIN;
  assign sram_3_A_DLY = core_srams_3_io_sram_A_DLY;
  assign sram_3_A_BM = core_srams_3_io_sram_A_BM;
  assign sram_3_A_BIST_CLK = core_srams_3_io_sram_A_BIST_CLK;
  assign sram_3_A_BIST_EN = core_srams_3_io_sram_A_BIST_EN;
  assign sram_3_A_BIST_MEN = core_srams_3_io_sram_A_BIST_MEN;
  assign sram_3_A_BIST_WEN = core_srams_3_io_sram_A_BIST_WEN;
  assign sram_3_A_BIST_REN = core_srams_3_io_sram_A_BIST_REN;
  assign sram_3_A_BIST_ADDR = core_srams_3_io_sram_A_BIST_ADDR;
  assign sram_3_A_BIST_DIN = core_srams_3_io_sram_A_BIST_DIN;
  assign sram_3_A_BIST_BM = core_srams_3_io_sram_A_BIST_BM;
  assign gpio_write = core_gpio_io_gpio_write;
  assign gpio_writeEnable = core_gpio_io_gpio_writeEnable;
  assign core_srams_0_io_powerEnable = (! (core_gpio_io_gpio_write[0] && core_gpio_io_gpio_writeEnable[0]));
  assign core_srams_1_io_powerEnable = (! (core_gpio_io_gpio_write[1] && core_gpio_io_gpio_writeEnable[1]));
  assign core_srams_2_io_powerEnable = (! (core_gpio_io_gpio_write[2] && core_gpio_io_gpio_writeEnable[2]));
  assign core_srams_3_io_powerEnable = (! (core_gpio_io_gpio_write[3] && core_gpio_io_gpio_writeEnable[3]));
  assign uart_txd = core_uart_io_uart_txd;
  assign core_gpio_io_bus_PADDR = apb3Router_1_io_outputs_0_PADDR[11:0];
  assign core_uart_io_apb_PADDR = apb3Router_1_io_outputs_1_PADDR[4:0];
  assign core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire = (core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid && core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready);
  assign core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_valid = core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_addr;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_cache = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_cache;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_payload_prot = axi4ReadOnlyDecoder_1_io_outputs_0_ar_payload_prot;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_ready = core_srams_0_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire = (core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid && core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready);
  assign core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_valid = core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_addr;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_cache = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_cache;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_payload_prot = axi4ReadOnlyDecoder_1_io_outputs_1_ar_payload_prot;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_ready = core_srams_1_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_fire = (core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_valid && core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_ready);
  assign core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_valid = core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_rValid;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_addr;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_cache = axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_cache;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_payload_prot = axi4ReadOnlyDecoder_1_io_outputs_2_ar_payload_prot;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_ready = core_srams_2_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_fire = (core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_valid && core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_ready);
  assign core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_valid = core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_rValid;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_addr = axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_addr;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_cache = axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_cache;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_payload_prot = axi4ReadOnlyDecoder_1_io_outputs_3_ar_payload_prot;
  assign core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_ready = core_srams_3_io_axi_arbiter_io_readInputs_0_ar_ready;
  assign axi4ReadOnlyDecoder_1_io_input_ar_payload_addr = {core_cpu_iBus_cmd_payload_pc[31 : 2],2'b00};
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_fire = (core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_valid && core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_ready);
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_valid = core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_rValid;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_addr = axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_addr;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_size = axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_size;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_cache = axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_cache;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_prot = axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_prot;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_payload_write = axi4SharedDecoder_1_io_sharedOutputs_0_arw_payload_write;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_ready = core_srams_0_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_fire = (core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_valid && core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_ready);
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_valid = core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_rValid;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_addr = axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_addr;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_size = axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_size;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_cache = axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_cache;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_prot = axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_prot;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_payload_write = axi4SharedDecoder_1_io_sharedOutputs_1_arw_payload_write;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_ready = core_srams_1_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_fire = (core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_valid && core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_ready);
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_valid = core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_rValid;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_addr = axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_addr;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_size = axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_size;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_cache = axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_cache;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_prot = axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_prot;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_payload_write = axi4SharedDecoder_1_io_sharedOutputs_2_arw_payload_write;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_ready = core_srams_2_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_fire = (core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_valid && core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_ready);
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_valid = core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_rValid;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_addr = axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_addr;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_size = axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_size;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_cache = axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_cache;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_prot = axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_prot;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_payload_write = axi4SharedDecoder_1_io_sharedOutputs_3_arw_payload_write;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_ready = core_srams_3_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_fire = (core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_valid && core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_ready);
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_valid = core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_rValid;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_addr = axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_addr;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_size = axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_size;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_cache = axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_cache;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_prot = axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_prot;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_write = axi4SharedDecoder_1_io_sharedOutputs_4_arw_payload_write;
  assign core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_ready = core_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_ready;
  assign axi4SharedDecoder_1_io_input_arw_payload_size = {1'd0, _zz_io_input_arw_payload_size};
  assign axi4SharedDecoder_1_io_input_w_payload_strb = (_zz_io_input_w_payload_strb <<< _zz_io_input_arw_payload_addr[1 : 0]);
  assign _zz_io_readInputs_0_ar_payload_id[2 : 0] = 3'b000;
  assign _zz_io_readInputs_0_ar_payload_region[3 : 0] = 4'b0000;
  assign _zz_io_readInputs_0_ar_payload_len[7 : 0] = 8'h0;
  assign _zz_io_sharedInputs_0_arw_payload_id[2 : 0] = 3'b000;
  assign _zz_io_sharedInputs_0_arw_payload_region[3 : 0] = 4'b0000;
  assign _zz_io_sharedInputs_0_arw_payload_len[7 : 0] = 8'h0;
  assign _zz_io_readInputs_0_ar_payload_id_1[2 : 0] = 3'b000;
  assign _zz_io_readInputs_0_ar_payload_region_1[3 : 0] = 4'b0000;
  assign _zz_io_readInputs_0_ar_payload_len_1[7 : 0] = 8'h0;
  assign _zz_io_sharedInputs_0_arw_payload_id_1[2 : 0] = 3'b000;
  assign _zz_io_sharedInputs_0_arw_payload_region_1[3 : 0] = 4'b0000;
  assign _zz_io_sharedInputs_0_arw_payload_len_1[7 : 0] = 8'h0;
  assign _zz_io_readInputs_0_ar_payload_id_2[2 : 0] = 3'b000;
  assign _zz_io_readInputs_0_ar_payload_region_2[3 : 0] = 4'b0000;
  assign _zz_io_readInputs_0_ar_payload_len_2[7 : 0] = 8'h0;
  assign _zz_io_sharedInputs_0_arw_payload_id_2[2 : 0] = 3'b000;
  assign _zz_io_sharedInputs_0_arw_payload_region_2[3 : 0] = 4'b0000;
  assign _zz_io_sharedInputs_0_arw_payload_len_2[7 : 0] = 8'h0;
  assign _zz_io_readInputs_0_ar_payload_id_3[2 : 0] = 3'b000;
  assign _zz_io_readInputs_0_ar_payload_region_3[3 : 0] = 4'b0000;
  assign _zz_io_readInputs_0_ar_payload_len_3[7 : 0] = 8'h0;
  assign _zz_io_sharedInputs_0_arw_payload_id_3[2 : 0] = 3'b000;
  assign _zz_io_sharedInputs_0_arw_payload_region_3[3 : 0] = 4'b0000;
  assign _zz_io_sharedInputs_0_arw_payload_len_3[7 : 0] = 8'h0;
  assign core_apbBridge_io_axi_arbiter_io_sharedInputs_0_arw_payload_addr = core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_payload_addr[19:0];
  assign _zz_io_sharedInputs_0_arw_payload_id_4[3 : 0] = 4'b0000;
  assign _zz_io_sharedInputs_0_arw_payload_len_4[7 : 0] = 8'h0;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      _zz_dBus_cmd_ready <= 3'b000;
      _zz_when_Stream_l1063_2 <= 1'b1;
      _zz_when_Stream_l1063_3 <= 1'b1;
      core_core_cpu_debug_bus_cmd_fire_regNext <= 1'b0;
      core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid <= 1'b0;
      core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid <= 1'b0;
      core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_rValid <= 1'b0;
      core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_rValid <= 1'b0;
      core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_rValid <= 1'b0;
      core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_rValid <= 1'b0;
      core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_rValid <= 1'b0;
      core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_rValid <= 1'b0;
      core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_rValid <= 1'b0;
    end else begin
      _zz_dBus_cmd_ready <= (_zz_dBus_cmd_ready + _zz_dBus_cmd_ready_1);
      if((_zz_io_input_arw_valid_1 && _zz_when_Stream_l1063)) begin
        _zz_when_Stream_l1063_2 <= 1'b0;
      end
      if((_zz_io_input_w_valid && _zz_when_Stream_l1063_1)) begin
        _zz_when_Stream_l1063_3 <= 1'b0;
      end
      if(_zz_dBus_cmd_ready_3) begin
        _zz_when_Stream_l1063_2 <= 1'b1;
        _zz_when_Stream_l1063_3 <= 1'b1;
      end
      core_core_cpu_debug_bus_cmd_fire_regNext <= core_core_cpu_debug_bus_cmd_fire;
      if(axi4ReadOnlyDecoder_1_io_outputs_0_ar_valid) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid <= 1'b1;
      end
      if(core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_validPipe_fire) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_0_ar_rValid <= 1'b0;
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_1_ar_valid) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid <= 1'b1;
      end
      if(core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_validPipe_fire) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_1_ar_rValid <= 1'b0;
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_2_ar_valid) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_rValid <= 1'b1;
      end
      if(core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_validPipe_fire) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_2_ar_rValid <= 1'b0;
      end
      if(axi4ReadOnlyDecoder_1_io_outputs_3_ar_valid) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_rValid <= 1'b1;
      end
      if(core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_validPipe_fire) begin
        core_axi4ReadOnlyDecoder_1_io_outputs_3_ar_rValid <= 1'b0;
      end
      if(axi4SharedDecoder_1_io_sharedOutputs_0_arw_valid) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_rValid <= 1'b1;
      end
      if(core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_validPipe_fire) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_0_arw_rValid <= 1'b0;
      end
      if(axi4SharedDecoder_1_io_sharedOutputs_1_arw_valid) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_rValid <= 1'b1;
      end
      if(core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_validPipe_fire) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_1_arw_rValid <= 1'b0;
      end
      if(axi4SharedDecoder_1_io_sharedOutputs_2_arw_valid) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_rValid <= 1'b1;
      end
      if(core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_validPipe_fire) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_2_arw_rValid <= 1'b0;
      end
      if(axi4SharedDecoder_1_io_sharedOutputs_3_arw_valid) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_rValid <= 1'b1;
      end
      if(core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_validPipe_fire) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_3_arw_rValid <= 1'b0;
      end
      if(axi4SharedDecoder_1_io_sharedOutputs_4_arw_valid) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_rValid <= 1'b1;
      end
      if(core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_validPipe_fire) begin
        core_axi4SharedDecoder_1_io_sharedOutputs_4_arw_rValid <= 1'b0;
      end
    end
  end


endmodule

module Axi4SharedArbiter_4 (
  input  wire          io_sharedInputs_0_arw_valid,
  output wire          io_sharedInputs_0_arw_ready,
  input  wire [19:0]   io_sharedInputs_0_arw_payload_addr,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_id,
  input  wire [7:0]    io_sharedInputs_0_arw_payload_len,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_size,
  input  wire [1:0]    io_sharedInputs_0_arw_payload_burst,
  input  wire          io_sharedInputs_0_arw_payload_write,
  input  wire          io_sharedInputs_0_w_valid,
  output wire          io_sharedInputs_0_w_ready,
  input  wire [31:0]   io_sharedInputs_0_w_payload_data,
  input  wire [3:0]    io_sharedInputs_0_w_payload_strb,
  input  wire          io_sharedInputs_0_w_payload_last,
  output wire          io_sharedInputs_0_b_valid,
  input  wire          io_sharedInputs_0_b_ready,
  output wire [3:0]    io_sharedInputs_0_b_payload_id,
  output wire [1:0]    io_sharedInputs_0_b_payload_resp,
  output wire          io_sharedInputs_0_r_valid,
  input  wire          io_sharedInputs_0_r_ready,
  output wire [31:0]   io_sharedInputs_0_r_payload_data,
  output wire [3:0]    io_sharedInputs_0_r_payload_id,
  output wire [1:0]    io_sharedInputs_0_r_payload_resp,
  output wire          io_sharedInputs_0_r_payload_last,
  output wire          io_output_arw_valid,
  input  wire          io_output_arw_ready,
  output wire [19:0]   io_output_arw_payload_addr,
  output wire [3:0]    io_output_arw_payload_id,
  output wire [7:0]    io_output_arw_payload_len,
  output wire [2:0]    io_output_arw_payload_size,
  output wire [1:0]    io_output_arw_payload_burst,
  output wire          io_output_arw_payload_write,
  output wire          io_output_w_valid,
  input  wire          io_output_w_ready,
  output wire [31:0]   io_output_w_payload_data,
  output wire [3:0]    io_output_w_payload_strb,
  output wire          io_output_w_payload_last,
  input  wire          io_output_b_valid,
  output wire          io_output_b_ready,
  input  wire [3:0]    io_output_b_payload_id,
  input  wire [1:0]    io_output_b_payload_resp,
  input  wire          io_output_r_valid,
  output wire          io_output_r_ready,
  input  wire [31:0]   io_output_r_payload_data,
  input  wire [3:0]    io_output_r_payload_id,
  input  wire [1:0]    io_output_r_payload_resp,
  input  wire          io_output_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 cmdArbiter_io_output_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [19:0]   cmdArbiter_io_output_payload_addr;
  wire       [3:0]    cmdArbiter_io_output_payload_id;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosenOH;
  wire                cmdRouteFork_thrown_translated_fifo_io_push_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_occupancy;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_availability;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [19:0]   inputsCmd_0_payload_addr;
  wire       [3:0]    inputsCmd_0_payload_id;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire                inputsCmd_0_payload_write;
  wire                cmdOutputFork_valid;
  wire                cmdOutputFork_ready;
  wire       [19:0]   cmdOutputFork_payload_addr;
  wire       [3:0]    cmdOutputFork_payload_id;
  wire       [7:0]    cmdOutputFork_payload_len;
  wire       [2:0]    cmdOutputFork_payload_size;
  wire       [1:0]    cmdOutputFork_payload_burst;
  wire                cmdOutputFork_payload_write;
  wire                cmdRouteFork_valid;
  reg                 cmdRouteFork_ready;
  wire       [19:0]   cmdRouteFork_payload_addr;
  wire       [3:0]    cmdRouteFork_payload_id;
  wire       [7:0]    cmdRouteFork_payload_len;
  wire       [2:0]    cmdRouteFork_payload_size;
  wire       [1:0]    cmdRouteFork_payload_burst;
  wire                cmdRouteFork_payload_write;
  reg                 core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0;
  reg                 core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1;
  wire                when_Stream_l1063;
  wire                when_Stream_l1063_1;
  wire                cmdOutputFork_fire;
  wire                cmdRouteFork_fire;
  wire                when_Stream_l445;
  reg                 cmdRouteFork_thrown_valid;
  wire                cmdRouteFork_thrown_ready;
  wire       [19:0]   cmdRouteFork_thrown_payload_addr;
  wire       [3:0]    cmdRouteFork_thrown_payload_id;
  wire       [7:0]    cmdRouteFork_thrown_payload_len;
  wire       [2:0]    cmdRouteFork_thrown_payload_size;
  wire       [1:0]    cmdRouteFork_thrown_payload_burst;
  wire                cmdRouteFork_thrown_payload_write;
  wire                cmdRouteFork_thrown_translated_valid;
  wire                cmdRouteFork_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire                readRspSels_0;

  StreamArbiter cmdArbiter (
    .io_inputs_0_valid         (inputsCmd_0_valid                      ), //i
    .io_inputs_0_ready         (cmdArbiter_io_inputs_0_ready           ), //o
    .io_inputs_0_payload_addr  (inputsCmd_0_payload_addr[19:0]         ), //i
    .io_inputs_0_payload_id    (inputsCmd_0_payload_id[3:0]            ), //i
    .io_inputs_0_payload_len   (inputsCmd_0_payload_len[7:0]           ), //i
    .io_inputs_0_payload_size  (inputsCmd_0_payload_size[2:0]          ), //i
    .io_inputs_0_payload_burst (inputsCmd_0_payload_burst[1:0]         ), //i
    .io_inputs_0_payload_write (inputsCmd_0_payload_write              ), //i
    .io_output_valid           (cmdArbiter_io_output_valid             ), //o
    .io_output_ready           (cmdArbiter_io_output_ready             ), //i
    .io_output_payload_addr    (cmdArbiter_io_output_payload_addr[19:0]), //o
    .io_output_payload_id      (cmdArbiter_io_output_payload_id[3:0]   ), //o
    .io_output_payload_len     (cmdArbiter_io_output_payload_len[7:0]  ), //o
    .io_output_payload_size    (cmdArbiter_io_output_payload_size[2:0] ), //o
    .io_output_payload_burst   (cmdArbiter_io_output_payload_burst[1:0]), //o
    .io_output_payload_write   (cmdArbiter_io_output_payload_write     ), //o
    .io_chosenOH               (cmdArbiter_io_chosenOH                 ), //o
    .clk                       (clk                                    ), //i
    .reset_n                   (reset_n                                )  //i
  );
  StreamFifoLowLatency_4 cmdRouteFork_thrown_translated_fifo (
    .io_push_valid   (cmdRouteFork_thrown_translated_valid                    ), //i
    .io_push_ready   (cmdRouteFork_thrown_translated_fifo_io_push_ready       ), //o
    .io_pop_valid    (cmdRouteFork_thrown_translated_fifo_io_pop_valid        ), //o
    .io_pop_ready    (cmdRouteFork_thrown_translated_fifo_io_pop_ready        ), //i
    .io_flush        (1'b0                                                    ), //i
    .io_occupancy    (cmdRouteFork_thrown_translated_fifo_io_occupancy[2:0]   ), //o
    .io_availability (cmdRouteFork_thrown_translated_fifo_io_availability[2:0]), //o
    .clk             (clk                                                     ), //i
    .reset_n         (reset_n                                                 )  //i
  );
  assign inputsCmd_0_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_0_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_0_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_0_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_0_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_0_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  always @(*) begin
    cmdArbiter_io_output_ready = 1'b1;
    if(when_Stream_l1063) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
    if(when_Stream_l1063_1) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
  end

  assign when_Stream_l1063 = ((! cmdOutputFork_ready) && core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign when_Stream_l1063_1 = ((! cmdRouteFork_ready) && core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdOutputFork_valid = (cmdArbiter_io_output_valid && core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign cmdOutputFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdOutputFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdOutputFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdOutputFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdOutputFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdOutputFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdOutputFork_fire = (cmdOutputFork_valid && cmdOutputFork_ready);
  assign cmdRouteFork_valid = (cmdArbiter_io_output_valid && core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdRouteFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdRouteFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdRouteFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdRouteFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdRouteFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdRouteFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdRouteFork_fire = (cmdRouteFork_valid && cmdRouteFork_ready);
  assign io_output_arw_valid = cmdOutputFork_valid;
  assign cmdOutputFork_ready = io_output_arw_ready;
  assign io_output_arw_payload_addr = cmdOutputFork_payload_addr;
  assign io_output_arw_payload_len = cmdOutputFork_payload_len;
  assign io_output_arw_payload_size = cmdOutputFork_payload_size;
  assign io_output_arw_payload_burst = cmdOutputFork_payload_burst;
  assign io_output_arw_payload_write = cmdOutputFork_payload_write;
  assign io_output_arw_payload_id = (cmdOutputFork_payload_write ? cmdOutputFork_payload_id : cmdOutputFork_payload_id);
  assign when_Stream_l445 = (! cmdRouteFork_payload_write);
  always @(*) begin
    cmdRouteFork_thrown_valid = cmdRouteFork_valid;
    if(when_Stream_l445) begin
      cmdRouteFork_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdRouteFork_ready = cmdRouteFork_thrown_ready;
    if(when_Stream_l445) begin
      cmdRouteFork_ready = 1'b1;
    end
  end

  assign cmdRouteFork_thrown_payload_addr = cmdRouteFork_payload_addr;
  assign cmdRouteFork_thrown_payload_id = cmdRouteFork_payload_id;
  assign cmdRouteFork_thrown_payload_len = cmdRouteFork_payload_len;
  assign cmdRouteFork_thrown_payload_size = cmdRouteFork_payload_size;
  assign cmdRouteFork_thrown_payload_burst = cmdRouteFork_payload_burst;
  assign cmdRouteFork_thrown_payload_write = cmdRouteFork_payload_write;
  assign cmdRouteFork_thrown_translated_valid = cmdRouteFork_thrown_valid;
  assign cmdRouteFork_thrown_ready = cmdRouteFork_thrown_translated_ready;
  assign cmdRouteFork_thrown_translated_ready = cmdRouteFork_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdRouteFork_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdRouteFork_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdRouteFork_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id;
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspSels_0 = 1'b1;
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id;
  assign io_output_r_ready = io_sharedInputs_0_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
      core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
    end else begin
      if(cmdOutputFork_fire) begin
        core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b0;
      end
      if(cmdRouteFork_fire) begin
        core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b0;
      end
      if(cmdArbiter_io_output_ready) begin
        core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
        core_apbBridge_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedArbiter_3 (
  input  wire          io_readInputs_0_ar_valid,
  output wire          io_readInputs_0_ar_ready,
  input  wire [31:0]   io_readInputs_0_ar_payload_addr,
  input  wire [2:0]    io_readInputs_0_ar_payload_id,
  input  wire [3:0]    io_readInputs_0_ar_payload_region,
  input  wire [7:0]    io_readInputs_0_ar_payload_len,
  input  wire [2:0]    io_readInputs_0_ar_payload_size,
  input  wire [1:0]    io_readInputs_0_ar_payload_burst,
  input  wire [0:0]    io_readInputs_0_ar_payload_lock,
  input  wire [3:0]    io_readInputs_0_ar_payload_cache,
  input  wire [3:0]    io_readInputs_0_ar_payload_qos,
  input  wire [2:0]    io_readInputs_0_ar_payload_prot,
  output wire          io_readInputs_0_r_valid,
  input  wire          io_readInputs_0_r_ready,
  output wire [31:0]   io_readInputs_0_r_payload_data,
  output wire [2:0]    io_readInputs_0_r_payload_id,
  output wire [1:0]    io_readInputs_0_r_payload_resp,
  output wire          io_readInputs_0_r_payload_last,
  input  wire          io_sharedInputs_0_arw_valid,
  output wire          io_sharedInputs_0_arw_ready,
  input  wire [31:0]   io_sharedInputs_0_arw_payload_addr,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_id,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_region,
  input  wire [7:0]    io_sharedInputs_0_arw_payload_len,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_size,
  input  wire [1:0]    io_sharedInputs_0_arw_payload_burst,
  input  wire [0:0]    io_sharedInputs_0_arw_payload_lock,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_cache,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_qos,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_prot,
  input  wire          io_sharedInputs_0_arw_payload_write,
  input  wire          io_sharedInputs_0_w_valid,
  output wire          io_sharedInputs_0_w_ready,
  input  wire [31:0]   io_sharedInputs_0_w_payload_data,
  input  wire [3:0]    io_sharedInputs_0_w_payload_strb,
  input  wire          io_sharedInputs_0_w_payload_last,
  output wire          io_sharedInputs_0_b_valid,
  input  wire          io_sharedInputs_0_b_ready,
  output wire [2:0]    io_sharedInputs_0_b_payload_id,
  output wire [1:0]    io_sharedInputs_0_b_payload_resp,
  output wire          io_sharedInputs_0_r_valid,
  input  wire          io_sharedInputs_0_r_ready,
  output wire [31:0]   io_sharedInputs_0_r_payload_data,
  output wire [2:0]    io_sharedInputs_0_r_payload_id,
  output wire [1:0]    io_sharedInputs_0_r_payload_resp,
  output wire          io_sharedInputs_0_r_payload_last,
  output wire          io_output_arw_valid,
  input  wire          io_output_arw_ready,
  output wire [31:0]   io_output_arw_payload_addr,
  output wire [3:0]    io_output_arw_payload_id,
  output wire [3:0]    io_output_arw_payload_region,
  output wire [7:0]    io_output_arw_payload_len,
  output wire [2:0]    io_output_arw_payload_size,
  output wire [1:0]    io_output_arw_payload_burst,
  output wire [0:0]    io_output_arw_payload_lock,
  output wire [3:0]    io_output_arw_payload_cache,
  output wire [3:0]    io_output_arw_payload_qos,
  output wire [2:0]    io_output_arw_payload_prot,
  output wire          io_output_arw_payload_write,
  output wire          io_output_w_valid,
  input  wire          io_output_w_ready,
  output wire [31:0]   io_output_w_payload_data,
  output wire [3:0]    io_output_w_payload_strb,
  output wire          io_output_w_payload_last,
  input  wire          io_output_b_valid,
  output wire          io_output_b_ready,
  input  wire [3:0]    io_output_b_payload_id,
  input  wire [1:0]    io_output_b_payload_resp,
  input  wire          io_output_r_valid,
  output wire          io_output_r_ready,
  input  wire [31:0]   io_output_r_payload_data,
  input  wire [3:0]    io_output_r_payload_id,
  input  wire [1:0]    io_output_r_payload_resp,
  input  wire          io_output_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 cmdArbiter_io_output_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [31:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdRouteFork_thrown_translated_fifo_io_push_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_occupancy;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_availability;
  wire       [1:0]    _zz__zz_io_output_arw_payload_id;
  wire       [3:0]    _zz_io_output_arw_payload_id_1;
  wire       [2:0]    _zz_io_output_arw_payload_id_2;
  reg                 _zz_io_output_r_ready;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [31:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [3:0]    inputsCmd_0_payload_region;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire       [0:0]    inputsCmd_0_payload_lock;
  wire       [3:0]    inputsCmd_0_payload_cache;
  wire       [3:0]    inputsCmd_0_payload_qos;
  wire       [2:0]    inputsCmd_0_payload_prot;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [31:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [3:0]    inputsCmd_1_payload_region;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire       [0:0]    inputsCmd_1_payload_lock;
  wire       [3:0]    inputsCmd_1_payload_cache;
  wire       [3:0]    inputsCmd_1_payload_qos;
  wire       [2:0]    inputsCmd_1_payload_prot;
  wire                inputsCmd_1_payload_write;
  wire                cmdOutputFork_valid;
  wire                cmdOutputFork_ready;
  wire       [31:0]   cmdOutputFork_payload_addr;
  wire       [2:0]    cmdOutputFork_payload_id;
  wire       [3:0]    cmdOutputFork_payload_region;
  wire       [7:0]    cmdOutputFork_payload_len;
  wire       [2:0]    cmdOutputFork_payload_size;
  wire       [1:0]    cmdOutputFork_payload_burst;
  wire       [0:0]    cmdOutputFork_payload_lock;
  wire       [3:0]    cmdOutputFork_payload_cache;
  wire       [3:0]    cmdOutputFork_payload_qos;
  wire       [2:0]    cmdOutputFork_payload_prot;
  wire                cmdOutputFork_payload_write;
  wire                cmdRouteFork_valid;
  reg                 cmdRouteFork_ready;
  wire       [31:0]   cmdRouteFork_payload_addr;
  wire       [2:0]    cmdRouteFork_payload_id;
  wire       [3:0]    cmdRouteFork_payload_region;
  wire       [7:0]    cmdRouteFork_payload_len;
  wire       [2:0]    cmdRouteFork_payload_size;
  wire       [1:0]    cmdRouteFork_payload_burst;
  wire       [0:0]    cmdRouteFork_payload_lock;
  wire       [3:0]    cmdRouteFork_payload_cache;
  wire       [3:0]    cmdRouteFork_payload_qos;
  wire       [2:0]    cmdRouteFork_payload_prot;
  wire                cmdRouteFork_payload_write;
  reg                 core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0;
  reg                 core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1;
  wire                when_Stream_l1063;
  wire                when_Stream_l1063_1;
  wire                cmdOutputFork_fire;
  wire                cmdRouteFork_fire;
  wire                _zz_io_output_arw_payload_id;
  wire                when_Stream_l445;
  reg                 cmdRouteFork_thrown_valid;
  wire                cmdRouteFork_thrown_ready;
  wire       [31:0]   cmdRouteFork_thrown_payload_addr;
  wire       [2:0]    cmdRouteFork_thrown_payload_id;
  wire       [3:0]    cmdRouteFork_thrown_payload_region;
  wire       [7:0]    cmdRouteFork_thrown_payload_len;
  wire       [2:0]    cmdRouteFork_thrown_payload_size;
  wire       [1:0]    cmdRouteFork_thrown_payload_burst;
  wire       [0:0]    cmdRouteFork_thrown_payload_lock;
  wire       [3:0]    cmdRouteFork_thrown_payload_cache;
  wire       [3:0]    cmdRouteFork_thrown_payload_qos;
  wire       [2:0]    cmdRouteFork_thrown_payload_prot;
  wire                cmdRouteFork_thrown_payload_write;
  wire                cmdRouteFork_thrown_translated_valid;
  wire                cmdRouteFork_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz__zz_io_output_arw_payload_id = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_io_output_arw_payload_id_2 = cmdOutputFork_payload_id;
  assign _zz_io_output_arw_payload_id_1 = {1'd0, _zz_io_output_arw_payload_id_2};
  StreamArbiter_4 cmdArbiter (
    .io_inputs_0_valid          (inputsCmd_0_valid                       ), //i
    .io_inputs_0_ready          (cmdArbiter_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_addr   (inputsCmd_0_payload_addr[31:0]          ), //i
    .io_inputs_0_payload_id     (inputsCmd_0_payload_id[2:0]             ), //i
    .io_inputs_0_payload_region (inputsCmd_0_payload_region[3:0]         ), //i
    .io_inputs_0_payload_len    (inputsCmd_0_payload_len[7:0]            ), //i
    .io_inputs_0_payload_size   (inputsCmd_0_payload_size[2:0]           ), //i
    .io_inputs_0_payload_burst  (inputsCmd_0_payload_burst[1:0]          ), //i
    .io_inputs_0_payload_lock   (inputsCmd_0_payload_lock                ), //i
    .io_inputs_0_payload_cache  (inputsCmd_0_payload_cache[3:0]          ), //i
    .io_inputs_0_payload_qos    (inputsCmd_0_payload_qos[3:0]            ), //i
    .io_inputs_0_payload_prot   (inputsCmd_0_payload_prot[2:0]           ), //i
    .io_inputs_0_payload_write  (inputsCmd_0_payload_write               ), //i
    .io_inputs_1_valid          (inputsCmd_1_valid                       ), //i
    .io_inputs_1_ready          (cmdArbiter_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_addr   (inputsCmd_1_payload_addr[31:0]          ), //i
    .io_inputs_1_payload_id     (inputsCmd_1_payload_id[2:0]             ), //i
    .io_inputs_1_payload_region (inputsCmd_1_payload_region[3:0]         ), //i
    .io_inputs_1_payload_len    (inputsCmd_1_payload_len[7:0]            ), //i
    .io_inputs_1_payload_size   (inputsCmd_1_payload_size[2:0]           ), //i
    .io_inputs_1_payload_burst  (inputsCmd_1_payload_burst[1:0]          ), //i
    .io_inputs_1_payload_lock   (inputsCmd_1_payload_lock                ), //i
    .io_inputs_1_payload_cache  (inputsCmd_1_payload_cache[3:0]          ), //i
    .io_inputs_1_payload_qos    (inputsCmd_1_payload_qos[3:0]            ), //i
    .io_inputs_1_payload_prot   (inputsCmd_1_payload_prot[2:0]           ), //i
    .io_inputs_1_payload_write  (inputsCmd_1_payload_write               ), //i
    .io_output_valid            (cmdArbiter_io_output_valid              ), //o
    .io_output_ready            (cmdArbiter_io_output_ready              ), //i
    .io_output_payload_addr     (cmdArbiter_io_output_payload_addr[31:0] ), //o
    .io_output_payload_id       (cmdArbiter_io_output_payload_id[2:0]    ), //o
    .io_output_payload_region   (cmdArbiter_io_output_payload_region[3:0]), //o
    .io_output_payload_len      (cmdArbiter_io_output_payload_len[7:0]   ), //o
    .io_output_payload_size     (cmdArbiter_io_output_payload_size[2:0]  ), //o
    .io_output_payload_burst    (cmdArbiter_io_output_payload_burst[1:0] ), //o
    .io_output_payload_lock     (cmdArbiter_io_output_payload_lock       ), //o
    .io_output_payload_cache    (cmdArbiter_io_output_payload_cache[3:0] ), //o
    .io_output_payload_qos      (cmdArbiter_io_output_payload_qos[3:0]   ), //o
    .io_output_payload_prot     (cmdArbiter_io_output_payload_prot[2:0]  ), //o
    .io_output_payload_write    (cmdArbiter_io_output_payload_write      ), //o
    .io_chosen                  (cmdArbiter_io_chosen                    ), //o
    .io_chosenOH                (cmdArbiter_io_chosenOH[1:0]             ), //o
    .clk                        (clk                                     ), //i
    .reset_n                    (reset_n                                 )  //i
  );
  StreamFifoLowLatency_4 cmdRouteFork_thrown_translated_fifo (
    .io_push_valid   (cmdRouteFork_thrown_translated_valid                    ), //i
    .io_push_ready   (cmdRouteFork_thrown_translated_fifo_io_push_ready       ), //o
    .io_pop_valid    (cmdRouteFork_thrown_translated_fifo_io_pop_valid        ), //o
    .io_pop_ready    (cmdRouteFork_thrown_translated_fifo_io_pop_ready        ), //i
    .io_flush        (1'b0                                                    ), //i
    .io_occupancy    (cmdRouteFork_thrown_translated_fifo_io_occupancy[2:0]   ), //o
    .io_availability (cmdRouteFork_thrown_translated_fifo_io_availability[2:0]), //o
    .clk             (clk                                                     ), //i
    .reset_n         (reset_n                                                 )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : _zz_io_output_r_ready = io_readInputs_0_r_ready;
      default : _zz_io_output_r_ready = io_sharedInputs_0_r_ready;
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_region = io_readInputs_0_ar_payload_region;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_lock = io_readInputs_0_ar_payload_lock;
  assign inputsCmd_0_payload_cache = io_readInputs_0_ar_payload_cache;
  assign inputsCmd_0_payload_qos = io_readInputs_0_ar_payload_qos;
  assign inputsCmd_0_payload_prot = io_readInputs_0_ar_payload_prot;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_region = io_sharedInputs_0_arw_payload_region;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_lock = io_sharedInputs_0_arw_payload_lock;
  assign inputsCmd_1_payload_cache = io_sharedInputs_0_arw_payload_cache;
  assign inputsCmd_1_payload_qos = io_sharedInputs_0_arw_payload_qos;
  assign inputsCmd_1_payload_prot = io_sharedInputs_0_arw_payload_prot;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  always @(*) begin
    cmdArbiter_io_output_ready = 1'b1;
    if(when_Stream_l1063) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
    if(when_Stream_l1063_1) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
  end

  assign when_Stream_l1063 = ((! cmdOutputFork_ready) && core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign when_Stream_l1063_1 = ((! cmdRouteFork_ready) && core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdOutputFork_valid = (cmdArbiter_io_output_valid && core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign cmdOutputFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdOutputFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdOutputFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdOutputFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdOutputFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdOutputFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdOutputFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdOutputFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdOutputFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdOutputFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdOutputFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdOutputFork_fire = (cmdOutputFork_valid && cmdOutputFork_ready);
  assign cmdRouteFork_valid = (cmdArbiter_io_output_valid && core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdRouteFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdRouteFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdRouteFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdRouteFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdRouteFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdRouteFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdRouteFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdRouteFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdRouteFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdRouteFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdRouteFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdRouteFork_fire = (cmdRouteFork_valid && cmdRouteFork_ready);
  assign io_output_arw_valid = cmdOutputFork_valid;
  assign cmdOutputFork_ready = io_output_arw_ready;
  assign io_output_arw_payload_addr = cmdOutputFork_payload_addr;
  assign io_output_arw_payload_region = cmdOutputFork_payload_region;
  assign io_output_arw_payload_len = cmdOutputFork_payload_len;
  assign io_output_arw_payload_size = cmdOutputFork_payload_size;
  assign io_output_arw_payload_burst = cmdOutputFork_payload_burst;
  assign io_output_arw_payload_lock = cmdOutputFork_payload_lock;
  assign io_output_arw_payload_cache = cmdOutputFork_payload_cache;
  assign io_output_arw_payload_qos = cmdOutputFork_payload_qos;
  assign io_output_arw_payload_prot = cmdOutputFork_payload_prot;
  assign io_output_arw_payload_write = cmdOutputFork_payload_write;
  assign _zz_io_output_arw_payload_id = _zz__zz_io_output_arw_payload_id[1];
  assign io_output_arw_payload_id = (cmdOutputFork_payload_write ? _zz_io_output_arw_payload_id_1 : {_zz_io_output_arw_payload_id,cmdOutputFork_payload_id});
  assign when_Stream_l445 = (! cmdRouteFork_payload_write);
  always @(*) begin
    cmdRouteFork_thrown_valid = cmdRouteFork_valid;
    if(when_Stream_l445) begin
      cmdRouteFork_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdRouteFork_ready = cmdRouteFork_thrown_ready;
    if(when_Stream_l445) begin
      cmdRouteFork_ready = 1'b1;
    end
  end

  assign cmdRouteFork_thrown_payload_addr = cmdRouteFork_payload_addr;
  assign cmdRouteFork_thrown_payload_id = cmdRouteFork_payload_id;
  assign cmdRouteFork_thrown_payload_region = cmdRouteFork_payload_region;
  assign cmdRouteFork_thrown_payload_len = cmdRouteFork_payload_len;
  assign cmdRouteFork_thrown_payload_size = cmdRouteFork_payload_size;
  assign cmdRouteFork_thrown_payload_burst = cmdRouteFork_payload_burst;
  assign cmdRouteFork_thrown_payload_lock = cmdRouteFork_payload_lock;
  assign cmdRouteFork_thrown_payload_cache = cmdRouteFork_payload_cache;
  assign cmdRouteFork_thrown_payload_qos = cmdRouteFork_payload_qos;
  assign cmdRouteFork_thrown_payload_prot = cmdRouteFork_payload_prot;
  assign cmdRouteFork_thrown_payload_write = cmdRouteFork_payload_write;
  assign cmdRouteFork_thrown_translated_valid = cmdRouteFork_thrown_valid;
  assign cmdRouteFork_thrown_ready = cmdRouteFork_thrown_translated_ready;
  assign cmdRouteFork_thrown_translated_ready = cmdRouteFork_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdRouteFork_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdRouteFork_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdRouteFork_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_io_output_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
      core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
    end else begin
      if(cmdOutputFork_fire) begin
        core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b0;
      end
      if(cmdRouteFork_fire) begin
        core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b0;
      end
      if(cmdArbiter_io_output_ready) begin
        core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
        core_srams_3_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedArbiter_2 (
  input  wire          io_readInputs_0_ar_valid,
  output wire          io_readInputs_0_ar_ready,
  input  wire [31:0]   io_readInputs_0_ar_payload_addr,
  input  wire [2:0]    io_readInputs_0_ar_payload_id,
  input  wire [3:0]    io_readInputs_0_ar_payload_region,
  input  wire [7:0]    io_readInputs_0_ar_payload_len,
  input  wire [2:0]    io_readInputs_0_ar_payload_size,
  input  wire [1:0]    io_readInputs_0_ar_payload_burst,
  input  wire [0:0]    io_readInputs_0_ar_payload_lock,
  input  wire [3:0]    io_readInputs_0_ar_payload_cache,
  input  wire [3:0]    io_readInputs_0_ar_payload_qos,
  input  wire [2:0]    io_readInputs_0_ar_payload_prot,
  output wire          io_readInputs_0_r_valid,
  input  wire          io_readInputs_0_r_ready,
  output wire [31:0]   io_readInputs_0_r_payload_data,
  output wire [2:0]    io_readInputs_0_r_payload_id,
  output wire [1:0]    io_readInputs_0_r_payload_resp,
  output wire          io_readInputs_0_r_payload_last,
  input  wire          io_sharedInputs_0_arw_valid,
  output wire          io_sharedInputs_0_arw_ready,
  input  wire [31:0]   io_sharedInputs_0_arw_payload_addr,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_id,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_region,
  input  wire [7:0]    io_sharedInputs_0_arw_payload_len,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_size,
  input  wire [1:0]    io_sharedInputs_0_arw_payload_burst,
  input  wire [0:0]    io_sharedInputs_0_arw_payload_lock,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_cache,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_qos,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_prot,
  input  wire          io_sharedInputs_0_arw_payload_write,
  input  wire          io_sharedInputs_0_w_valid,
  output wire          io_sharedInputs_0_w_ready,
  input  wire [31:0]   io_sharedInputs_0_w_payload_data,
  input  wire [3:0]    io_sharedInputs_0_w_payload_strb,
  input  wire          io_sharedInputs_0_w_payload_last,
  output wire          io_sharedInputs_0_b_valid,
  input  wire          io_sharedInputs_0_b_ready,
  output wire [2:0]    io_sharedInputs_0_b_payload_id,
  output wire [1:0]    io_sharedInputs_0_b_payload_resp,
  output wire          io_sharedInputs_0_r_valid,
  input  wire          io_sharedInputs_0_r_ready,
  output wire [31:0]   io_sharedInputs_0_r_payload_data,
  output wire [2:0]    io_sharedInputs_0_r_payload_id,
  output wire [1:0]    io_sharedInputs_0_r_payload_resp,
  output wire          io_sharedInputs_0_r_payload_last,
  output wire          io_output_arw_valid,
  input  wire          io_output_arw_ready,
  output wire [31:0]   io_output_arw_payload_addr,
  output wire [3:0]    io_output_arw_payload_id,
  output wire [3:0]    io_output_arw_payload_region,
  output wire [7:0]    io_output_arw_payload_len,
  output wire [2:0]    io_output_arw_payload_size,
  output wire [1:0]    io_output_arw_payload_burst,
  output wire [0:0]    io_output_arw_payload_lock,
  output wire [3:0]    io_output_arw_payload_cache,
  output wire [3:0]    io_output_arw_payload_qos,
  output wire [2:0]    io_output_arw_payload_prot,
  output wire          io_output_arw_payload_write,
  output wire          io_output_w_valid,
  input  wire          io_output_w_ready,
  output wire [31:0]   io_output_w_payload_data,
  output wire [3:0]    io_output_w_payload_strb,
  output wire          io_output_w_payload_last,
  input  wire          io_output_b_valid,
  output wire          io_output_b_ready,
  input  wire [3:0]    io_output_b_payload_id,
  input  wire [1:0]    io_output_b_payload_resp,
  input  wire          io_output_r_valid,
  output wire          io_output_r_ready,
  input  wire [31:0]   io_output_r_payload_data,
  input  wire [3:0]    io_output_r_payload_id,
  input  wire [1:0]    io_output_r_payload_resp,
  input  wire          io_output_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 cmdArbiter_io_output_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [31:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdRouteFork_thrown_translated_fifo_io_push_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_occupancy;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_availability;
  wire       [1:0]    _zz__zz_io_output_arw_payload_id;
  wire       [3:0]    _zz_io_output_arw_payload_id_1;
  wire       [2:0]    _zz_io_output_arw_payload_id_2;
  reg                 _zz_io_output_r_ready;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [31:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [3:0]    inputsCmd_0_payload_region;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire       [0:0]    inputsCmd_0_payload_lock;
  wire       [3:0]    inputsCmd_0_payload_cache;
  wire       [3:0]    inputsCmd_0_payload_qos;
  wire       [2:0]    inputsCmd_0_payload_prot;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [31:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [3:0]    inputsCmd_1_payload_region;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire       [0:0]    inputsCmd_1_payload_lock;
  wire       [3:0]    inputsCmd_1_payload_cache;
  wire       [3:0]    inputsCmd_1_payload_qos;
  wire       [2:0]    inputsCmd_1_payload_prot;
  wire                inputsCmd_1_payload_write;
  wire                cmdOutputFork_valid;
  wire                cmdOutputFork_ready;
  wire       [31:0]   cmdOutputFork_payload_addr;
  wire       [2:0]    cmdOutputFork_payload_id;
  wire       [3:0]    cmdOutputFork_payload_region;
  wire       [7:0]    cmdOutputFork_payload_len;
  wire       [2:0]    cmdOutputFork_payload_size;
  wire       [1:0]    cmdOutputFork_payload_burst;
  wire       [0:0]    cmdOutputFork_payload_lock;
  wire       [3:0]    cmdOutputFork_payload_cache;
  wire       [3:0]    cmdOutputFork_payload_qos;
  wire       [2:0]    cmdOutputFork_payload_prot;
  wire                cmdOutputFork_payload_write;
  wire                cmdRouteFork_valid;
  reg                 cmdRouteFork_ready;
  wire       [31:0]   cmdRouteFork_payload_addr;
  wire       [2:0]    cmdRouteFork_payload_id;
  wire       [3:0]    cmdRouteFork_payload_region;
  wire       [7:0]    cmdRouteFork_payload_len;
  wire       [2:0]    cmdRouteFork_payload_size;
  wire       [1:0]    cmdRouteFork_payload_burst;
  wire       [0:0]    cmdRouteFork_payload_lock;
  wire       [3:0]    cmdRouteFork_payload_cache;
  wire       [3:0]    cmdRouteFork_payload_qos;
  wire       [2:0]    cmdRouteFork_payload_prot;
  wire                cmdRouteFork_payload_write;
  reg                 core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0;
  reg                 core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1;
  wire                when_Stream_l1063;
  wire                when_Stream_l1063_1;
  wire                cmdOutputFork_fire;
  wire                cmdRouteFork_fire;
  wire                _zz_io_output_arw_payload_id;
  wire                when_Stream_l445;
  reg                 cmdRouteFork_thrown_valid;
  wire                cmdRouteFork_thrown_ready;
  wire       [31:0]   cmdRouteFork_thrown_payload_addr;
  wire       [2:0]    cmdRouteFork_thrown_payload_id;
  wire       [3:0]    cmdRouteFork_thrown_payload_region;
  wire       [7:0]    cmdRouteFork_thrown_payload_len;
  wire       [2:0]    cmdRouteFork_thrown_payload_size;
  wire       [1:0]    cmdRouteFork_thrown_payload_burst;
  wire       [0:0]    cmdRouteFork_thrown_payload_lock;
  wire       [3:0]    cmdRouteFork_thrown_payload_cache;
  wire       [3:0]    cmdRouteFork_thrown_payload_qos;
  wire       [2:0]    cmdRouteFork_thrown_payload_prot;
  wire                cmdRouteFork_thrown_payload_write;
  wire                cmdRouteFork_thrown_translated_valid;
  wire                cmdRouteFork_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz__zz_io_output_arw_payload_id = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_io_output_arw_payload_id_2 = cmdOutputFork_payload_id;
  assign _zz_io_output_arw_payload_id_1 = {1'd0, _zz_io_output_arw_payload_id_2};
  StreamArbiter_4 cmdArbiter (
    .io_inputs_0_valid          (inputsCmd_0_valid                       ), //i
    .io_inputs_0_ready          (cmdArbiter_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_addr   (inputsCmd_0_payload_addr[31:0]          ), //i
    .io_inputs_0_payload_id     (inputsCmd_0_payload_id[2:0]             ), //i
    .io_inputs_0_payload_region (inputsCmd_0_payload_region[3:0]         ), //i
    .io_inputs_0_payload_len    (inputsCmd_0_payload_len[7:0]            ), //i
    .io_inputs_0_payload_size   (inputsCmd_0_payload_size[2:0]           ), //i
    .io_inputs_0_payload_burst  (inputsCmd_0_payload_burst[1:0]          ), //i
    .io_inputs_0_payload_lock   (inputsCmd_0_payload_lock                ), //i
    .io_inputs_0_payload_cache  (inputsCmd_0_payload_cache[3:0]          ), //i
    .io_inputs_0_payload_qos    (inputsCmd_0_payload_qos[3:0]            ), //i
    .io_inputs_0_payload_prot   (inputsCmd_0_payload_prot[2:0]           ), //i
    .io_inputs_0_payload_write  (inputsCmd_0_payload_write               ), //i
    .io_inputs_1_valid          (inputsCmd_1_valid                       ), //i
    .io_inputs_1_ready          (cmdArbiter_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_addr   (inputsCmd_1_payload_addr[31:0]          ), //i
    .io_inputs_1_payload_id     (inputsCmd_1_payload_id[2:0]             ), //i
    .io_inputs_1_payload_region (inputsCmd_1_payload_region[3:0]         ), //i
    .io_inputs_1_payload_len    (inputsCmd_1_payload_len[7:0]            ), //i
    .io_inputs_1_payload_size   (inputsCmd_1_payload_size[2:0]           ), //i
    .io_inputs_1_payload_burst  (inputsCmd_1_payload_burst[1:0]          ), //i
    .io_inputs_1_payload_lock   (inputsCmd_1_payload_lock                ), //i
    .io_inputs_1_payload_cache  (inputsCmd_1_payload_cache[3:0]          ), //i
    .io_inputs_1_payload_qos    (inputsCmd_1_payload_qos[3:0]            ), //i
    .io_inputs_1_payload_prot   (inputsCmd_1_payload_prot[2:0]           ), //i
    .io_inputs_1_payload_write  (inputsCmd_1_payload_write               ), //i
    .io_output_valid            (cmdArbiter_io_output_valid              ), //o
    .io_output_ready            (cmdArbiter_io_output_ready              ), //i
    .io_output_payload_addr     (cmdArbiter_io_output_payload_addr[31:0] ), //o
    .io_output_payload_id       (cmdArbiter_io_output_payload_id[2:0]    ), //o
    .io_output_payload_region   (cmdArbiter_io_output_payload_region[3:0]), //o
    .io_output_payload_len      (cmdArbiter_io_output_payload_len[7:0]   ), //o
    .io_output_payload_size     (cmdArbiter_io_output_payload_size[2:0]  ), //o
    .io_output_payload_burst    (cmdArbiter_io_output_payload_burst[1:0] ), //o
    .io_output_payload_lock     (cmdArbiter_io_output_payload_lock       ), //o
    .io_output_payload_cache    (cmdArbiter_io_output_payload_cache[3:0] ), //o
    .io_output_payload_qos      (cmdArbiter_io_output_payload_qos[3:0]   ), //o
    .io_output_payload_prot     (cmdArbiter_io_output_payload_prot[2:0]  ), //o
    .io_output_payload_write    (cmdArbiter_io_output_payload_write      ), //o
    .io_chosen                  (cmdArbiter_io_chosen                    ), //o
    .io_chosenOH                (cmdArbiter_io_chosenOH[1:0]             ), //o
    .clk                        (clk                                     ), //i
    .reset_n                    (reset_n                                 )  //i
  );
  StreamFifoLowLatency_4 cmdRouteFork_thrown_translated_fifo (
    .io_push_valid   (cmdRouteFork_thrown_translated_valid                    ), //i
    .io_push_ready   (cmdRouteFork_thrown_translated_fifo_io_push_ready       ), //o
    .io_pop_valid    (cmdRouteFork_thrown_translated_fifo_io_pop_valid        ), //o
    .io_pop_ready    (cmdRouteFork_thrown_translated_fifo_io_pop_ready        ), //i
    .io_flush        (1'b0                                                    ), //i
    .io_occupancy    (cmdRouteFork_thrown_translated_fifo_io_occupancy[2:0]   ), //o
    .io_availability (cmdRouteFork_thrown_translated_fifo_io_availability[2:0]), //o
    .clk             (clk                                                     ), //i
    .reset_n         (reset_n                                                 )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : _zz_io_output_r_ready = io_readInputs_0_r_ready;
      default : _zz_io_output_r_ready = io_sharedInputs_0_r_ready;
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_region = io_readInputs_0_ar_payload_region;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_lock = io_readInputs_0_ar_payload_lock;
  assign inputsCmd_0_payload_cache = io_readInputs_0_ar_payload_cache;
  assign inputsCmd_0_payload_qos = io_readInputs_0_ar_payload_qos;
  assign inputsCmd_0_payload_prot = io_readInputs_0_ar_payload_prot;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_region = io_sharedInputs_0_arw_payload_region;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_lock = io_sharedInputs_0_arw_payload_lock;
  assign inputsCmd_1_payload_cache = io_sharedInputs_0_arw_payload_cache;
  assign inputsCmd_1_payload_qos = io_sharedInputs_0_arw_payload_qos;
  assign inputsCmd_1_payload_prot = io_sharedInputs_0_arw_payload_prot;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  always @(*) begin
    cmdArbiter_io_output_ready = 1'b1;
    if(when_Stream_l1063) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
    if(when_Stream_l1063_1) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
  end

  assign when_Stream_l1063 = ((! cmdOutputFork_ready) && core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign when_Stream_l1063_1 = ((! cmdRouteFork_ready) && core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdOutputFork_valid = (cmdArbiter_io_output_valid && core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign cmdOutputFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdOutputFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdOutputFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdOutputFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdOutputFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdOutputFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdOutputFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdOutputFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdOutputFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdOutputFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdOutputFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdOutputFork_fire = (cmdOutputFork_valid && cmdOutputFork_ready);
  assign cmdRouteFork_valid = (cmdArbiter_io_output_valid && core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdRouteFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdRouteFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdRouteFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdRouteFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdRouteFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdRouteFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdRouteFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdRouteFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdRouteFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdRouteFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdRouteFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdRouteFork_fire = (cmdRouteFork_valid && cmdRouteFork_ready);
  assign io_output_arw_valid = cmdOutputFork_valid;
  assign cmdOutputFork_ready = io_output_arw_ready;
  assign io_output_arw_payload_addr = cmdOutputFork_payload_addr;
  assign io_output_arw_payload_region = cmdOutputFork_payload_region;
  assign io_output_arw_payload_len = cmdOutputFork_payload_len;
  assign io_output_arw_payload_size = cmdOutputFork_payload_size;
  assign io_output_arw_payload_burst = cmdOutputFork_payload_burst;
  assign io_output_arw_payload_lock = cmdOutputFork_payload_lock;
  assign io_output_arw_payload_cache = cmdOutputFork_payload_cache;
  assign io_output_arw_payload_qos = cmdOutputFork_payload_qos;
  assign io_output_arw_payload_prot = cmdOutputFork_payload_prot;
  assign io_output_arw_payload_write = cmdOutputFork_payload_write;
  assign _zz_io_output_arw_payload_id = _zz__zz_io_output_arw_payload_id[1];
  assign io_output_arw_payload_id = (cmdOutputFork_payload_write ? _zz_io_output_arw_payload_id_1 : {_zz_io_output_arw_payload_id,cmdOutputFork_payload_id});
  assign when_Stream_l445 = (! cmdRouteFork_payload_write);
  always @(*) begin
    cmdRouteFork_thrown_valid = cmdRouteFork_valid;
    if(when_Stream_l445) begin
      cmdRouteFork_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdRouteFork_ready = cmdRouteFork_thrown_ready;
    if(when_Stream_l445) begin
      cmdRouteFork_ready = 1'b1;
    end
  end

  assign cmdRouteFork_thrown_payload_addr = cmdRouteFork_payload_addr;
  assign cmdRouteFork_thrown_payload_id = cmdRouteFork_payload_id;
  assign cmdRouteFork_thrown_payload_region = cmdRouteFork_payload_region;
  assign cmdRouteFork_thrown_payload_len = cmdRouteFork_payload_len;
  assign cmdRouteFork_thrown_payload_size = cmdRouteFork_payload_size;
  assign cmdRouteFork_thrown_payload_burst = cmdRouteFork_payload_burst;
  assign cmdRouteFork_thrown_payload_lock = cmdRouteFork_payload_lock;
  assign cmdRouteFork_thrown_payload_cache = cmdRouteFork_payload_cache;
  assign cmdRouteFork_thrown_payload_qos = cmdRouteFork_payload_qos;
  assign cmdRouteFork_thrown_payload_prot = cmdRouteFork_payload_prot;
  assign cmdRouteFork_thrown_payload_write = cmdRouteFork_payload_write;
  assign cmdRouteFork_thrown_translated_valid = cmdRouteFork_thrown_valid;
  assign cmdRouteFork_thrown_ready = cmdRouteFork_thrown_translated_ready;
  assign cmdRouteFork_thrown_translated_ready = cmdRouteFork_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdRouteFork_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdRouteFork_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdRouteFork_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_io_output_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
      core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
    end else begin
      if(cmdOutputFork_fire) begin
        core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b0;
      end
      if(cmdRouteFork_fire) begin
        core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b0;
      end
      if(cmdArbiter_io_output_ready) begin
        core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
        core_srams_2_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedArbiter_1 (
  input  wire          io_readInputs_0_ar_valid,
  output wire          io_readInputs_0_ar_ready,
  input  wire [31:0]   io_readInputs_0_ar_payload_addr,
  input  wire [2:0]    io_readInputs_0_ar_payload_id,
  input  wire [3:0]    io_readInputs_0_ar_payload_region,
  input  wire [7:0]    io_readInputs_0_ar_payload_len,
  input  wire [2:0]    io_readInputs_0_ar_payload_size,
  input  wire [1:0]    io_readInputs_0_ar_payload_burst,
  input  wire [0:0]    io_readInputs_0_ar_payload_lock,
  input  wire [3:0]    io_readInputs_0_ar_payload_cache,
  input  wire [3:0]    io_readInputs_0_ar_payload_qos,
  input  wire [2:0]    io_readInputs_0_ar_payload_prot,
  output wire          io_readInputs_0_r_valid,
  input  wire          io_readInputs_0_r_ready,
  output wire [31:0]   io_readInputs_0_r_payload_data,
  output wire [2:0]    io_readInputs_0_r_payload_id,
  output wire [1:0]    io_readInputs_0_r_payload_resp,
  output wire          io_readInputs_0_r_payload_last,
  input  wire          io_sharedInputs_0_arw_valid,
  output wire          io_sharedInputs_0_arw_ready,
  input  wire [31:0]   io_sharedInputs_0_arw_payload_addr,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_id,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_region,
  input  wire [7:0]    io_sharedInputs_0_arw_payload_len,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_size,
  input  wire [1:0]    io_sharedInputs_0_arw_payload_burst,
  input  wire [0:0]    io_sharedInputs_0_arw_payload_lock,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_cache,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_qos,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_prot,
  input  wire          io_sharedInputs_0_arw_payload_write,
  input  wire          io_sharedInputs_0_w_valid,
  output wire          io_sharedInputs_0_w_ready,
  input  wire [31:0]   io_sharedInputs_0_w_payload_data,
  input  wire [3:0]    io_sharedInputs_0_w_payload_strb,
  input  wire          io_sharedInputs_0_w_payload_last,
  output wire          io_sharedInputs_0_b_valid,
  input  wire          io_sharedInputs_0_b_ready,
  output wire [2:0]    io_sharedInputs_0_b_payload_id,
  output wire [1:0]    io_sharedInputs_0_b_payload_resp,
  output wire          io_sharedInputs_0_r_valid,
  input  wire          io_sharedInputs_0_r_ready,
  output wire [31:0]   io_sharedInputs_0_r_payload_data,
  output wire [2:0]    io_sharedInputs_0_r_payload_id,
  output wire [1:0]    io_sharedInputs_0_r_payload_resp,
  output wire          io_sharedInputs_0_r_payload_last,
  output wire          io_output_arw_valid,
  input  wire          io_output_arw_ready,
  output wire [31:0]   io_output_arw_payload_addr,
  output wire [3:0]    io_output_arw_payload_id,
  output wire [3:0]    io_output_arw_payload_region,
  output wire [7:0]    io_output_arw_payload_len,
  output wire [2:0]    io_output_arw_payload_size,
  output wire [1:0]    io_output_arw_payload_burst,
  output wire [0:0]    io_output_arw_payload_lock,
  output wire [3:0]    io_output_arw_payload_cache,
  output wire [3:0]    io_output_arw_payload_qos,
  output wire [2:0]    io_output_arw_payload_prot,
  output wire          io_output_arw_payload_write,
  output wire          io_output_w_valid,
  input  wire          io_output_w_ready,
  output wire [31:0]   io_output_w_payload_data,
  output wire [3:0]    io_output_w_payload_strb,
  output wire          io_output_w_payload_last,
  input  wire          io_output_b_valid,
  output wire          io_output_b_ready,
  input  wire [3:0]    io_output_b_payload_id,
  input  wire [1:0]    io_output_b_payload_resp,
  input  wire          io_output_r_valid,
  output wire          io_output_r_ready,
  input  wire [31:0]   io_output_r_payload_data,
  input  wire [3:0]    io_output_r_payload_id,
  input  wire [1:0]    io_output_r_payload_resp,
  input  wire          io_output_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 cmdArbiter_io_output_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [31:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdRouteFork_thrown_translated_fifo_io_push_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_occupancy;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_availability;
  wire       [1:0]    _zz__zz_io_output_arw_payload_id;
  wire       [3:0]    _zz_io_output_arw_payload_id_1;
  wire       [2:0]    _zz_io_output_arw_payload_id_2;
  reg                 _zz_io_output_r_ready;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [31:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [3:0]    inputsCmd_0_payload_region;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire       [0:0]    inputsCmd_0_payload_lock;
  wire       [3:0]    inputsCmd_0_payload_cache;
  wire       [3:0]    inputsCmd_0_payload_qos;
  wire       [2:0]    inputsCmd_0_payload_prot;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [31:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [3:0]    inputsCmd_1_payload_region;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire       [0:0]    inputsCmd_1_payload_lock;
  wire       [3:0]    inputsCmd_1_payload_cache;
  wire       [3:0]    inputsCmd_1_payload_qos;
  wire       [2:0]    inputsCmd_1_payload_prot;
  wire                inputsCmd_1_payload_write;
  wire                cmdOutputFork_valid;
  wire                cmdOutputFork_ready;
  wire       [31:0]   cmdOutputFork_payload_addr;
  wire       [2:0]    cmdOutputFork_payload_id;
  wire       [3:0]    cmdOutputFork_payload_region;
  wire       [7:0]    cmdOutputFork_payload_len;
  wire       [2:0]    cmdOutputFork_payload_size;
  wire       [1:0]    cmdOutputFork_payload_burst;
  wire       [0:0]    cmdOutputFork_payload_lock;
  wire       [3:0]    cmdOutputFork_payload_cache;
  wire       [3:0]    cmdOutputFork_payload_qos;
  wire       [2:0]    cmdOutputFork_payload_prot;
  wire                cmdOutputFork_payload_write;
  wire                cmdRouteFork_valid;
  reg                 cmdRouteFork_ready;
  wire       [31:0]   cmdRouteFork_payload_addr;
  wire       [2:0]    cmdRouteFork_payload_id;
  wire       [3:0]    cmdRouteFork_payload_region;
  wire       [7:0]    cmdRouteFork_payload_len;
  wire       [2:0]    cmdRouteFork_payload_size;
  wire       [1:0]    cmdRouteFork_payload_burst;
  wire       [0:0]    cmdRouteFork_payload_lock;
  wire       [3:0]    cmdRouteFork_payload_cache;
  wire       [3:0]    cmdRouteFork_payload_qos;
  wire       [2:0]    cmdRouteFork_payload_prot;
  wire                cmdRouteFork_payload_write;
  reg                 core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0;
  reg                 core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1;
  wire                when_Stream_l1063;
  wire                when_Stream_l1063_1;
  wire                cmdOutputFork_fire;
  wire                cmdRouteFork_fire;
  wire                _zz_io_output_arw_payload_id;
  wire                when_Stream_l445;
  reg                 cmdRouteFork_thrown_valid;
  wire                cmdRouteFork_thrown_ready;
  wire       [31:0]   cmdRouteFork_thrown_payload_addr;
  wire       [2:0]    cmdRouteFork_thrown_payload_id;
  wire       [3:0]    cmdRouteFork_thrown_payload_region;
  wire       [7:0]    cmdRouteFork_thrown_payload_len;
  wire       [2:0]    cmdRouteFork_thrown_payload_size;
  wire       [1:0]    cmdRouteFork_thrown_payload_burst;
  wire       [0:0]    cmdRouteFork_thrown_payload_lock;
  wire       [3:0]    cmdRouteFork_thrown_payload_cache;
  wire       [3:0]    cmdRouteFork_thrown_payload_qos;
  wire       [2:0]    cmdRouteFork_thrown_payload_prot;
  wire                cmdRouteFork_thrown_payload_write;
  wire                cmdRouteFork_thrown_translated_valid;
  wire                cmdRouteFork_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz__zz_io_output_arw_payload_id = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_io_output_arw_payload_id_2 = cmdOutputFork_payload_id;
  assign _zz_io_output_arw_payload_id_1 = {1'd0, _zz_io_output_arw_payload_id_2};
  StreamArbiter_4 cmdArbiter (
    .io_inputs_0_valid          (inputsCmd_0_valid                       ), //i
    .io_inputs_0_ready          (cmdArbiter_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_addr   (inputsCmd_0_payload_addr[31:0]          ), //i
    .io_inputs_0_payload_id     (inputsCmd_0_payload_id[2:0]             ), //i
    .io_inputs_0_payload_region (inputsCmd_0_payload_region[3:0]         ), //i
    .io_inputs_0_payload_len    (inputsCmd_0_payload_len[7:0]            ), //i
    .io_inputs_0_payload_size   (inputsCmd_0_payload_size[2:0]           ), //i
    .io_inputs_0_payload_burst  (inputsCmd_0_payload_burst[1:0]          ), //i
    .io_inputs_0_payload_lock   (inputsCmd_0_payload_lock                ), //i
    .io_inputs_0_payload_cache  (inputsCmd_0_payload_cache[3:0]          ), //i
    .io_inputs_0_payload_qos    (inputsCmd_0_payload_qos[3:0]            ), //i
    .io_inputs_0_payload_prot   (inputsCmd_0_payload_prot[2:0]           ), //i
    .io_inputs_0_payload_write  (inputsCmd_0_payload_write               ), //i
    .io_inputs_1_valid          (inputsCmd_1_valid                       ), //i
    .io_inputs_1_ready          (cmdArbiter_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_addr   (inputsCmd_1_payload_addr[31:0]          ), //i
    .io_inputs_1_payload_id     (inputsCmd_1_payload_id[2:0]             ), //i
    .io_inputs_1_payload_region (inputsCmd_1_payload_region[3:0]         ), //i
    .io_inputs_1_payload_len    (inputsCmd_1_payload_len[7:0]            ), //i
    .io_inputs_1_payload_size   (inputsCmd_1_payload_size[2:0]           ), //i
    .io_inputs_1_payload_burst  (inputsCmd_1_payload_burst[1:0]          ), //i
    .io_inputs_1_payload_lock   (inputsCmd_1_payload_lock                ), //i
    .io_inputs_1_payload_cache  (inputsCmd_1_payload_cache[3:0]          ), //i
    .io_inputs_1_payload_qos    (inputsCmd_1_payload_qos[3:0]            ), //i
    .io_inputs_1_payload_prot   (inputsCmd_1_payload_prot[2:0]           ), //i
    .io_inputs_1_payload_write  (inputsCmd_1_payload_write               ), //i
    .io_output_valid            (cmdArbiter_io_output_valid              ), //o
    .io_output_ready            (cmdArbiter_io_output_ready              ), //i
    .io_output_payload_addr     (cmdArbiter_io_output_payload_addr[31:0] ), //o
    .io_output_payload_id       (cmdArbiter_io_output_payload_id[2:0]    ), //o
    .io_output_payload_region   (cmdArbiter_io_output_payload_region[3:0]), //o
    .io_output_payload_len      (cmdArbiter_io_output_payload_len[7:0]   ), //o
    .io_output_payload_size     (cmdArbiter_io_output_payload_size[2:0]  ), //o
    .io_output_payload_burst    (cmdArbiter_io_output_payload_burst[1:0] ), //o
    .io_output_payload_lock     (cmdArbiter_io_output_payload_lock       ), //o
    .io_output_payload_cache    (cmdArbiter_io_output_payload_cache[3:0] ), //o
    .io_output_payload_qos      (cmdArbiter_io_output_payload_qos[3:0]   ), //o
    .io_output_payload_prot     (cmdArbiter_io_output_payload_prot[2:0]  ), //o
    .io_output_payload_write    (cmdArbiter_io_output_payload_write      ), //o
    .io_chosen                  (cmdArbiter_io_chosen                    ), //o
    .io_chosenOH                (cmdArbiter_io_chosenOH[1:0]             ), //o
    .clk                        (clk                                     ), //i
    .reset_n                    (reset_n                                 )  //i
  );
  StreamFifoLowLatency_4 cmdRouteFork_thrown_translated_fifo (
    .io_push_valid   (cmdRouteFork_thrown_translated_valid                    ), //i
    .io_push_ready   (cmdRouteFork_thrown_translated_fifo_io_push_ready       ), //o
    .io_pop_valid    (cmdRouteFork_thrown_translated_fifo_io_pop_valid        ), //o
    .io_pop_ready    (cmdRouteFork_thrown_translated_fifo_io_pop_ready        ), //i
    .io_flush        (1'b0                                                    ), //i
    .io_occupancy    (cmdRouteFork_thrown_translated_fifo_io_occupancy[2:0]   ), //o
    .io_availability (cmdRouteFork_thrown_translated_fifo_io_availability[2:0]), //o
    .clk             (clk                                                     ), //i
    .reset_n         (reset_n                                                 )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : _zz_io_output_r_ready = io_readInputs_0_r_ready;
      default : _zz_io_output_r_ready = io_sharedInputs_0_r_ready;
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_region = io_readInputs_0_ar_payload_region;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_lock = io_readInputs_0_ar_payload_lock;
  assign inputsCmd_0_payload_cache = io_readInputs_0_ar_payload_cache;
  assign inputsCmd_0_payload_qos = io_readInputs_0_ar_payload_qos;
  assign inputsCmd_0_payload_prot = io_readInputs_0_ar_payload_prot;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_region = io_sharedInputs_0_arw_payload_region;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_lock = io_sharedInputs_0_arw_payload_lock;
  assign inputsCmd_1_payload_cache = io_sharedInputs_0_arw_payload_cache;
  assign inputsCmd_1_payload_qos = io_sharedInputs_0_arw_payload_qos;
  assign inputsCmd_1_payload_prot = io_sharedInputs_0_arw_payload_prot;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  always @(*) begin
    cmdArbiter_io_output_ready = 1'b1;
    if(when_Stream_l1063) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
    if(when_Stream_l1063_1) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
  end

  assign when_Stream_l1063 = ((! cmdOutputFork_ready) && core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign when_Stream_l1063_1 = ((! cmdRouteFork_ready) && core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdOutputFork_valid = (cmdArbiter_io_output_valid && core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign cmdOutputFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdOutputFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdOutputFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdOutputFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdOutputFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdOutputFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdOutputFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdOutputFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdOutputFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdOutputFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdOutputFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdOutputFork_fire = (cmdOutputFork_valid && cmdOutputFork_ready);
  assign cmdRouteFork_valid = (cmdArbiter_io_output_valid && core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdRouteFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdRouteFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdRouteFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdRouteFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdRouteFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdRouteFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdRouteFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdRouteFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdRouteFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdRouteFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdRouteFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdRouteFork_fire = (cmdRouteFork_valid && cmdRouteFork_ready);
  assign io_output_arw_valid = cmdOutputFork_valid;
  assign cmdOutputFork_ready = io_output_arw_ready;
  assign io_output_arw_payload_addr = cmdOutputFork_payload_addr;
  assign io_output_arw_payload_region = cmdOutputFork_payload_region;
  assign io_output_arw_payload_len = cmdOutputFork_payload_len;
  assign io_output_arw_payload_size = cmdOutputFork_payload_size;
  assign io_output_arw_payload_burst = cmdOutputFork_payload_burst;
  assign io_output_arw_payload_lock = cmdOutputFork_payload_lock;
  assign io_output_arw_payload_cache = cmdOutputFork_payload_cache;
  assign io_output_arw_payload_qos = cmdOutputFork_payload_qos;
  assign io_output_arw_payload_prot = cmdOutputFork_payload_prot;
  assign io_output_arw_payload_write = cmdOutputFork_payload_write;
  assign _zz_io_output_arw_payload_id = _zz__zz_io_output_arw_payload_id[1];
  assign io_output_arw_payload_id = (cmdOutputFork_payload_write ? _zz_io_output_arw_payload_id_1 : {_zz_io_output_arw_payload_id,cmdOutputFork_payload_id});
  assign when_Stream_l445 = (! cmdRouteFork_payload_write);
  always @(*) begin
    cmdRouteFork_thrown_valid = cmdRouteFork_valid;
    if(when_Stream_l445) begin
      cmdRouteFork_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdRouteFork_ready = cmdRouteFork_thrown_ready;
    if(when_Stream_l445) begin
      cmdRouteFork_ready = 1'b1;
    end
  end

  assign cmdRouteFork_thrown_payload_addr = cmdRouteFork_payload_addr;
  assign cmdRouteFork_thrown_payload_id = cmdRouteFork_payload_id;
  assign cmdRouteFork_thrown_payload_region = cmdRouteFork_payload_region;
  assign cmdRouteFork_thrown_payload_len = cmdRouteFork_payload_len;
  assign cmdRouteFork_thrown_payload_size = cmdRouteFork_payload_size;
  assign cmdRouteFork_thrown_payload_burst = cmdRouteFork_payload_burst;
  assign cmdRouteFork_thrown_payload_lock = cmdRouteFork_payload_lock;
  assign cmdRouteFork_thrown_payload_cache = cmdRouteFork_payload_cache;
  assign cmdRouteFork_thrown_payload_qos = cmdRouteFork_payload_qos;
  assign cmdRouteFork_thrown_payload_prot = cmdRouteFork_payload_prot;
  assign cmdRouteFork_thrown_payload_write = cmdRouteFork_payload_write;
  assign cmdRouteFork_thrown_translated_valid = cmdRouteFork_thrown_valid;
  assign cmdRouteFork_thrown_ready = cmdRouteFork_thrown_translated_ready;
  assign cmdRouteFork_thrown_translated_ready = cmdRouteFork_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdRouteFork_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdRouteFork_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdRouteFork_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_io_output_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
      core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
    end else begin
      if(cmdOutputFork_fire) begin
        core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b0;
      end
      if(cmdRouteFork_fire) begin
        core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b0;
      end
      if(cmdArbiter_io_output_ready) begin
        core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
        core_srams_1_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedArbiter (
  input  wire          io_readInputs_0_ar_valid,
  output wire          io_readInputs_0_ar_ready,
  input  wire [31:0]   io_readInputs_0_ar_payload_addr,
  input  wire [2:0]    io_readInputs_0_ar_payload_id,
  input  wire [3:0]    io_readInputs_0_ar_payload_region,
  input  wire [7:0]    io_readInputs_0_ar_payload_len,
  input  wire [2:0]    io_readInputs_0_ar_payload_size,
  input  wire [1:0]    io_readInputs_0_ar_payload_burst,
  input  wire [0:0]    io_readInputs_0_ar_payload_lock,
  input  wire [3:0]    io_readInputs_0_ar_payload_cache,
  input  wire [3:0]    io_readInputs_0_ar_payload_qos,
  input  wire [2:0]    io_readInputs_0_ar_payload_prot,
  output wire          io_readInputs_0_r_valid,
  input  wire          io_readInputs_0_r_ready,
  output wire [31:0]   io_readInputs_0_r_payload_data,
  output wire [2:0]    io_readInputs_0_r_payload_id,
  output wire [1:0]    io_readInputs_0_r_payload_resp,
  output wire          io_readInputs_0_r_payload_last,
  input  wire          io_sharedInputs_0_arw_valid,
  output wire          io_sharedInputs_0_arw_ready,
  input  wire [31:0]   io_sharedInputs_0_arw_payload_addr,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_id,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_region,
  input  wire [7:0]    io_sharedInputs_0_arw_payload_len,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_size,
  input  wire [1:0]    io_sharedInputs_0_arw_payload_burst,
  input  wire [0:0]    io_sharedInputs_0_arw_payload_lock,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_cache,
  input  wire [3:0]    io_sharedInputs_0_arw_payload_qos,
  input  wire [2:0]    io_sharedInputs_0_arw_payload_prot,
  input  wire          io_sharedInputs_0_arw_payload_write,
  input  wire          io_sharedInputs_0_w_valid,
  output wire          io_sharedInputs_0_w_ready,
  input  wire [31:0]   io_sharedInputs_0_w_payload_data,
  input  wire [3:0]    io_sharedInputs_0_w_payload_strb,
  input  wire          io_sharedInputs_0_w_payload_last,
  output wire          io_sharedInputs_0_b_valid,
  input  wire          io_sharedInputs_0_b_ready,
  output wire [2:0]    io_sharedInputs_0_b_payload_id,
  output wire [1:0]    io_sharedInputs_0_b_payload_resp,
  output wire          io_sharedInputs_0_r_valid,
  input  wire          io_sharedInputs_0_r_ready,
  output wire [31:0]   io_sharedInputs_0_r_payload_data,
  output wire [2:0]    io_sharedInputs_0_r_payload_id,
  output wire [1:0]    io_sharedInputs_0_r_payload_resp,
  output wire          io_sharedInputs_0_r_payload_last,
  output wire          io_output_arw_valid,
  input  wire          io_output_arw_ready,
  output wire [31:0]   io_output_arw_payload_addr,
  output wire [3:0]    io_output_arw_payload_id,
  output wire [3:0]    io_output_arw_payload_region,
  output wire [7:0]    io_output_arw_payload_len,
  output wire [2:0]    io_output_arw_payload_size,
  output wire [1:0]    io_output_arw_payload_burst,
  output wire [0:0]    io_output_arw_payload_lock,
  output wire [3:0]    io_output_arw_payload_cache,
  output wire [3:0]    io_output_arw_payload_qos,
  output wire [2:0]    io_output_arw_payload_prot,
  output wire          io_output_arw_payload_write,
  output wire          io_output_w_valid,
  input  wire          io_output_w_ready,
  output wire [31:0]   io_output_w_payload_data,
  output wire [3:0]    io_output_w_payload_strb,
  output wire          io_output_w_payload_last,
  input  wire          io_output_b_valid,
  output wire          io_output_b_ready,
  input  wire [3:0]    io_output_b_payload_id,
  input  wire [1:0]    io_output_b_payload_resp,
  input  wire          io_output_r_valid,
  output wire          io_output_r_ready,
  input  wire [31:0]   io_output_r_payload_data,
  input  wire [3:0]    io_output_r_payload_id,
  input  wire [1:0]    io_output_r_payload_resp,
  input  wire          io_output_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 cmdArbiter_io_output_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_ready;
  wire                cmdArbiter_io_inputs_0_ready;
  wire                cmdArbiter_io_inputs_1_ready;
  wire                cmdArbiter_io_output_valid;
  wire       [31:0]   cmdArbiter_io_output_payload_addr;
  wire       [2:0]    cmdArbiter_io_output_payload_id;
  wire       [3:0]    cmdArbiter_io_output_payload_region;
  wire       [7:0]    cmdArbiter_io_output_payload_len;
  wire       [2:0]    cmdArbiter_io_output_payload_size;
  wire       [1:0]    cmdArbiter_io_output_payload_burst;
  wire       [0:0]    cmdArbiter_io_output_payload_lock;
  wire       [3:0]    cmdArbiter_io_output_payload_cache;
  wire       [3:0]    cmdArbiter_io_output_payload_qos;
  wire       [2:0]    cmdArbiter_io_output_payload_prot;
  wire                cmdArbiter_io_output_payload_write;
  wire       [0:0]    cmdArbiter_io_chosen;
  wire       [1:0]    cmdArbiter_io_chosenOH;
  wire                cmdRouteFork_thrown_translated_fifo_io_push_ready;
  wire                cmdRouteFork_thrown_translated_fifo_io_pop_valid;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_occupancy;
  wire       [2:0]    cmdRouteFork_thrown_translated_fifo_io_availability;
  wire       [1:0]    _zz__zz_io_output_arw_payload_id;
  wire       [3:0]    _zz_io_output_arw_payload_id_1;
  wire       [2:0]    _zz_io_output_arw_payload_id_2;
  reg                 _zz_io_output_r_ready;
  wire                inputsCmd_0_valid;
  wire                inputsCmd_0_ready;
  wire       [31:0]   inputsCmd_0_payload_addr;
  wire       [2:0]    inputsCmd_0_payload_id;
  wire       [3:0]    inputsCmd_0_payload_region;
  wire       [7:0]    inputsCmd_0_payload_len;
  wire       [2:0]    inputsCmd_0_payload_size;
  wire       [1:0]    inputsCmd_0_payload_burst;
  wire       [0:0]    inputsCmd_0_payload_lock;
  wire       [3:0]    inputsCmd_0_payload_cache;
  wire       [3:0]    inputsCmd_0_payload_qos;
  wire       [2:0]    inputsCmd_0_payload_prot;
  wire                inputsCmd_0_payload_write;
  wire                inputsCmd_1_valid;
  wire                inputsCmd_1_ready;
  wire       [31:0]   inputsCmd_1_payload_addr;
  wire       [2:0]    inputsCmd_1_payload_id;
  wire       [3:0]    inputsCmd_1_payload_region;
  wire       [7:0]    inputsCmd_1_payload_len;
  wire       [2:0]    inputsCmd_1_payload_size;
  wire       [1:0]    inputsCmd_1_payload_burst;
  wire       [0:0]    inputsCmd_1_payload_lock;
  wire       [3:0]    inputsCmd_1_payload_cache;
  wire       [3:0]    inputsCmd_1_payload_qos;
  wire       [2:0]    inputsCmd_1_payload_prot;
  wire                inputsCmd_1_payload_write;
  wire                cmdOutputFork_valid;
  wire                cmdOutputFork_ready;
  wire       [31:0]   cmdOutputFork_payload_addr;
  wire       [2:0]    cmdOutputFork_payload_id;
  wire       [3:0]    cmdOutputFork_payload_region;
  wire       [7:0]    cmdOutputFork_payload_len;
  wire       [2:0]    cmdOutputFork_payload_size;
  wire       [1:0]    cmdOutputFork_payload_burst;
  wire       [0:0]    cmdOutputFork_payload_lock;
  wire       [3:0]    cmdOutputFork_payload_cache;
  wire       [3:0]    cmdOutputFork_payload_qos;
  wire       [2:0]    cmdOutputFork_payload_prot;
  wire                cmdOutputFork_payload_write;
  wire                cmdRouteFork_valid;
  reg                 cmdRouteFork_ready;
  wire       [31:0]   cmdRouteFork_payload_addr;
  wire       [2:0]    cmdRouteFork_payload_id;
  wire       [3:0]    cmdRouteFork_payload_region;
  wire       [7:0]    cmdRouteFork_payload_len;
  wire       [2:0]    cmdRouteFork_payload_size;
  wire       [1:0]    cmdRouteFork_payload_burst;
  wire       [0:0]    cmdRouteFork_payload_lock;
  wire       [3:0]    cmdRouteFork_payload_cache;
  wire       [3:0]    cmdRouteFork_payload_qos;
  wire       [2:0]    cmdRouteFork_payload_prot;
  wire                cmdRouteFork_payload_write;
  reg                 core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0;
  reg                 core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1;
  wire                when_Stream_l1063;
  wire                when_Stream_l1063_1;
  wire                cmdOutputFork_fire;
  wire                cmdRouteFork_fire;
  wire                _zz_io_output_arw_payload_id;
  wire                when_Stream_l445;
  reg                 cmdRouteFork_thrown_valid;
  wire                cmdRouteFork_thrown_ready;
  wire       [31:0]   cmdRouteFork_thrown_payload_addr;
  wire       [2:0]    cmdRouteFork_thrown_payload_id;
  wire       [3:0]    cmdRouteFork_thrown_payload_region;
  wire       [7:0]    cmdRouteFork_thrown_payload_len;
  wire       [2:0]    cmdRouteFork_thrown_payload_size;
  wire       [1:0]    cmdRouteFork_thrown_payload_burst;
  wire       [0:0]    cmdRouteFork_thrown_payload_lock;
  wire       [3:0]    cmdRouteFork_thrown_payload_cache;
  wire       [3:0]    cmdRouteFork_thrown_payload_qos;
  wire       [2:0]    cmdRouteFork_thrown_payload_prot;
  wire                cmdRouteFork_thrown_payload_write;
  wire                cmdRouteFork_thrown_translated_valid;
  wire                cmdRouteFork_thrown_translated_ready;
  wire                writeLogic_routeDataInput_valid;
  wire                writeLogic_routeDataInput_ready;
  wire       [31:0]   writeLogic_routeDataInput_payload_data;
  wire       [3:0]    writeLogic_routeDataInput_payload_strb;
  wire                writeLogic_routeDataInput_payload_last;
  wire                io_output_w_fire;
  wire                writeLogic_writeRspSels_0;
  wire       [0:0]    readRspIndex;
  wire                readRspSels_0;
  wire                readRspSels_1;

  assign _zz__zz_io_output_arw_payload_id = {cmdArbiter_io_chosenOH[1 : 1],cmdArbiter_io_chosenOH[0 : 0]};
  assign _zz_io_output_arw_payload_id_2 = cmdOutputFork_payload_id;
  assign _zz_io_output_arw_payload_id_1 = {1'd0, _zz_io_output_arw_payload_id_2};
  StreamArbiter_4 cmdArbiter (
    .io_inputs_0_valid          (inputsCmd_0_valid                       ), //i
    .io_inputs_0_ready          (cmdArbiter_io_inputs_0_ready            ), //o
    .io_inputs_0_payload_addr   (inputsCmd_0_payload_addr[31:0]          ), //i
    .io_inputs_0_payload_id     (inputsCmd_0_payload_id[2:0]             ), //i
    .io_inputs_0_payload_region (inputsCmd_0_payload_region[3:0]         ), //i
    .io_inputs_0_payload_len    (inputsCmd_0_payload_len[7:0]            ), //i
    .io_inputs_0_payload_size   (inputsCmd_0_payload_size[2:0]           ), //i
    .io_inputs_0_payload_burst  (inputsCmd_0_payload_burst[1:0]          ), //i
    .io_inputs_0_payload_lock   (inputsCmd_0_payload_lock                ), //i
    .io_inputs_0_payload_cache  (inputsCmd_0_payload_cache[3:0]          ), //i
    .io_inputs_0_payload_qos    (inputsCmd_0_payload_qos[3:0]            ), //i
    .io_inputs_0_payload_prot   (inputsCmd_0_payload_prot[2:0]           ), //i
    .io_inputs_0_payload_write  (inputsCmd_0_payload_write               ), //i
    .io_inputs_1_valid          (inputsCmd_1_valid                       ), //i
    .io_inputs_1_ready          (cmdArbiter_io_inputs_1_ready            ), //o
    .io_inputs_1_payload_addr   (inputsCmd_1_payload_addr[31:0]          ), //i
    .io_inputs_1_payload_id     (inputsCmd_1_payload_id[2:0]             ), //i
    .io_inputs_1_payload_region (inputsCmd_1_payload_region[3:0]         ), //i
    .io_inputs_1_payload_len    (inputsCmd_1_payload_len[7:0]            ), //i
    .io_inputs_1_payload_size   (inputsCmd_1_payload_size[2:0]           ), //i
    .io_inputs_1_payload_burst  (inputsCmd_1_payload_burst[1:0]          ), //i
    .io_inputs_1_payload_lock   (inputsCmd_1_payload_lock                ), //i
    .io_inputs_1_payload_cache  (inputsCmd_1_payload_cache[3:0]          ), //i
    .io_inputs_1_payload_qos    (inputsCmd_1_payload_qos[3:0]            ), //i
    .io_inputs_1_payload_prot   (inputsCmd_1_payload_prot[2:0]           ), //i
    .io_inputs_1_payload_write  (inputsCmd_1_payload_write               ), //i
    .io_output_valid            (cmdArbiter_io_output_valid              ), //o
    .io_output_ready            (cmdArbiter_io_output_ready              ), //i
    .io_output_payload_addr     (cmdArbiter_io_output_payload_addr[31:0] ), //o
    .io_output_payload_id       (cmdArbiter_io_output_payload_id[2:0]    ), //o
    .io_output_payload_region   (cmdArbiter_io_output_payload_region[3:0]), //o
    .io_output_payload_len      (cmdArbiter_io_output_payload_len[7:0]   ), //o
    .io_output_payload_size     (cmdArbiter_io_output_payload_size[2:0]  ), //o
    .io_output_payload_burst    (cmdArbiter_io_output_payload_burst[1:0] ), //o
    .io_output_payload_lock     (cmdArbiter_io_output_payload_lock       ), //o
    .io_output_payload_cache    (cmdArbiter_io_output_payload_cache[3:0] ), //o
    .io_output_payload_qos      (cmdArbiter_io_output_payload_qos[3:0]   ), //o
    .io_output_payload_prot     (cmdArbiter_io_output_payload_prot[2:0]  ), //o
    .io_output_payload_write    (cmdArbiter_io_output_payload_write      ), //o
    .io_chosen                  (cmdArbiter_io_chosen                    ), //o
    .io_chosenOH                (cmdArbiter_io_chosenOH[1:0]             ), //o
    .clk                        (clk                                     ), //i
    .reset_n                    (reset_n                                 )  //i
  );
  StreamFifoLowLatency_4 cmdRouteFork_thrown_translated_fifo (
    .io_push_valid   (cmdRouteFork_thrown_translated_valid                    ), //i
    .io_push_ready   (cmdRouteFork_thrown_translated_fifo_io_push_ready       ), //o
    .io_pop_valid    (cmdRouteFork_thrown_translated_fifo_io_pop_valid        ), //o
    .io_pop_ready    (cmdRouteFork_thrown_translated_fifo_io_pop_ready        ), //i
    .io_flush        (1'b0                                                    ), //i
    .io_occupancy    (cmdRouteFork_thrown_translated_fifo_io_occupancy[2:0]   ), //o
    .io_availability (cmdRouteFork_thrown_translated_fifo_io_availability[2:0]), //o
    .clk             (clk                                                     ), //i
    .reset_n         (reset_n                                                 )  //i
  );
  always @(*) begin
    case(readRspIndex)
      1'b0 : _zz_io_output_r_ready = io_readInputs_0_r_ready;
      default : _zz_io_output_r_ready = io_sharedInputs_0_r_ready;
    endcase
  end

  assign inputsCmd_0_valid = io_readInputs_0_ar_valid;
  assign io_readInputs_0_ar_ready = inputsCmd_0_ready;
  assign inputsCmd_0_payload_addr = io_readInputs_0_ar_payload_addr;
  assign inputsCmd_0_payload_id = io_readInputs_0_ar_payload_id;
  assign inputsCmd_0_payload_region = io_readInputs_0_ar_payload_region;
  assign inputsCmd_0_payload_len = io_readInputs_0_ar_payload_len;
  assign inputsCmd_0_payload_size = io_readInputs_0_ar_payload_size;
  assign inputsCmd_0_payload_burst = io_readInputs_0_ar_payload_burst;
  assign inputsCmd_0_payload_lock = io_readInputs_0_ar_payload_lock;
  assign inputsCmd_0_payload_cache = io_readInputs_0_ar_payload_cache;
  assign inputsCmd_0_payload_qos = io_readInputs_0_ar_payload_qos;
  assign inputsCmd_0_payload_prot = io_readInputs_0_ar_payload_prot;
  assign inputsCmd_0_payload_write = 1'b0;
  assign inputsCmd_1_valid = io_sharedInputs_0_arw_valid;
  assign io_sharedInputs_0_arw_ready = inputsCmd_1_ready;
  assign inputsCmd_1_payload_addr = io_sharedInputs_0_arw_payload_addr;
  assign inputsCmd_1_payload_id = io_sharedInputs_0_arw_payload_id;
  assign inputsCmd_1_payload_region = io_sharedInputs_0_arw_payload_region;
  assign inputsCmd_1_payload_len = io_sharedInputs_0_arw_payload_len;
  assign inputsCmd_1_payload_size = io_sharedInputs_0_arw_payload_size;
  assign inputsCmd_1_payload_burst = io_sharedInputs_0_arw_payload_burst;
  assign inputsCmd_1_payload_lock = io_sharedInputs_0_arw_payload_lock;
  assign inputsCmd_1_payload_cache = io_sharedInputs_0_arw_payload_cache;
  assign inputsCmd_1_payload_qos = io_sharedInputs_0_arw_payload_qos;
  assign inputsCmd_1_payload_prot = io_sharedInputs_0_arw_payload_prot;
  assign inputsCmd_1_payload_write = io_sharedInputs_0_arw_payload_write;
  assign inputsCmd_0_ready = cmdArbiter_io_inputs_0_ready;
  assign inputsCmd_1_ready = cmdArbiter_io_inputs_1_ready;
  always @(*) begin
    cmdArbiter_io_output_ready = 1'b1;
    if(when_Stream_l1063) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
    if(when_Stream_l1063_1) begin
      cmdArbiter_io_output_ready = 1'b0;
    end
  end

  assign when_Stream_l1063 = ((! cmdOutputFork_ready) && core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign when_Stream_l1063_1 = ((! cmdRouteFork_ready) && core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdOutputFork_valid = (cmdArbiter_io_output_valid && core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0);
  assign cmdOutputFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdOutputFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdOutputFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdOutputFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdOutputFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdOutputFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdOutputFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdOutputFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdOutputFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdOutputFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdOutputFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdOutputFork_fire = (cmdOutputFork_valid && cmdOutputFork_ready);
  assign cmdRouteFork_valid = (cmdArbiter_io_output_valid && core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1);
  assign cmdRouteFork_payload_addr = cmdArbiter_io_output_payload_addr;
  assign cmdRouteFork_payload_id = cmdArbiter_io_output_payload_id;
  assign cmdRouteFork_payload_region = cmdArbiter_io_output_payload_region;
  assign cmdRouteFork_payload_len = cmdArbiter_io_output_payload_len;
  assign cmdRouteFork_payload_size = cmdArbiter_io_output_payload_size;
  assign cmdRouteFork_payload_burst = cmdArbiter_io_output_payload_burst;
  assign cmdRouteFork_payload_lock = cmdArbiter_io_output_payload_lock;
  assign cmdRouteFork_payload_cache = cmdArbiter_io_output_payload_cache;
  assign cmdRouteFork_payload_qos = cmdArbiter_io_output_payload_qos;
  assign cmdRouteFork_payload_prot = cmdArbiter_io_output_payload_prot;
  assign cmdRouteFork_payload_write = cmdArbiter_io_output_payload_write;
  assign cmdRouteFork_fire = (cmdRouteFork_valid && cmdRouteFork_ready);
  assign io_output_arw_valid = cmdOutputFork_valid;
  assign cmdOutputFork_ready = io_output_arw_ready;
  assign io_output_arw_payload_addr = cmdOutputFork_payload_addr;
  assign io_output_arw_payload_region = cmdOutputFork_payload_region;
  assign io_output_arw_payload_len = cmdOutputFork_payload_len;
  assign io_output_arw_payload_size = cmdOutputFork_payload_size;
  assign io_output_arw_payload_burst = cmdOutputFork_payload_burst;
  assign io_output_arw_payload_lock = cmdOutputFork_payload_lock;
  assign io_output_arw_payload_cache = cmdOutputFork_payload_cache;
  assign io_output_arw_payload_qos = cmdOutputFork_payload_qos;
  assign io_output_arw_payload_prot = cmdOutputFork_payload_prot;
  assign io_output_arw_payload_write = cmdOutputFork_payload_write;
  assign _zz_io_output_arw_payload_id = _zz__zz_io_output_arw_payload_id[1];
  assign io_output_arw_payload_id = (cmdOutputFork_payload_write ? _zz_io_output_arw_payload_id_1 : {_zz_io_output_arw_payload_id,cmdOutputFork_payload_id});
  assign when_Stream_l445 = (! cmdRouteFork_payload_write);
  always @(*) begin
    cmdRouteFork_thrown_valid = cmdRouteFork_valid;
    if(when_Stream_l445) begin
      cmdRouteFork_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    cmdRouteFork_ready = cmdRouteFork_thrown_ready;
    if(when_Stream_l445) begin
      cmdRouteFork_ready = 1'b1;
    end
  end

  assign cmdRouteFork_thrown_payload_addr = cmdRouteFork_payload_addr;
  assign cmdRouteFork_thrown_payload_id = cmdRouteFork_payload_id;
  assign cmdRouteFork_thrown_payload_region = cmdRouteFork_payload_region;
  assign cmdRouteFork_thrown_payload_len = cmdRouteFork_payload_len;
  assign cmdRouteFork_thrown_payload_size = cmdRouteFork_payload_size;
  assign cmdRouteFork_thrown_payload_burst = cmdRouteFork_payload_burst;
  assign cmdRouteFork_thrown_payload_lock = cmdRouteFork_payload_lock;
  assign cmdRouteFork_thrown_payload_cache = cmdRouteFork_payload_cache;
  assign cmdRouteFork_thrown_payload_qos = cmdRouteFork_payload_qos;
  assign cmdRouteFork_thrown_payload_prot = cmdRouteFork_payload_prot;
  assign cmdRouteFork_thrown_payload_write = cmdRouteFork_payload_write;
  assign cmdRouteFork_thrown_translated_valid = cmdRouteFork_thrown_valid;
  assign cmdRouteFork_thrown_ready = cmdRouteFork_thrown_translated_ready;
  assign cmdRouteFork_thrown_translated_ready = cmdRouteFork_thrown_translated_fifo_io_push_ready;
  assign writeLogic_routeDataInput_valid = io_sharedInputs_0_w_valid;
  assign writeLogic_routeDataInput_ready = io_sharedInputs_0_w_ready;
  assign writeLogic_routeDataInput_payload_data = io_sharedInputs_0_w_payload_data;
  assign writeLogic_routeDataInput_payload_strb = io_sharedInputs_0_w_payload_strb;
  assign writeLogic_routeDataInput_payload_last = io_sharedInputs_0_w_payload_last;
  assign io_output_w_valid = (cmdRouteFork_thrown_translated_fifo_io_pop_valid && writeLogic_routeDataInput_valid);
  assign io_output_w_payload_data = writeLogic_routeDataInput_payload_data;
  assign io_output_w_payload_strb = writeLogic_routeDataInput_payload_strb;
  assign io_output_w_payload_last = writeLogic_routeDataInput_payload_last;
  assign io_sharedInputs_0_w_ready = ((cmdRouteFork_thrown_translated_fifo_io_pop_valid && io_output_w_ready) && 1'b1);
  assign io_output_w_fire = (io_output_w_valid && io_output_w_ready);
  assign cmdRouteFork_thrown_translated_fifo_io_pop_ready = (io_output_w_fire && io_output_w_payload_last);
  assign writeLogic_writeRspSels_0 = 1'b1;
  assign io_sharedInputs_0_b_valid = (io_output_b_valid && writeLogic_writeRspSels_0);
  assign io_sharedInputs_0_b_payload_resp = io_output_b_payload_resp;
  assign io_sharedInputs_0_b_payload_id = io_output_b_payload_id[2:0];
  assign io_output_b_ready = io_sharedInputs_0_b_ready;
  assign readRspIndex = io_output_r_payload_id[3 : 3];
  assign readRspSels_0 = (readRspIndex == 1'b0);
  assign readRspSels_1 = (readRspIndex == 1'b1);
  assign io_readInputs_0_r_valid = (io_output_r_valid && readRspSels_0);
  assign io_readInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_readInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_readInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_readInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_sharedInputs_0_r_valid = (io_output_r_valid && readRspSels_1);
  assign io_sharedInputs_0_r_payload_data = io_output_r_payload_data;
  assign io_sharedInputs_0_r_payload_resp = io_output_r_payload_resp;
  assign io_sharedInputs_0_r_payload_last = io_output_r_payload_last;
  assign io_sharedInputs_0_r_payload_id = io_output_r_payload_id[2:0];
  assign io_output_r_ready = _zz_io_output_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
      core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
    end else begin
      if(cmdOutputFork_fire) begin
        core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b0;
      end
      if(cmdRouteFork_fire) begin
        core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b0;
      end
      if(cmdArbiter_io_output_ready) begin
        core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_0 <= 1'b1;
        core_srams_0_io_axi_arbiter_cmdArbiter_io_output_fork2_logic_linkEnable_1 <= 1'b1;
      end
    end
  end


endmodule

module Axi4SharedDecoder (
  input  wire          io_input_arw_valid,
  output wire          io_input_arw_ready,
  input  wire [31:0]   io_input_arw_payload_addr,
  input  wire [2:0]    io_input_arw_payload_size,
  input  wire [3:0]    io_input_arw_payload_cache,
  input  wire [2:0]    io_input_arw_payload_prot,
  input  wire          io_input_arw_payload_write,
  input  wire          io_input_w_valid,
  output wire          io_input_w_ready,
  input  wire [31:0]   io_input_w_payload_data,
  input  wire [3:0]    io_input_w_payload_strb,
  input  wire          io_input_w_payload_last,
  output wire          io_input_b_valid,
  input  wire          io_input_b_ready,
  output reg  [1:0]    io_input_b_payload_resp,
  output wire          io_input_r_valid,
  input  wire          io_input_r_ready,
  output wire [31:0]   io_input_r_payload_data,
  output reg  [1:0]    io_input_r_payload_resp,
  output reg           io_input_r_payload_last,
  output wire          io_sharedOutputs_0_arw_valid,
  input  wire          io_sharedOutputs_0_arw_ready,
  output wire [31:0]   io_sharedOutputs_0_arw_payload_addr,
  output wire [2:0]    io_sharedOutputs_0_arw_payload_size,
  output wire [3:0]    io_sharedOutputs_0_arw_payload_cache,
  output wire [2:0]    io_sharedOutputs_0_arw_payload_prot,
  output wire          io_sharedOutputs_0_arw_payload_write,
  output wire          io_sharedOutputs_0_w_valid,
  input  wire          io_sharedOutputs_0_w_ready,
  output wire [31:0]   io_sharedOutputs_0_w_payload_data,
  output wire [3:0]    io_sharedOutputs_0_w_payload_strb,
  output wire          io_sharedOutputs_0_w_payload_last,
  input  wire          io_sharedOutputs_0_b_valid,
  output wire          io_sharedOutputs_0_b_ready,
  input  wire [1:0]    io_sharedOutputs_0_b_payload_resp,
  input  wire          io_sharedOutputs_0_r_valid,
  output wire          io_sharedOutputs_0_r_ready,
  input  wire [31:0]   io_sharedOutputs_0_r_payload_data,
  input  wire [1:0]    io_sharedOutputs_0_r_payload_resp,
  input  wire          io_sharedOutputs_0_r_payload_last,
  output wire          io_sharedOutputs_1_arw_valid,
  input  wire          io_sharedOutputs_1_arw_ready,
  output wire [31:0]   io_sharedOutputs_1_arw_payload_addr,
  output wire [2:0]    io_sharedOutputs_1_arw_payload_size,
  output wire [3:0]    io_sharedOutputs_1_arw_payload_cache,
  output wire [2:0]    io_sharedOutputs_1_arw_payload_prot,
  output wire          io_sharedOutputs_1_arw_payload_write,
  output wire          io_sharedOutputs_1_w_valid,
  input  wire          io_sharedOutputs_1_w_ready,
  output wire [31:0]   io_sharedOutputs_1_w_payload_data,
  output wire [3:0]    io_sharedOutputs_1_w_payload_strb,
  output wire          io_sharedOutputs_1_w_payload_last,
  input  wire          io_sharedOutputs_1_b_valid,
  output wire          io_sharedOutputs_1_b_ready,
  input  wire [1:0]    io_sharedOutputs_1_b_payload_resp,
  input  wire          io_sharedOutputs_1_r_valid,
  output wire          io_sharedOutputs_1_r_ready,
  input  wire [31:0]   io_sharedOutputs_1_r_payload_data,
  input  wire [1:0]    io_sharedOutputs_1_r_payload_resp,
  input  wire          io_sharedOutputs_1_r_payload_last,
  output wire          io_sharedOutputs_2_arw_valid,
  input  wire          io_sharedOutputs_2_arw_ready,
  output wire [31:0]   io_sharedOutputs_2_arw_payload_addr,
  output wire [2:0]    io_sharedOutputs_2_arw_payload_size,
  output wire [3:0]    io_sharedOutputs_2_arw_payload_cache,
  output wire [2:0]    io_sharedOutputs_2_arw_payload_prot,
  output wire          io_sharedOutputs_2_arw_payload_write,
  output wire          io_sharedOutputs_2_w_valid,
  input  wire          io_sharedOutputs_2_w_ready,
  output wire [31:0]   io_sharedOutputs_2_w_payload_data,
  output wire [3:0]    io_sharedOutputs_2_w_payload_strb,
  output wire          io_sharedOutputs_2_w_payload_last,
  input  wire          io_sharedOutputs_2_b_valid,
  output wire          io_sharedOutputs_2_b_ready,
  input  wire [1:0]    io_sharedOutputs_2_b_payload_resp,
  input  wire          io_sharedOutputs_2_r_valid,
  output wire          io_sharedOutputs_2_r_ready,
  input  wire [31:0]   io_sharedOutputs_2_r_payload_data,
  input  wire [1:0]    io_sharedOutputs_2_r_payload_resp,
  input  wire          io_sharedOutputs_2_r_payload_last,
  output wire          io_sharedOutputs_3_arw_valid,
  input  wire          io_sharedOutputs_3_arw_ready,
  output wire [31:0]   io_sharedOutputs_3_arw_payload_addr,
  output wire [2:0]    io_sharedOutputs_3_arw_payload_size,
  output wire [3:0]    io_sharedOutputs_3_arw_payload_cache,
  output wire [2:0]    io_sharedOutputs_3_arw_payload_prot,
  output wire          io_sharedOutputs_3_arw_payload_write,
  output wire          io_sharedOutputs_3_w_valid,
  input  wire          io_sharedOutputs_3_w_ready,
  output wire [31:0]   io_sharedOutputs_3_w_payload_data,
  output wire [3:0]    io_sharedOutputs_3_w_payload_strb,
  output wire          io_sharedOutputs_3_w_payload_last,
  input  wire          io_sharedOutputs_3_b_valid,
  output wire          io_sharedOutputs_3_b_ready,
  input  wire [1:0]    io_sharedOutputs_3_b_payload_resp,
  input  wire          io_sharedOutputs_3_r_valid,
  output wire          io_sharedOutputs_3_r_ready,
  input  wire [31:0]   io_sharedOutputs_3_r_payload_data,
  input  wire [1:0]    io_sharedOutputs_3_r_payload_resp,
  input  wire          io_sharedOutputs_3_r_payload_last,
  output wire          io_sharedOutputs_4_arw_valid,
  input  wire          io_sharedOutputs_4_arw_ready,
  output wire [31:0]   io_sharedOutputs_4_arw_payload_addr,
  output wire [2:0]    io_sharedOutputs_4_arw_payload_size,
  output wire [3:0]    io_sharedOutputs_4_arw_payload_cache,
  output wire [2:0]    io_sharedOutputs_4_arw_payload_prot,
  output wire          io_sharedOutputs_4_arw_payload_write,
  output wire          io_sharedOutputs_4_w_valid,
  input  wire          io_sharedOutputs_4_w_ready,
  output wire [31:0]   io_sharedOutputs_4_w_payload_data,
  output wire [3:0]    io_sharedOutputs_4_w_payload_strb,
  output wire          io_sharedOutputs_4_w_payload_last,
  input  wire          io_sharedOutputs_4_b_valid,
  output wire          io_sharedOutputs_4_b_ready,
  input  wire [1:0]    io_sharedOutputs_4_b_payload_resp,
  input  wire          io_sharedOutputs_4_r_valid,
  output wire          io_sharedOutputs_4_r_ready,
  input  wire [31:0]   io_sharedOutputs_4_r_payload_data,
  input  wire [1:0]    io_sharedOutputs_4_r_payload_resp,
  input  wire          io_sharedOutputs_4_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  wire                errorSlave_io_axi_arw_valid;
  wire                errorSlave_io_axi_w_valid;
  wire                errorSlave_io_axi_arw_ready;
  wire                errorSlave_io_axi_w_ready;
  wire                errorSlave_io_axi_b_valid;
  wire       [1:0]    errorSlave_io_axi_b_payload_resp;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  wire       [31:0]   _zz_decodedCmdSels;
  wire       [31:0]   _zz_decodedCmdSels_1;
  wire       [31:0]   _zz_decodedCmdSels_2;
  wire       [31:0]   _zz_decodedCmdSels_3;
  wire       [31:0]   _zz_decodedCmdSels_4;
  wire       [31:0]   _zz_decodedCmdSels_5;
  reg        [1:0]    _zz_io_input_b_payload_resp;
  reg        [31:0]   _zz_io_input_r_payload_data;
  reg        [1:0]    _zz_io_input_r_payload_resp;
  reg                 _zz_io_input_r_payload_last;
  reg        [2:0]    _zz_pendingCmdCounter;
  reg        [2:0]    _zz_pendingCmdCounter_1;
  reg        [2:0]    _zz_pendingCmdCounter_2;
  wire                cmdAllowedStart;
  wire                io_input_arw_fire;
  wire                io_input_b_fire;
  wire                io_input_r_fire;
  wire                when_Utils_l766;
  reg        [2:0]    pendingCmdCounter;
  wire       [2:0]    _zz_pendingCmdCounter_3;
  wire                when_Utils_l706;
  wire                io_input_w_fire;
  wire                when_Utils_l709;
  reg                 pendingDataCounter_incrementIt;
  reg                 pendingDataCounter_decrementIt;
  wire       [2:0]    pendingDataCounter_valueNext;
  reg        [2:0]    pendingDataCounter_value;
  wire                pendingDataCounter_mayOverflow;
  wire                pendingDataCounter_willOverflowIfInc;
  wire                pendingDataCounter_willOverflow;
  reg        [2:0]    pendingDataCounter_finalIncrement;
  wire                when_Utils_l735;
  wire                when_Utils_l737;
  wire       [4:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [4:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                allowData;
  reg                 _zz_cmdAllowedStart;
  wire       [4:0]    _zz_io_sharedOutputs_0_arw_valid;
  wire       [4:0]    _zz_io_sharedOutputs_0_w_valid;
  wire       [4:0]    _zz_writeRspIndex;
  wire                _zz_writeRspIndex_1;
  wire                _zz_writeRspIndex_2;
  wire                _zz_writeRspIndex_3;
  wire                _zz_writeRspIndex_4;
  wire       [2:0]    writeRspIndex;
  wire       [4:0]    _zz_readRspIndex;
  wire                _zz_readRspIndex_1;
  wire                _zz_readRspIndex_2;
  wire                _zz_readRspIndex_3;
  wire                _zz_readRspIndex_4;
  wire       [2:0]    readRspIndex;

  assign _zz_decodedCmdSels = 32'h000007ff;
  assign _zz_decodedCmdSels_1 = (~ 32'h000007ff);
  assign _zz_decodedCmdSels_2 = (io_input_arw_payload_addr & (~ 32'h000007ff));
  assign _zz_decodedCmdSels_3 = 32'h80000800;
  assign _zz_decodedCmdSels_4 = (io_input_arw_payload_addr & (~ 32'h000007ff));
  assign _zz_decodedCmdSels_5 = 32'h80000000;
  Axi4SharedErrorSlave errorSlave (
    .io_axi_arw_valid         (errorSlave_io_axi_arw_valid           ), //i
    .io_axi_arw_ready         (errorSlave_io_axi_arw_ready           ), //o
    .io_axi_arw_payload_addr  (io_input_arw_payload_addr[31:0]       ), //i
    .io_axi_arw_payload_size  (io_input_arw_payload_size[2:0]        ), //i
    .io_axi_arw_payload_cache (io_input_arw_payload_cache[3:0]       ), //i
    .io_axi_arw_payload_prot  (io_input_arw_payload_prot[2:0]        ), //i
    .io_axi_arw_payload_write (io_input_arw_payload_write            ), //i
    .io_axi_w_valid           (errorSlave_io_axi_w_valid             ), //i
    .io_axi_w_ready           (errorSlave_io_axi_w_ready             ), //o
    .io_axi_w_payload_data    (io_input_w_payload_data[31:0]         ), //i
    .io_axi_w_payload_strb    (io_input_w_payload_strb[3:0]          ), //i
    .io_axi_w_payload_last    (io_input_w_payload_last               ), //i
    .io_axi_b_valid           (errorSlave_io_axi_b_valid             ), //o
    .io_axi_b_ready           (io_input_b_ready                      ), //i
    .io_axi_b_payload_resp    (errorSlave_io_axi_b_payload_resp[1:0] ), //o
    .io_axi_r_valid           (errorSlave_io_axi_r_valid             ), //o
    .io_axi_r_ready           (io_input_r_ready                      ), //i
    .io_axi_r_payload_data    (errorSlave_io_axi_r_payload_data[31:0]), //o
    .io_axi_r_payload_resp    (errorSlave_io_axi_r_payload_resp[1:0] ), //o
    .io_axi_r_payload_last    (errorSlave_io_axi_r_payload_last      ), //o
    .clk                      (clk                                   ), //i
    .reset_n                  (reset_n                               )  //i
  );
  always @(*) begin
    case(writeRspIndex)
      3'b000 : _zz_io_input_b_payload_resp = io_sharedOutputs_0_b_payload_resp;
      3'b001 : _zz_io_input_b_payload_resp = io_sharedOutputs_1_b_payload_resp;
      3'b010 : _zz_io_input_b_payload_resp = io_sharedOutputs_2_b_payload_resp;
      3'b011 : _zz_io_input_b_payload_resp = io_sharedOutputs_3_b_payload_resp;
      default : _zz_io_input_b_payload_resp = io_sharedOutputs_4_b_payload_resp;
    endcase
  end

  always @(*) begin
    case(readRspIndex)
      3'b000 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_0_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_0_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_0_r_payload_last;
      end
      3'b001 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_1_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_1_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_1_r_payload_last;
      end
      3'b010 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_2_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_2_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_2_r_payload_last;
      end
      3'b011 : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_3_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_3_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_3_r_payload_last;
      end
      default : begin
        _zz_io_input_r_payload_data = io_sharedOutputs_4_r_payload_data;
        _zz_io_input_r_payload_resp = io_sharedOutputs_4_r_payload_resp;
        _zz_io_input_r_payload_last = io_sharedOutputs_4_r_payload_last;
      end
    endcase
  end

  always @(*) begin
    _zz_pendingCmdCounter = _zz_pendingCmdCounter_1;
    if(when_Utils_l766) begin
      _zz_pendingCmdCounter = (_zz_pendingCmdCounter_1 - 3'b001);
    end
  end

  always @(*) begin
    _zz_pendingCmdCounter_1 = _zz_pendingCmdCounter_2;
    if(io_input_b_fire) begin
      _zz_pendingCmdCounter_1 = (_zz_pendingCmdCounter_2 - 3'b001);
    end
  end

  always @(*) begin
    _zz_pendingCmdCounter_2 = _zz_pendingCmdCounter_3;
    if(io_input_arw_fire) begin
      _zz_pendingCmdCounter_2 = (_zz_pendingCmdCounter_3 + 3'b001);
    end
  end

  assign io_input_arw_fire = (io_input_arw_valid && io_input_arw_ready);
  assign io_input_b_fire = (io_input_b_valid && io_input_b_ready);
  assign io_input_r_fire = (io_input_r_valid && io_input_r_ready);
  assign when_Utils_l766 = (io_input_r_fire && io_input_r_payload_last);
  assign _zz_pendingCmdCounter_3 = pendingCmdCounter;
  assign when_Utils_l706 = (cmdAllowedStart && io_input_arw_payload_write);
  assign io_input_w_fire = (io_input_w_valid && io_input_w_ready);
  assign when_Utils_l709 = (io_input_w_fire && io_input_w_payload_last);
  always @(*) begin
    pendingDataCounter_incrementIt = 1'b0;
    if(when_Utils_l706) begin
      pendingDataCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingDataCounter_decrementIt = 1'b0;
    if(when_Utils_l709) begin
      pendingDataCounter_decrementIt = 1'b1;
    end
  end

  assign pendingDataCounter_mayOverflow = (pendingDataCounter_value == 3'b111);
  assign pendingDataCounter_willOverflowIfInc = (pendingDataCounter_mayOverflow && (! pendingDataCounter_decrementIt));
  assign pendingDataCounter_willOverflow = (pendingDataCounter_willOverflowIfInc && pendingDataCounter_incrementIt);
  assign when_Utils_l735 = (pendingDataCounter_incrementIt && (! pendingDataCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l735) begin
      pendingDataCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l737) begin
        pendingDataCounter_finalIncrement = 3'b111;
      end else begin
        pendingDataCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l737 = ((! pendingDataCounter_incrementIt) && pendingDataCounter_decrementIt);
  assign pendingDataCounter_valueNext = (pendingDataCounter_value + pendingDataCounter_finalIncrement);
  assign decodedCmdSels = {((io_input_arw_payload_addr & (~ 32'h000fffff)) == 32'hf0000000),{((io_input_arw_payload_addr & (~ _zz_decodedCmdSels)) == 32'h80001800),{((io_input_arw_payload_addr & _zz_decodedCmdSels_1) == 32'h80001000),{(_zz_decodedCmdSels_2 == _zz_decodedCmdSels_3),(_zz_decodedCmdSels_4 == _zz_decodedCmdSels_5)}}}};
  assign decodedCmdError = (decodedCmdSels == 5'h0);
  assign allowCmd = ((pendingCmdCounter == 3'b000) || ((pendingCmdCounter != 3'b111) && (pendingSels == decodedCmdSels)));
  assign allowData = (pendingDataCounter_value != 3'b000);
  assign cmdAllowedStart = ((io_input_arw_valid && allowCmd) && _zz_cmdAllowedStart);
  assign io_input_arw_ready = (((|(decodedCmdSels & {io_sharedOutputs_4_arw_ready,{io_sharedOutputs_3_arw_ready,{io_sharedOutputs_2_arw_ready,{io_sharedOutputs_1_arw_ready,io_sharedOutputs_0_arw_ready}}}})) || (decodedCmdError && errorSlave_io_axi_arw_ready)) && allowCmd);
  assign errorSlave_io_axi_arw_valid = ((io_input_arw_valid && decodedCmdError) && allowCmd);
  assign _zz_io_sharedOutputs_0_arw_valid = decodedCmdSels[4 : 0];
  assign io_sharedOutputs_0_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[0]) && allowCmd);
  assign io_sharedOutputs_0_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_0_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_0_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_0_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_0_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_1_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[1]) && allowCmd);
  assign io_sharedOutputs_1_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_1_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_1_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_1_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_1_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_2_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[2]) && allowCmd);
  assign io_sharedOutputs_2_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_2_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_2_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_2_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_2_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_3_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[3]) && allowCmd);
  assign io_sharedOutputs_3_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_3_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_3_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_3_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_3_arw_payload_write = io_input_arw_payload_write;
  assign io_sharedOutputs_4_arw_valid = ((io_input_arw_valid && _zz_io_sharedOutputs_0_arw_valid[4]) && allowCmd);
  assign io_sharedOutputs_4_arw_payload_addr = io_input_arw_payload_addr;
  assign io_sharedOutputs_4_arw_payload_size = io_input_arw_payload_size;
  assign io_sharedOutputs_4_arw_payload_cache = io_input_arw_payload_cache;
  assign io_sharedOutputs_4_arw_payload_prot = io_input_arw_payload_prot;
  assign io_sharedOutputs_4_arw_payload_write = io_input_arw_payload_write;
  assign io_input_w_ready = (((|(pendingSels[4 : 0] & {io_sharedOutputs_4_w_ready,{io_sharedOutputs_3_w_ready,{io_sharedOutputs_2_w_ready,{io_sharedOutputs_1_w_ready,io_sharedOutputs_0_w_ready}}}})) || (pendingError && errorSlave_io_axi_w_ready)) && allowData);
  assign errorSlave_io_axi_w_valid = ((io_input_w_valid && pendingError) && allowData);
  assign _zz_io_sharedOutputs_0_w_valid = pendingSels[4 : 0];
  assign io_sharedOutputs_0_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[0]) && allowData);
  assign io_sharedOutputs_0_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_0_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_0_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_1_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[1]) && allowData);
  assign io_sharedOutputs_1_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_1_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_1_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_2_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[2]) && allowData);
  assign io_sharedOutputs_2_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_2_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_2_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_3_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[3]) && allowData);
  assign io_sharedOutputs_3_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_3_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_3_w_payload_last = io_input_w_payload_last;
  assign io_sharedOutputs_4_w_valid = ((io_input_w_valid && _zz_io_sharedOutputs_0_w_valid[4]) && allowData);
  assign io_sharedOutputs_4_w_payload_data = io_input_w_payload_data;
  assign io_sharedOutputs_4_w_payload_strb = io_input_w_payload_strb;
  assign io_sharedOutputs_4_w_payload_last = io_input_w_payload_last;
  assign _zz_writeRspIndex = pendingSels[4 : 0];
  assign _zz_writeRspIndex_1 = _zz_writeRspIndex[3];
  assign _zz_writeRspIndex_2 = _zz_writeRspIndex[4];
  assign _zz_writeRspIndex_3 = (_zz_writeRspIndex[1] || _zz_writeRspIndex_1);
  assign _zz_writeRspIndex_4 = (_zz_writeRspIndex[2] || _zz_writeRspIndex_1);
  assign writeRspIndex = {_zz_writeRspIndex_2,{_zz_writeRspIndex_4,_zz_writeRspIndex_3}};
  assign io_input_b_valid = ((|{io_sharedOutputs_4_b_valid,{io_sharedOutputs_3_b_valid,{io_sharedOutputs_2_b_valid,{io_sharedOutputs_1_b_valid,io_sharedOutputs_0_b_valid}}}}) || errorSlave_io_axi_b_valid);
  always @(*) begin
    io_input_b_payload_resp = _zz_io_input_b_payload_resp;
    if(pendingError) begin
      io_input_b_payload_resp = errorSlave_io_axi_b_payload_resp;
    end
  end

  assign io_sharedOutputs_0_b_ready = io_input_b_ready;
  assign io_sharedOutputs_1_b_ready = io_input_b_ready;
  assign io_sharedOutputs_2_b_ready = io_input_b_ready;
  assign io_sharedOutputs_3_b_ready = io_input_b_ready;
  assign io_sharedOutputs_4_b_ready = io_input_b_ready;
  assign _zz_readRspIndex = pendingSels[4 : 0];
  assign _zz_readRspIndex_1 = _zz_readRspIndex[3];
  assign _zz_readRspIndex_2 = _zz_readRspIndex[4];
  assign _zz_readRspIndex_3 = (_zz_readRspIndex[1] || _zz_readRspIndex_1);
  assign _zz_readRspIndex_4 = (_zz_readRspIndex[2] || _zz_readRspIndex_1);
  assign readRspIndex = {_zz_readRspIndex_2,{_zz_readRspIndex_4,_zz_readRspIndex_3}};
  assign io_input_r_valid = ((|{io_sharedOutputs_4_r_valid,{io_sharedOutputs_3_r_valid,{io_sharedOutputs_2_r_valid,{io_sharedOutputs_1_r_valid,io_sharedOutputs_0_r_valid}}}}) || errorSlave_io_axi_r_valid);
  assign io_input_r_payload_data = _zz_io_input_r_payload_data;
  always @(*) begin
    io_input_r_payload_resp = _zz_io_input_r_payload_resp;
    if(pendingError) begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @(*) begin
    io_input_r_payload_last = _zz_io_input_r_payload_last;
    if(pendingError) begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_sharedOutputs_0_r_ready = io_input_r_ready;
  assign io_sharedOutputs_1_r_ready = io_input_r_ready;
  assign io_sharedOutputs_2_r_ready = io_input_r_ready;
  assign io_sharedOutputs_3_r_ready = io_input_r_ready;
  assign io_sharedOutputs_4_r_ready = io_input_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      pendingCmdCounter <= 3'b000;
      pendingDataCounter_value <= 3'b000;
      pendingSels <= 5'h0;
      pendingError <= 1'b0;
      _zz_cmdAllowedStart <= 1'b1;
    end else begin
      pendingCmdCounter <= _zz_pendingCmdCounter;
      pendingDataCounter_value <= pendingDataCounter_valueNext;
      if(cmdAllowedStart) begin
        pendingSels <= decodedCmdSels;
      end
      if(cmdAllowedStart) begin
        pendingError <= decodedCmdError;
      end
      if(cmdAllowedStart) begin
        _zz_cmdAllowedStart <= 1'b0;
      end
      if(io_input_arw_ready) begin
        _zz_cmdAllowedStart <= 1'b1;
      end
    end
  end


endmodule

module Axi4ReadOnlyDecoder (
  input  wire          io_input_ar_valid,
  output wire          io_input_ar_ready,
  input  wire [31:0]   io_input_ar_payload_addr,
  input  wire [3:0]    io_input_ar_payload_cache,
  input  wire [2:0]    io_input_ar_payload_prot,
  output reg           io_input_r_valid,
  input  wire          io_input_r_ready,
  output wire [31:0]   io_input_r_payload_data,
  output reg  [1:0]    io_input_r_payload_resp,
  output reg           io_input_r_payload_last,
  output wire          io_outputs_0_ar_valid,
  input  wire          io_outputs_0_ar_ready,
  output wire [31:0]   io_outputs_0_ar_payload_addr,
  output wire [3:0]    io_outputs_0_ar_payload_cache,
  output wire [2:0]    io_outputs_0_ar_payload_prot,
  input  wire          io_outputs_0_r_valid,
  output wire          io_outputs_0_r_ready,
  input  wire [31:0]   io_outputs_0_r_payload_data,
  input  wire [1:0]    io_outputs_0_r_payload_resp,
  input  wire          io_outputs_0_r_payload_last,
  output wire          io_outputs_1_ar_valid,
  input  wire          io_outputs_1_ar_ready,
  output wire [31:0]   io_outputs_1_ar_payload_addr,
  output wire [3:0]    io_outputs_1_ar_payload_cache,
  output wire [2:0]    io_outputs_1_ar_payload_prot,
  input  wire          io_outputs_1_r_valid,
  output wire          io_outputs_1_r_ready,
  input  wire [31:0]   io_outputs_1_r_payload_data,
  input  wire [1:0]    io_outputs_1_r_payload_resp,
  input  wire          io_outputs_1_r_payload_last,
  output wire          io_outputs_2_ar_valid,
  input  wire          io_outputs_2_ar_ready,
  output wire [31:0]   io_outputs_2_ar_payload_addr,
  output wire [3:0]    io_outputs_2_ar_payload_cache,
  output wire [2:0]    io_outputs_2_ar_payload_prot,
  input  wire          io_outputs_2_r_valid,
  output wire          io_outputs_2_r_ready,
  input  wire [31:0]   io_outputs_2_r_payload_data,
  input  wire [1:0]    io_outputs_2_r_payload_resp,
  input  wire          io_outputs_2_r_payload_last,
  output wire          io_outputs_3_ar_valid,
  input  wire          io_outputs_3_ar_ready,
  output wire [31:0]   io_outputs_3_ar_payload_addr,
  output wire [3:0]    io_outputs_3_ar_payload_cache,
  output wire [2:0]    io_outputs_3_ar_payload_prot,
  input  wire          io_outputs_3_r_valid,
  output wire          io_outputs_3_r_ready,
  input  wire [31:0]   io_outputs_3_r_payload_data,
  input  wire [1:0]    io_outputs_3_r_payload_resp,
  input  wire          io_outputs_3_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  wire                errorSlave_io_axi_ar_valid;
  wire                errorSlave_io_axi_ar_ready;
  wire                errorSlave_io_axi_r_valid;
  wire       [31:0]   errorSlave_io_axi_r_payload_data;
  wire       [1:0]    errorSlave_io_axi_r_payload_resp;
  wire                errorSlave_io_axi_r_payload_last;
  wire       [31:0]   _zz_decodedCmdSels;
  wire       [31:0]   _zz_decodedCmdSels_1;
  wire       [31:0]   _zz_decodedCmdSels_2;
  wire       [31:0]   _zz_decodedCmdSels_3;
  wire       [31:0]   _zz_decodedCmdSels_4;
  wire       [31:0]   _zz_decodedCmdSels_5;
  reg        [31:0]   _zz_io_input_r_payload_data;
  reg        [1:0]    _zz_io_input_r_payload_resp;
  reg                 _zz_io_input_r_payload_last;
  wire                io_input_ar_fire;
  wire                io_input_r_fire;
  wire                when_Utils_l709;
  reg                 pendingCmdCounter_incrementIt;
  reg                 pendingCmdCounter_decrementIt;
  wire       [2:0]    pendingCmdCounter_valueNext;
  reg        [2:0]    pendingCmdCounter_value;
  wire                pendingCmdCounter_mayOverflow;
  wire                pendingCmdCounter_willOverflowIfInc;
  wire                pendingCmdCounter_willOverflow;
  reg        [2:0]    pendingCmdCounter_finalIncrement;
  wire                when_Utils_l735;
  wire                when_Utils_l737;
  wire       [3:0]    decodedCmdSels;
  wire                decodedCmdError;
  reg        [3:0]    pendingSels;
  reg                 pendingError;
  wire                allowCmd;
  wire                _zz_readRspIndex;
  wire                _zz_readRspIndex_1;
  wire                _zz_readRspIndex_2;
  wire       [1:0]    readRspIndex;

  assign _zz_decodedCmdSels = 32'h000007ff;
  assign _zz_decodedCmdSels_1 = (~ 32'h000007ff);
  assign _zz_decodedCmdSels_2 = (io_input_ar_payload_addr & (~ 32'h000007ff));
  assign _zz_decodedCmdSels_3 = 32'h80000800;
  assign _zz_decodedCmdSels_4 = (io_input_ar_payload_addr & (~ 32'h000007ff));
  assign _zz_decodedCmdSels_5 = 32'h80000000;
  Axi4ReadOnlyErrorSlave errorSlave (
    .io_axi_ar_valid         (errorSlave_io_axi_ar_valid            ), //i
    .io_axi_ar_ready         (errorSlave_io_axi_ar_ready            ), //o
    .io_axi_ar_payload_addr  (io_input_ar_payload_addr[31:0]        ), //i
    .io_axi_ar_payload_cache (io_input_ar_payload_cache[3:0]        ), //i
    .io_axi_ar_payload_prot  (io_input_ar_payload_prot[2:0]         ), //i
    .io_axi_r_valid          (errorSlave_io_axi_r_valid             ), //o
    .io_axi_r_ready          (io_input_r_ready                      ), //i
    .io_axi_r_payload_data   (errorSlave_io_axi_r_payload_data[31:0]), //o
    .io_axi_r_payload_resp   (errorSlave_io_axi_r_payload_resp[1:0] ), //o
    .io_axi_r_payload_last   (errorSlave_io_axi_r_payload_last      ), //o
    .clk                     (clk                                   ), //i
    .reset_n                 (reset_n                               )  //i
  );
  always @(*) begin
    case(readRspIndex)
      2'b00 : begin
        _zz_io_input_r_payload_data = io_outputs_0_r_payload_data;
        _zz_io_input_r_payload_resp = io_outputs_0_r_payload_resp;
        _zz_io_input_r_payload_last = io_outputs_0_r_payload_last;
      end
      2'b01 : begin
        _zz_io_input_r_payload_data = io_outputs_1_r_payload_data;
        _zz_io_input_r_payload_resp = io_outputs_1_r_payload_resp;
        _zz_io_input_r_payload_last = io_outputs_1_r_payload_last;
      end
      2'b10 : begin
        _zz_io_input_r_payload_data = io_outputs_2_r_payload_data;
        _zz_io_input_r_payload_resp = io_outputs_2_r_payload_resp;
        _zz_io_input_r_payload_last = io_outputs_2_r_payload_last;
      end
      default : begin
        _zz_io_input_r_payload_data = io_outputs_3_r_payload_data;
        _zz_io_input_r_payload_resp = io_outputs_3_r_payload_resp;
        _zz_io_input_r_payload_last = io_outputs_3_r_payload_last;
      end
    endcase
  end

  assign io_input_ar_fire = (io_input_ar_valid && io_input_ar_ready);
  assign io_input_r_fire = (io_input_r_valid && io_input_r_ready);
  assign when_Utils_l709 = (io_input_r_fire && io_input_r_payload_last);
  always @(*) begin
    pendingCmdCounter_incrementIt = 1'b0;
    if(io_input_ar_fire) begin
      pendingCmdCounter_incrementIt = 1'b1;
    end
  end

  always @(*) begin
    pendingCmdCounter_decrementIt = 1'b0;
    if(when_Utils_l709) begin
      pendingCmdCounter_decrementIt = 1'b1;
    end
  end

  assign pendingCmdCounter_mayOverflow = (pendingCmdCounter_value == 3'b111);
  assign pendingCmdCounter_willOverflowIfInc = (pendingCmdCounter_mayOverflow && (! pendingCmdCounter_decrementIt));
  assign pendingCmdCounter_willOverflow = (pendingCmdCounter_willOverflowIfInc && pendingCmdCounter_incrementIt);
  assign when_Utils_l735 = (pendingCmdCounter_incrementIt && (! pendingCmdCounter_decrementIt));
  always @(*) begin
    if(when_Utils_l735) begin
      pendingCmdCounter_finalIncrement = 3'b001;
    end else begin
      if(when_Utils_l737) begin
        pendingCmdCounter_finalIncrement = 3'b111;
      end else begin
        pendingCmdCounter_finalIncrement = 3'b000;
      end
    end
  end

  assign when_Utils_l737 = ((! pendingCmdCounter_incrementIt) && pendingCmdCounter_decrementIt);
  assign pendingCmdCounter_valueNext = (pendingCmdCounter_value + pendingCmdCounter_finalIncrement);
  assign decodedCmdSels = {(((io_input_ar_payload_addr & (~ _zz_decodedCmdSels)) == 32'h80001800) && io_input_ar_valid),{(((io_input_ar_payload_addr & _zz_decodedCmdSels_1) == 32'h80001000) && io_input_ar_valid),{((_zz_decodedCmdSels_2 == _zz_decodedCmdSels_3) && io_input_ar_valid),((_zz_decodedCmdSels_4 == _zz_decodedCmdSels_5) && io_input_ar_valid)}}};
  assign decodedCmdError = (decodedCmdSels == 4'b0000);
  assign allowCmd = ((pendingCmdCounter_value == 3'b000) || ((pendingCmdCounter_value != 3'b111) && (pendingSels == decodedCmdSels)));
  assign io_input_ar_ready = (((|(decodedCmdSels & {io_outputs_3_ar_ready,{io_outputs_2_ar_ready,{io_outputs_1_ar_ready,io_outputs_0_ar_ready}}})) || (decodedCmdError && errorSlave_io_axi_ar_ready)) && allowCmd);
  assign errorSlave_io_axi_ar_valid = ((io_input_ar_valid && decodedCmdError) && allowCmd);
  assign io_outputs_0_ar_valid = ((io_input_ar_valid && decodedCmdSels[0]) && allowCmd);
  assign io_outputs_0_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_0_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_0_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_1_ar_valid = ((io_input_ar_valid && decodedCmdSels[1]) && allowCmd);
  assign io_outputs_1_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_1_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_1_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_2_ar_valid = ((io_input_ar_valid && decodedCmdSels[2]) && allowCmd);
  assign io_outputs_2_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_2_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_2_ar_payload_prot = io_input_ar_payload_prot;
  assign io_outputs_3_ar_valid = ((io_input_ar_valid && decodedCmdSels[3]) && allowCmd);
  assign io_outputs_3_ar_payload_addr = io_input_ar_payload_addr;
  assign io_outputs_3_ar_payload_cache = io_input_ar_payload_cache;
  assign io_outputs_3_ar_payload_prot = io_input_ar_payload_prot;
  assign _zz_readRspIndex = pendingSels[3];
  assign _zz_readRspIndex_1 = (pendingSels[1] || _zz_readRspIndex);
  assign _zz_readRspIndex_2 = (pendingSels[2] || _zz_readRspIndex);
  assign readRspIndex = {_zz_readRspIndex_2,_zz_readRspIndex_1};
  always @(*) begin
    io_input_r_valid = (|{io_outputs_3_r_valid,{io_outputs_2_r_valid,{io_outputs_1_r_valid,io_outputs_0_r_valid}}});
    if(errorSlave_io_axi_r_valid) begin
      io_input_r_valid = 1'b1;
    end
  end

  assign io_input_r_payload_data = _zz_io_input_r_payload_data;
  always @(*) begin
    io_input_r_payload_resp = _zz_io_input_r_payload_resp;
    if(pendingError) begin
      io_input_r_payload_resp = errorSlave_io_axi_r_payload_resp;
    end
  end

  always @(*) begin
    io_input_r_payload_last = _zz_io_input_r_payload_last;
    if(pendingError) begin
      io_input_r_payload_last = errorSlave_io_axi_r_payload_last;
    end
  end

  assign io_outputs_0_r_ready = io_input_r_ready;
  assign io_outputs_1_r_ready = io_input_r_ready;
  assign io_outputs_2_r_ready = io_input_r_ready;
  assign io_outputs_3_r_ready = io_input_r_ready;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      pendingCmdCounter_value <= 3'b000;
      pendingSels <= 4'b0000;
      pendingError <= 1'b0;
    end else begin
      pendingCmdCounter_value <= pendingCmdCounter_valueNext;
      if(io_input_ar_ready) begin
        pendingSels <= decodedCmdSels;
      end
      if(io_input_ar_ready) begin
        pendingError <= decodedCmdError;
      end
    end
  end


endmodule

module Apb3Router (
  input  wire [19:0]   io_input_PADDR,
  input  wire [1:0]    io_input_PSEL,
  input  wire          io_input_PENABLE,
  output wire          io_input_PREADY,
  input  wire          io_input_PWRITE,
  input  wire [31:0]   io_input_PWDATA,
  output wire [31:0]   io_input_PRDATA,
  output wire          io_input_PSLVERROR,
  output wire [19:0]   io_outputs_0_PADDR,
  output wire [0:0]    io_outputs_0_PSEL,
  output wire          io_outputs_0_PENABLE,
  input  wire          io_outputs_0_PREADY,
  output wire          io_outputs_0_PWRITE,
  output wire [31:0]   io_outputs_0_PWDATA,
  input  wire [31:0]   io_outputs_0_PRDATA,
  input  wire          io_outputs_0_PSLVERROR,
  output wire [19:0]   io_outputs_1_PADDR,
  output wire [0:0]    io_outputs_1_PSEL,
  output wire          io_outputs_1_PENABLE,
  input  wire          io_outputs_1_PREADY,
  output wire          io_outputs_1_PWRITE,
  output wire [31:0]   io_outputs_1_PWDATA,
  input  wire [31:0]   io_outputs_1_PRDATA,
  input  wire          io_outputs_1_PSLVERROR,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 _zz_io_input_PREADY;
  reg        [31:0]   _zz_io_input_PRDATA;
  reg                 _zz_io_input_PSLVERROR;
  wire                _zz_selIndex;
  reg        [0:0]    selIndex;

  always @(*) begin
    case(selIndex)
      1'b0 : begin
        _zz_io_input_PREADY = io_outputs_0_PREADY;
        _zz_io_input_PRDATA = io_outputs_0_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_0_PSLVERROR;
      end
      default : begin
        _zz_io_input_PREADY = io_outputs_1_PREADY;
        _zz_io_input_PRDATA = io_outputs_1_PRDATA;
        _zz_io_input_PSLVERROR = io_outputs_1_PSLVERROR;
      end
    endcase
  end

  assign io_outputs_0_PADDR = io_input_PADDR;
  assign io_outputs_0_PENABLE = io_input_PENABLE;
  assign io_outputs_0_PSEL[0] = io_input_PSEL[0];
  assign io_outputs_0_PWRITE = io_input_PWRITE;
  assign io_outputs_0_PWDATA = io_input_PWDATA;
  assign io_outputs_1_PADDR = io_input_PADDR;
  assign io_outputs_1_PENABLE = io_input_PENABLE;
  assign io_outputs_1_PSEL[0] = io_input_PSEL[1];
  assign io_outputs_1_PWRITE = io_input_PWRITE;
  assign io_outputs_1_PWDATA = io_input_PWDATA;
  assign _zz_selIndex = io_input_PSEL[1];
  assign io_input_PREADY = _zz_io_input_PREADY;
  assign io_input_PRDATA = _zz_io_input_PRDATA;
  assign io_input_PSLVERROR = _zz_io_input_PSLVERROR;
  always @(posedge clk) begin
    selIndex <= _zz_selIndex;
  end


endmodule

module Apb3Decoder (
  input  wire [19:0]   io_input_PADDR,
  input  wire [0:0]    io_input_PSEL,
  input  wire          io_input_PENABLE,
  output reg           io_input_PREADY,
  input  wire          io_input_PWRITE,
  input  wire [31:0]   io_input_PWDATA,
  output wire [31:0]   io_input_PRDATA,
  output reg           io_input_PSLVERROR,
  output wire [19:0]   io_output_PADDR,
  output reg  [1:0]    io_output_PSEL,
  output wire          io_output_PENABLE,
  input  wire          io_output_PREADY,
  output wire          io_output_PWRITE,
  output wire [31:0]   io_output_PWDATA,
  input  wire [31:0]   io_output_PRDATA,
  input  wire          io_output_PSLVERROR
);

  wire                when_Apb3Decoder_l88;

  assign io_output_PADDR = io_input_PADDR;
  assign io_output_PENABLE = io_input_PENABLE;
  assign io_output_PWRITE = io_input_PWRITE;
  assign io_output_PWDATA = io_input_PWDATA;
  always @(*) begin
    io_output_PSEL[0] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h0) && io_input_PSEL[0]);
    io_output_PSEL[1] = (((io_input_PADDR & (~ 20'h00fff)) == 20'h10000) && io_input_PSEL[0]);
  end

  always @(*) begin
    io_input_PREADY = io_output_PREADY;
    if(when_Apb3Decoder_l88) begin
      io_input_PREADY = 1'b1;
    end
  end

  assign io_input_PRDATA = io_output_PRDATA;
  always @(*) begin
    io_input_PSLVERROR = io_output_PSLVERROR;
    if(when_Apb3Decoder_l88) begin
      io_input_PSLVERROR = 1'b1;
    end
  end

  assign when_Apb3Decoder_l88 = (io_input_PSEL[0] && (io_output_PSEL == 2'b00));

endmodule

module Apb3UartCtrl (
  input  wire [4:0]    io_apb_PADDR,
  input  wire [0:0]    io_apb_PSEL,
  input  wire          io_apb_PENABLE,
  output wire          io_apb_PREADY,
  input  wire          io_apb_PWRITE,
  input  wire [31:0]   io_apb_PWDATA,
  output reg  [31:0]   io_apb_PRDATA,
  output wire          io_uart_txd,
  input  wire          io_uart_rxd,
  output wire          io_interrupt,
  input  wire          clk,
  input  wire          reset_n
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;

  reg                 core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready;
  wire                uartCtrl_1_io_write_ready;
  wire                uartCtrl_1_io_read_valid;
  wire       [7:0]    uartCtrl_1_io_read_payload;
  wire                uartCtrl_1_io_uart_txd;
  wire                uartCtrl_1_io_readError;
  wire                uartCtrl_1_io_readBreak;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  wire                bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy;
  wire       [4:0]    bridge_write_streamUnbuffered_queueWithOccupancy_io_availability;
  wire                core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_push_ready;
  wire                core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
  wire       [7:0]    core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  wire       [4:0]    core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_occupancy;
  wire       [4:0]    core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_availability;
  wire       [0:0]    _zz_bridge_misc_readError;
  wire       [0:0]    _zz_bridge_misc_readOverflowError;
  wire       [0:0]    _zz_bridge_misc_breakDetected;
  wire       [0:0]    _zz_bridge_misc_doBreak;
  wire       [0:0]    _zz_bridge_misc_doBreak_1;
  wire       [4:0]    _zz_io_apb_PRDATA;
  wire                busCtrl_readErrorFlag;
  wire                busCtrl_writeErrorFlag;
  wire                busCtrl_askWrite;
  wire                busCtrl_askRead;
  wire                busCtrl_doWrite;
  wire                busCtrl_doRead;
  wire                bridge_busCtrlWrapped_readErrorFlag;
  wire                bridge_busCtrlWrapped_writeErrorFlag;
  reg        [2:0]    bridge_uartConfigReg_frame_dataLength;
  reg        [0:0]    bridge_uartConfigReg_frame_stop;
  reg        [1:0]    bridge_uartConfigReg_frame_parity;
  reg        [19:0]   bridge_uartConfigReg_clockDivider;
  reg                 _zz_bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_valid;
  wire                bridge_write_streamUnbuffered_ready;
  wire       [7:0]    bridge_write_streamUnbuffered_payload;
  reg                 bridge_read_streamBreaked_valid;
  reg                 bridge_read_streamBreaked_ready;
  wire       [7:0]    bridge_read_streamBreaked_payload;
  reg                 bridge_interruptCtrl_writeIntEnable;
  reg                 bridge_interruptCtrl_readIntEnable;
  wire                bridge_interruptCtrl_readInt;
  wire                bridge_interruptCtrl_writeInt;
  wire                bridge_interruptCtrl_interrupt;
  reg                 bridge_misc_readError;
  reg                 when_BusSlaveFactory_l341;
  wire                when_BusSlaveFactory_l347;
  reg                 bridge_misc_readOverflowError;
  reg                 when_BusSlaveFactory_l341_1;
  wire                when_BusSlaveFactory_l347_1;
  wire                core_uart_uartCtrl_1_io_read_isStall;
  reg                 bridge_misc_breakDetected;
  reg                 core_uart_uartCtrl_1_io_readBreak_regNext;
  wire                when_UartCtrl_l155;
  reg                 when_BusSlaveFactory_l341_2;
  wire                when_BusSlaveFactory_l347_2;
  reg                 bridge_misc_doBreak;
  reg                 when_BusSlaveFactory_l377;
  wire                when_BusSlaveFactory_l379;
  reg                 when_BusSlaveFactory_l341_3;
  wire                when_BusSlaveFactory_l347_3;
  wire       [1:0]    _zz_bridge_uartConfigReg_frame_parity;
  wire       [0:0]    _zz_bridge_uartConfigReg_frame_stop;
  wire                when_Apb3SlaveFactory_l81;
  `ifndef SYNTHESIS
  reg [23:0] bridge_uartConfigReg_frame_stop_string;
  reg [31:0] bridge_uartConfigReg_frame_parity_string;
  reg [31:0] _zz_bridge_uartConfigReg_frame_parity_string;
  reg [23:0] _zz_bridge_uartConfigReg_frame_stop_string;
  `endif


  assign _zz_bridge_misc_readError = 1'b0;
  assign _zz_bridge_misc_readOverflowError = 1'b0;
  assign _zz_bridge_misc_breakDetected = 1'b0;
  assign _zz_bridge_misc_doBreak = 1'b1;
  assign _zz_bridge_misc_doBreak_1 = 1'b0;
  assign _zz_io_apb_PRDATA = (5'h10 - bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy);
  UartCtrl uartCtrl_1 (
    .io_config_frame_dataLength (bridge_uartConfigReg_frame_dataLength[2:0]                          ), //i
    .io_config_frame_stop       (bridge_uartConfigReg_frame_stop                                     ), //i
    .io_config_frame_parity     (bridge_uartConfigReg_frame_parity[1:0]                              ), //i
    .io_config_clockDivider     (bridge_uartConfigReg_clockDivider[19:0]                             ), //i
    .io_write_valid             (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid       ), //i
    .io_write_ready             (uartCtrl_1_io_write_ready                                           ), //o
    .io_write_payload           (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0]), //i
    .io_read_valid              (uartCtrl_1_io_read_valid                                            ), //o
    .io_read_ready              (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_push_ready       ), //i
    .io_read_payload            (uartCtrl_1_io_read_payload[7:0]                                     ), //o
    .io_uart_txd                (uartCtrl_1_io_uart_txd                                              ), //o
    .io_uart_rxd                (io_uart_rxd                                                         ), //i
    .io_readError               (uartCtrl_1_io_readError                                             ), //o
    .io_writeBreak              (bridge_misc_doBreak                                                 ), //i
    .io_readBreak               (uartCtrl_1_io_readBreak                                             ), //o
    .clk                        (clk                                                                 ), //i
    .reset_n                    (reset_n                                                             )  //i
  );
  StreamFifo bridge_write_streamUnbuffered_queueWithOccupancy (
    .io_push_valid   (bridge_write_streamUnbuffered_valid                                  ), //i
    .io_push_ready   (bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready       ), //o
    .io_push_payload (bridge_write_streamUnbuffered_payload[7:0]                           ), //i
    .io_pop_valid    (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid        ), //o
    .io_pop_ready    (uartCtrl_1_io_write_ready                                            ), //i
    .io_pop_payload  (bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_payload[7:0] ), //o
    .io_flush        (1'b0                                                                 ), //i
    .io_occupancy    (bridge_write_streamUnbuffered_queueWithOccupancy_io_occupancy[4:0]   ), //o
    .io_availability (bridge_write_streamUnbuffered_queueWithOccupancy_io_availability[4:0]), //o
    .clk             (clk                                                                  ), //i
    .reset_n         (reset_n                                                              )  //i
  );
  StreamFifo core_uart_uartCtrl_1_io_read_queueWithOccupancy (
    .io_push_valid   (uartCtrl_1_io_read_valid                                            ), //i
    .io_push_ready   (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_push_ready       ), //o
    .io_push_payload (uartCtrl_1_io_read_payload[7:0]                                     ), //i
    .io_pop_valid    (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid        ), //o
    .io_pop_ready    (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready        ), //i
    .io_pop_payload  (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload[7:0] ), //o
    .io_flush        (1'b0                                                                ), //i
    .io_occupancy    (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_occupancy[4:0]   ), //o
    .io_availability (core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_availability[4:0]), //o
    .clk             (clk                                                                 ), //i
    .reset_n         (reset_n                                                             )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(bridge_uartConfigReg_frame_stop)
      UartStopType_ONE : bridge_uartConfigReg_frame_stop_string = "ONE";
      UartStopType_TWO : bridge_uartConfigReg_frame_stop_string = "TWO";
      default : bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(bridge_uartConfigReg_frame_parity)
      UartParityType_NONE : bridge_uartConfigReg_frame_parity_string = "NONE";
      UartParityType_EVEN : bridge_uartConfigReg_frame_parity_string = "EVEN";
      UartParityType_ODD : bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_bridge_uartConfigReg_frame_parity)
      UartParityType_NONE : _zz_bridge_uartConfigReg_frame_parity_string = "NONE";
      UartParityType_EVEN : _zz_bridge_uartConfigReg_frame_parity_string = "EVEN";
      UartParityType_ODD : _zz_bridge_uartConfigReg_frame_parity_string = "ODD ";
      default : _zz_bridge_uartConfigReg_frame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_bridge_uartConfigReg_frame_stop)
      UartStopType_ONE : _zz_bridge_uartConfigReg_frame_stop_string = "ONE";
      UartStopType_TWO : _zz_bridge_uartConfigReg_frame_stop_string = "TWO";
      default : _zz_bridge_uartConfigReg_frame_stop_string = "???";
    endcase
  end
  `endif

  assign io_uart_txd = uartCtrl_1_io_uart_txd;
  assign busCtrl_readErrorFlag = 1'b0;
  assign busCtrl_writeErrorFlag = 1'b0;
  assign io_apb_PREADY = 1'b1;
  always @(*) begin
    io_apb_PRDATA = 32'h0;
    case(io_apb_PADDR)
      5'h0 : begin
        io_apb_PRDATA[16 : 16] = (bridge_read_streamBreaked_valid ^ 1'b0);
        io_apb_PRDATA[7 : 0] = bridge_read_streamBreaked_payload;
      end
      5'h04 : begin
        io_apb_PRDATA[20 : 16] = _zz_io_apb_PRDATA;
        io_apb_PRDATA[15 : 15] = bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid;
        io_apb_PRDATA[28 : 24] = core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_occupancy;
        io_apb_PRDATA[0 : 0] = bridge_interruptCtrl_writeIntEnable;
        io_apb_PRDATA[1 : 1] = bridge_interruptCtrl_readIntEnable;
        io_apb_PRDATA[8 : 8] = bridge_interruptCtrl_writeInt;
        io_apb_PRDATA[9 : 9] = bridge_interruptCtrl_readInt;
      end
      5'h10 : begin
        io_apb_PRDATA[0 : 0] = bridge_misc_readError;
        io_apb_PRDATA[1 : 1] = bridge_misc_readOverflowError;
        io_apb_PRDATA[8 : 8] = uartCtrl_1_io_readBreak;
        io_apb_PRDATA[9 : 9] = bridge_misc_breakDetected;
      end
      default : begin
      end
    endcase
  end

  assign busCtrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign busCtrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign busCtrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign busCtrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign bridge_busCtrlWrapped_readErrorFlag = 1'b0;
  assign bridge_busCtrlWrapped_writeErrorFlag = 1'b0;
  always @(*) begin
    _zz_bridge_write_streamUnbuffered_valid = 1'b0;
    case(io_apb_PADDR)
      5'h0 : begin
        if(busCtrl_doWrite) begin
          _zz_bridge_write_streamUnbuffered_valid = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_write_streamUnbuffered_valid = _zz_bridge_write_streamUnbuffered_valid;
  assign bridge_write_streamUnbuffered_payload = io_apb_PWDATA[7 : 0];
  assign bridge_write_streamUnbuffered_ready = bridge_write_streamUnbuffered_queueWithOccupancy_io_push_ready;
  always @(*) begin
    bridge_read_streamBreaked_valid = core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_valid;
    if(uartCtrl_1_io_readBreak) begin
      bridge_read_streamBreaked_valid = 1'b0;
    end
  end

  always @(*) begin
    core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready = bridge_read_streamBreaked_ready;
    if(uartCtrl_1_io_readBreak) begin
      core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_ready = 1'b1;
    end
  end

  assign bridge_read_streamBreaked_payload = core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_pop_payload;
  always @(*) begin
    bridge_read_streamBreaked_ready = 1'b0;
    case(io_apb_PADDR)
      5'h0 : begin
        if(busCtrl_doRead) begin
          bridge_read_streamBreaked_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign bridge_interruptCtrl_readInt = (bridge_interruptCtrl_readIntEnable && bridge_read_streamBreaked_valid);
  assign bridge_interruptCtrl_writeInt = (bridge_interruptCtrl_writeIntEnable && (! bridge_write_streamUnbuffered_queueWithOccupancy_io_pop_valid));
  assign bridge_interruptCtrl_interrupt = (bridge_interruptCtrl_readInt || bridge_interruptCtrl_writeInt);
  always @(*) begin
    when_BusSlaveFactory_l341 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l341 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l347 = io_apb_PWDATA[0];
  always @(*) begin
    when_BusSlaveFactory_l341_1 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l341_1 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l347_1 = io_apb_PWDATA[1];
  assign core_uart_uartCtrl_1_io_read_isStall = (uartCtrl_1_io_read_valid && (! core_uart_uartCtrl_1_io_read_queueWithOccupancy_io_push_ready));
  assign when_UartCtrl_l155 = (uartCtrl_1_io_readBreak && (! core_uart_uartCtrl_1_io_readBreak_regNext));
  always @(*) begin
    when_BusSlaveFactory_l341_2 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l341_2 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l347_2 = io_apb_PWDATA[9];
  always @(*) begin
    when_BusSlaveFactory_l377 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l377 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l379 = io_apb_PWDATA[10];
  always @(*) begin
    when_BusSlaveFactory_l341_3 = 1'b0;
    case(io_apb_PADDR)
      5'h10 : begin
        if(busCtrl_doWrite) begin
          when_BusSlaveFactory_l341_3 = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  assign when_BusSlaveFactory_l347_3 = io_apb_PWDATA[11];
  assign io_interrupt = bridge_interruptCtrl_interrupt;
  assign _zz_bridge_uartConfigReg_frame_parity = io_apb_PWDATA[9 : 8];
  assign _zz_bridge_uartConfigReg_frame_stop = io_apb_PWDATA[16 : 16];
  assign when_Apb3SlaveFactory_l81 = ((io_apb_PADDR & (~ 5'h03)) == 5'h08);
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      bridge_uartConfigReg_clockDivider <= 20'h0;
      bridge_uartConfigReg_clockDivider <= 20'h00052;
      bridge_uartConfigReg_frame_dataLength <= 3'b111;
      bridge_uartConfigReg_frame_parity <= UartParityType_NONE;
      bridge_uartConfigReg_frame_stop <= UartStopType_ONE;
      bridge_interruptCtrl_writeIntEnable <= 1'b0;
      bridge_interruptCtrl_readIntEnable <= 1'b0;
      bridge_misc_readError <= 1'b0;
      bridge_misc_readOverflowError <= 1'b0;
      bridge_misc_breakDetected <= 1'b0;
      bridge_misc_doBreak <= 1'b0;
    end else begin
      if(when_BusSlaveFactory_l341) begin
        if(when_BusSlaveFactory_l347) begin
          bridge_misc_readError <= _zz_bridge_misc_readError[0];
        end
      end
      if(uartCtrl_1_io_readError) begin
        bridge_misc_readError <= 1'b1;
      end
      if(when_BusSlaveFactory_l341_1) begin
        if(when_BusSlaveFactory_l347_1) begin
          bridge_misc_readOverflowError <= _zz_bridge_misc_readOverflowError[0];
        end
      end
      if(core_uart_uartCtrl_1_io_read_isStall) begin
        bridge_misc_readOverflowError <= 1'b1;
      end
      if(when_UartCtrl_l155) begin
        bridge_misc_breakDetected <= 1'b1;
      end
      if(when_BusSlaveFactory_l341_2) begin
        if(when_BusSlaveFactory_l347_2) begin
          bridge_misc_breakDetected <= _zz_bridge_misc_breakDetected[0];
        end
      end
      if(when_BusSlaveFactory_l377) begin
        if(when_BusSlaveFactory_l379) begin
          bridge_misc_doBreak <= _zz_bridge_misc_doBreak[0];
        end
      end
      if(when_BusSlaveFactory_l341_3) begin
        if(when_BusSlaveFactory_l347_3) begin
          bridge_misc_doBreak <= _zz_bridge_misc_doBreak_1[0];
        end
      end
      case(io_apb_PADDR)
        5'h0c : begin
          if(busCtrl_doWrite) begin
            bridge_uartConfigReg_frame_dataLength <= io_apb_PWDATA[2 : 0];
            bridge_uartConfigReg_frame_parity <= _zz_bridge_uartConfigReg_frame_parity;
            bridge_uartConfigReg_frame_stop <= _zz_bridge_uartConfigReg_frame_stop;
          end
        end
        5'h04 : begin
          if(busCtrl_doWrite) begin
            bridge_interruptCtrl_writeIntEnable <= io_apb_PWDATA[0];
            bridge_interruptCtrl_readIntEnable <= io_apb_PWDATA[1];
          end
        end
        default : begin
        end
      endcase
      if(when_Apb3SlaveFactory_l81) begin
        if(busCtrl_doWrite) begin
          bridge_uartConfigReg_clockDivider[19 : 0] <= io_apb_PWDATA[19 : 0];
        end
      end
    end
  end

  always @(posedge clk) begin
    core_uart_uartCtrl_1_io_readBreak_regNext <= uartCtrl_1_io_readBreak;
  end


endmodule

module Apb3Gpio2 (
  input  wire [3:0]    io_gpio_read,
  output reg  [3:0]    io_gpio_write,
  output reg  [3:0]    io_gpio_writeEnable,
  input  wire [11:0]   io_bus_PADDR,
  input  wire [0:0]    io_bus_PSEL,
  input  wire          io_bus_PENABLE,
  output wire          io_bus_PREADY,
  input  wire          io_bus_PWRITE,
  input  wire [31:0]   io_bus_PWDATA,
  output reg  [31:0]   io_bus_PRDATA,
  output wire          io_bus_PSLVERROR,
  output reg  [3:0]    io_interrupt,
  input  wire          clk,
  input  wire          reset_n
);

  wire                mapper_readErrorFlag;
  wire                mapper_writeErrorFlag;
  wire                mapper_askWrite;
  wire                mapper_askRead;
  wire                mapper_doWrite;
  wire                mapper_doRead;
  reg        [3:0]    io_gpio_read_delay_1;
  reg        [3:0]    syncronized;
  reg        [3:0]    last;
  reg                 _zz_io_gpio_write;
  reg                 _zz_io_gpio_writeEnable;
  reg                 _zz_io_gpio_write_1;
  reg                 _zz_io_gpio_writeEnable_1;
  reg                 _zz_io_gpio_write_2;
  reg                 _zz_io_gpio_writeEnable_2;
  reg                 _zz_io_gpio_write_3;
  reg                 _zz_io_gpio_writeEnable_3;
  reg        [3:0]    interrupt_enable_high;
  reg        [3:0]    interrupt_enable_low;
  reg        [3:0]    interrupt_enable_rise;
  reg        [3:0]    interrupt_enable_fall;
  wire       [3:0]    interrupt_valid;
  function [3:0] zz_io_interrupt(input dummy);
    begin
      zz_io_interrupt[0] = 1'b0;
      zz_io_interrupt[1] = 1'b0;
      zz_io_interrupt[2] = 1'b0;
      zz_io_interrupt[3] = 1'b0;
    end
  endfunction
  wire [3:0] _zz_1;
  function [3:0] zz_interrupt_enable_rise(input dummy);
    begin
      zz_interrupt_enable_rise[0] = 1'b0;
      zz_interrupt_enable_rise[1] = 1'b0;
      zz_interrupt_enable_rise[2] = 1'b0;
      zz_interrupt_enable_rise[3] = 1'b0;
    end
  endfunction
  wire [3:0] _zz_2;
  function [3:0] zz_interrupt_enable_fall(input dummy);
    begin
      zz_interrupt_enable_fall[0] = 1'b0;
      zz_interrupt_enable_fall[1] = 1'b0;
      zz_interrupt_enable_fall[2] = 1'b0;
      zz_interrupt_enable_fall[3] = 1'b0;
    end
  endfunction
  wire [3:0] _zz_3;
  function [3:0] zz_interrupt_enable_high(input dummy);
    begin
      zz_interrupt_enable_high[0] = 1'b0;
      zz_interrupt_enable_high[1] = 1'b0;
      zz_interrupt_enable_high[2] = 1'b0;
      zz_interrupt_enable_high[3] = 1'b0;
    end
  endfunction
  wire [3:0] _zz_4;
  function [3:0] zz_interrupt_enable_low(input dummy);
    begin
      zz_interrupt_enable_low[0] = 1'b0;
      zz_interrupt_enable_low[1] = 1'b0;
      zz_interrupt_enable_low[2] = 1'b0;
      zz_interrupt_enable_low[3] = 1'b0;
    end
  endfunction
  wire [3:0] _zz_5;

  assign mapper_readErrorFlag = 1'b0;
  assign mapper_writeErrorFlag = 1'b0;
  assign io_bus_PREADY = 1'b1;
  always @(*) begin
    io_bus_PRDATA = 32'h0;
    case(io_bus_PADDR)
      12'h0 : begin
        io_bus_PRDATA[0 : 0] = syncronized[0];
        io_bus_PRDATA[1 : 1] = syncronized[1];
        io_bus_PRDATA[2 : 2] = syncronized[2];
        io_bus_PRDATA[3 : 3] = syncronized[3];
      end
      12'h004 : begin
        io_bus_PRDATA[0 : 0] = _zz_io_gpio_write;
        io_bus_PRDATA[1 : 1] = _zz_io_gpio_write_1;
        io_bus_PRDATA[2 : 2] = _zz_io_gpio_write_2;
        io_bus_PRDATA[3 : 3] = _zz_io_gpio_write_3;
      end
      12'h008 : begin
        io_bus_PRDATA[0 : 0] = _zz_io_gpio_writeEnable;
        io_bus_PRDATA[1 : 1] = _zz_io_gpio_writeEnable_1;
        io_bus_PRDATA[2 : 2] = _zz_io_gpio_writeEnable_2;
        io_bus_PRDATA[3 : 3] = _zz_io_gpio_writeEnable_3;
      end
      default : begin
      end
    endcase
  end

  assign mapper_askWrite = ((io_bus_PSEL[0] && io_bus_PENABLE) && io_bus_PWRITE);
  assign mapper_askRead = ((io_bus_PSEL[0] && io_bus_PENABLE) && (! io_bus_PWRITE));
  assign mapper_doWrite = (((io_bus_PSEL[0] && io_bus_PENABLE) && io_bus_PREADY) && io_bus_PWRITE);
  assign mapper_doRead = (((io_bus_PSEL[0] && io_bus_PENABLE) && io_bus_PREADY) && (! io_bus_PWRITE));
  assign io_bus_PSLVERROR = ((mapper_doWrite && mapper_writeErrorFlag) || (mapper_doRead && mapper_readErrorFlag));
  always @(*) begin
    io_gpio_write[0] = _zz_io_gpio_write;
    io_gpio_write[1] = _zz_io_gpio_write_1;
    io_gpio_write[2] = _zz_io_gpio_write_2;
    io_gpio_write[3] = _zz_io_gpio_write_3;
  end

  always @(*) begin
    io_gpio_writeEnable[0] = _zz_io_gpio_writeEnable;
    io_gpio_writeEnable[1] = _zz_io_gpio_writeEnable_1;
    io_gpio_writeEnable[2] = _zz_io_gpio_writeEnable_2;
    io_gpio_writeEnable[3] = _zz_io_gpio_writeEnable_3;
  end

  assign interrupt_valid = ((((interrupt_enable_high & syncronized) | (interrupt_enable_low & (~ syncronized))) | (interrupt_enable_rise & (syncronized & (~ last)))) | (interrupt_enable_fall & ((~ syncronized) & last)));
  assign _zz_1 = zz_io_interrupt(1'b0);
  always @(*) io_interrupt = _zz_1;
  assign _zz_2 = zz_interrupt_enable_rise(1'b0);
  always @(*) interrupt_enable_rise = _zz_2;
  assign _zz_3 = zz_interrupt_enable_fall(1'b0);
  always @(*) interrupt_enable_fall = _zz_3;
  assign _zz_4 = zz_interrupt_enable_high(1'b0);
  always @(*) interrupt_enable_high = _zz_4;
  assign _zz_5 = zz_interrupt_enable_low(1'b0);
  always @(*) interrupt_enable_low = _zz_5;
  always @(posedge clk) begin
    io_gpio_read_delay_1 <= io_gpio_read;
    syncronized <= io_gpio_read_delay_1;
    last <= syncronized;
    case(io_bus_PADDR)
      12'h004 : begin
        if(mapper_doWrite) begin
          _zz_io_gpio_write <= io_bus_PWDATA[0];
          _zz_io_gpio_write_1 <= io_bus_PWDATA[1];
          _zz_io_gpio_write_2 <= io_bus_PWDATA[2];
          _zz_io_gpio_write_3 <= io_bus_PWDATA[3];
        end
      end
      default : begin
      end
    endcase
  end

  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      _zz_io_gpio_writeEnable <= 1'b0;
      _zz_io_gpio_writeEnable_1 <= 1'b0;
      _zz_io_gpio_writeEnable_2 <= 1'b0;
      _zz_io_gpio_writeEnable_3 <= 1'b0;
    end else begin
      case(io_bus_PADDR)
        12'h008 : begin
          if(mapper_doWrite) begin
            _zz_io_gpio_writeEnable <= io_bus_PWDATA[0];
            _zz_io_gpio_writeEnable_1 <= io_bus_PWDATA[1];
            _zz_io_gpio_writeEnable_2 <= io_bus_PWDATA[2];
            _zz_io_gpio_writeEnable_3 <= io_bus_PWDATA[3];
          end
        end
        default : begin
        end
      endcase
    end
  end


endmodule

module Axi4SharedToApb3Bridge (
  input  wire          io_axi_arw_valid,
  output reg           io_axi_arw_ready,
  input  wire [19:0]   io_axi_arw_payload_addr,
  input  wire [3:0]    io_axi_arw_payload_id,
  input  wire [7:0]    io_axi_arw_payload_len,
  input  wire [2:0]    io_axi_arw_payload_size,
  input  wire [1:0]    io_axi_arw_payload_burst,
  input  wire          io_axi_arw_payload_write,
  input  wire          io_axi_w_valid,
  output reg           io_axi_w_ready,
  input  wire [31:0]   io_axi_w_payload_data,
  input  wire [3:0]    io_axi_w_payload_strb,
  input  wire          io_axi_w_payload_last,
  output reg           io_axi_b_valid,
  input  wire          io_axi_b_ready,
  output wire [3:0]    io_axi_b_payload_id,
  output wire [1:0]    io_axi_b_payload_resp,
  output reg           io_axi_r_valid,
  input  wire          io_axi_r_ready,
  output wire [31:0]   io_axi_r_payload_data,
  output wire [3:0]    io_axi_r_payload_id,
  output wire [1:0]    io_axi_r_payload_resp,
  output wire          io_axi_r_payload_last,
  output wire [19:0]   io_apb_PADDR,
  output reg  [0:0]    io_apb_PSEL,
  output reg           io_apb_PENABLE,
  input  wire          io_apb_PREADY,
  output wire          io_apb_PWRITE,
  output wire [31:0]   io_apb_PWDATA,
  input  wire [31:0]   io_apb_PRDATA,
  input  wire          io_apb_PSLVERROR,
  input  wire          clk,
  input  wire          reset_n
);
  localparam Axi4ToApb3BridgePhase_SETUP = 2'd0;
  localparam Axi4ToApb3BridgePhase_ACCESS_1 = 2'd1;
  localparam Axi4ToApb3BridgePhase_RESPONSE = 2'd2;

  reg        [1:0]    phase;
  reg                 write;
  reg        [31:0]   readedData;
  reg        [3:0]    id;
  wire                when_Axi4SharedToApb3Bridge_l91;
  wire                when_Axi4SharedToApb3Bridge_l97;
  `ifndef SYNTHESIS
  reg [63:0] phase_string;
  `endif


  `ifndef SYNTHESIS
  always @(*) begin
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : phase_string = "SETUP   ";
      Axi4ToApb3BridgePhase_ACCESS_1 : phase_string = "ACCESS_1";
      Axi4ToApb3BridgePhase_RESPONSE : phase_string = "RESPONSE";
      default : phase_string = "????????";
    endcase
  end
  `endif

  always @(*) begin
    io_axi_arw_ready = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          if(when_Axi4SharedToApb3Bridge_l97) begin
            io_axi_arw_ready = 1'b1;
          end
        end
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          io_axi_arw_ready = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axi_w_ready = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          if(when_Axi4SharedToApb3Bridge_l97) begin
            io_axi_w_ready = 1'b1;
          end
        end
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          io_axi_w_ready = write;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axi_b_valid = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
      end
      default : begin
        if(write) begin
          io_axi_b_valid = 1'b1;
        end
      end
    endcase
  end

  always @(*) begin
    io_axi_r_valid = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
      end
      default : begin
        if(!write) begin
          io_axi_r_valid = 1'b1;
        end
      end
    endcase
  end

  always @(*) begin
    io_apb_PSEL[0] = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        if(when_Axi4SharedToApb3Bridge_l91) begin
          io_apb_PSEL[0] = 1'b1;
          if(when_Axi4SharedToApb3Bridge_l97) begin
            io_apb_PSEL[0] = 1'b0;
          end
        end
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        io_apb_PSEL[0] = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_apb_PENABLE = 1'b0;
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        io_apb_PENABLE = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign when_Axi4SharedToApb3Bridge_l91 = (io_axi_arw_valid && ((! io_axi_arw_payload_write) || io_axi_w_valid));
  assign when_Axi4SharedToApb3Bridge_l97 = (io_axi_arw_payload_write && (io_axi_w_payload_strb == 4'b0000));
  assign io_apb_PADDR = io_axi_arw_payload_addr;
  assign io_apb_PWDATA = io_axi_w_payload_data;
  assign io_apb_PWRITE = io_axi_arw_payload_write;
  assign io_axi_r_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_b_payload_resp = {io_apb_PSLVERROR,1'b0};
  assign io_axi_r_payload_id = id;
  assign io_axi_b_payload_id = id;
  assign io_axi_r_payload_data = readedData;
  assign io_axi_r_payload_last = 1'b1;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      phase <= Axi4ToApb3BridgePhase_SETUP;
    end else begin
      case(phase)
        Axi4ToApb3BridgePhase_SETUP : begin
          if(when_Axi4SharedToApb3Bridge_l91) begin
            phase <= Axi4ToApb3BridgePhase_ACCESS_1;
            if(when_Axi4SharedToApb3Bridge_l97) begin
              phase <= Axi4ToApb3BridgePhase_RESPONSE;
            end
          end
        end
        Axi4ToApb3BridgePhase_ACCESS_1 : begin
          if(io_apb_PREADY) begin
            phase <= Axi4ToApb3BridgePhase_RESPONSE;
          end
        end
        default : begin
          if(write) begin
            if(io_axi_b_ready) begin
              phase <= Axi4ToApb3BridgePhase_SETUP;
            end
          end else begin
            if(io_axi_r_ready) begin
              phase <= Axi4ToApb3BridgePhase_SETUP;
            end
          end
        end
      endcase
    end
  end

  always @(posedge clk) begin
    case(phase)
      Axi4ToApb3BridgePhase_SETUP : begin
        write <= io_axi_arw_payload_write;
        id <= io_axi_arw_payload_id;
      end
      Axi4ToApb3BridgePhase_ACCESS_1 : begin
        if(io_apb_PREADY) begin
          readedData <= io_apb_PRDATA;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

//Axi4SharedSram1PBlock_3 replaced by Axi4SharedSram1PBlock

//Axi4SharedSram1PBlock_2 replaced by Axi4SharedSram1PBlock

//Axi4SharedSram1PBlock_1 replaced by Axi4SharedSram1PBlock

module Axi4SharedSram1PBlock (
  input  wire          io_axi_arw_valid,
  output reg           io_axi_arw_ready,
  input  wire [31:0]   io_axi_arw_payload_addr,
  input  wire [3:0]    io_axi_arw_payload_id,
  input  wire [3:0]    io_axi_arw_payload_region,
  input  wire [7:0]    io_axi_arw_payload_len,
  input  wire [2:0]    io_axi_arw_payload_size,
  input  wire [1:0]    io_axi_arw_payload_burst,
  input  wire [0:0]    io_axi_arw_payload_lock,
  input  wire [3:0]    io_axi_arw_payload_cache,
  input  wire [3:0]    io_axi_arw_payload_qos,
  input  wire [2:0]    io_axi_arw_payload_prot,
  input  wire          io_axi_arw_payload_write,
  input  wire          io_axi_w_valid,
  output wire          io_axi_w_ready,
  input  wire [31:0]   io_axi_w_payload_data,
  input  wire [3:0]    io_axi_w_payload_strb,
  input  wire          io_axi_w_payload_last,
  output wire          io_axi_b_valid,
  input  wire          io_axi_b_ready,
  output wire [3:0]    io_axi_b_payload_id,
  output wire [1:0]    io_axi_b_payload_resp,
  output wire          io_axi_r_valid,
  input  wire          io_axi_r_ready,
  output wire [31:0]   io_axi_r_payload_data,
  output wire [3:0]    io_axi_r_payload_id,
  output wire [1:0]    io_axi_r_payload_resp,
  output wire          io_axi_r_payload_last,
  input  wire          io_powerEnable,
  output wire          io_sram_A_CLK,
  output wire          io_sram_A_MEN,
  output wire          io_sram_A_WEN,
  output wire          io_sram_A_REN,
  output wire [8:0]    io_sram_A_ADDR,
  output wire [31:0]   io_sram_A_DIN,
  output wire          io_sram_A_DLY,
  input  wire [31:0]   io_sram_A_DOUT,
  output wire [31:0]   io_sram_A_BM,
  output wire          io_sram_A_BIST_CLK,
  output wire          io_sram_A_BIST_EN,
  output wire          io_sram_A_BIST_MEN,
  output wire          io_sram_A_BIST_WEN,
  output wire          io_sram_A_BIST_REN,
  output wire [8:0]    io_sram_A_BIST_ADDR,
  output wire [31:0]   io_sram_A_BIST_DIN,
  output wire [31:0]   io_sram_A_BIST_BM,
  input  wire          clk,
  input  wire          reset_n
);

  wire       [29:0]   _zz_wordAddr;
  wire                stage_valid;
  wire                stage_ready;
  wire       [31:0]   stage_payload_addr;
  wire       [3:0]    stage_payload_id;
  wire       [3:0]    stage_payload_region;
  wire       [7:0]    stage_payload_len;
  wire       [2:0]    stage_payload_size;
  wire       [1:0]    stage_payload_burst;
  wire       [0:0]    stage_payload_lock;
  wire       [3:0]    stage_payload_cache;
  wire       [3:0]    stage_payload_qos;
  wire       [2:0]    stage_payload_prot;
  wire                stage_payload_write;
  reg                 io_axi_arw_rValid;
  reg        [31:0]   io_axi_arw_rData_addr;
  reg        [3:0]    io_axi_arw_rData_id;
  reg        [3:0]    io_axi_arw_rData_region;
  reg        [7:0]    io_axi_arw_rData_len;
  reg        [2:0]    io_axi_arw_rData_size;
  reg        [1:0]    io_axi_arw_rData_burst;
  reg        [0:0]    io_axi_arw_rData_lock;
  reg        [3:0]    io_axi_arw_rData_cache;
  reg        [3:0]    io_axi_arw_rData_qos;
  reg        [2:0]    io_axi_arw_rData_prot;
  reg                 io_axi_arw_rData_write;
  wire                when_Stream_l375;
  wire       [8:0]    wordAddr;
  wire                effectiveMen;
  wire                io_axi_w_fire;
  reg                 _zz_io_axi_b_valid;
  reg        [3:0]    stage_payload_id_regNext;
  wire                stage_fire;
  reg                 _zz_io_axi_r_valid;
  reg        [3:0]    stage_payload_id_regNext_1;

  assign _zz_wordAddr = (stage_payload_addr >>> 2'd2);
  always @(*) begin
    io_axi_arw_ready = stage_ready;
    if(when_Stream_l375) begin
      io_axi_arw_ready = 1'b1;
    end
  end

  assign when_Stream_l375 = (! stage_valid);
  assign stage_valid = io_axi_arw_rValid;
  assign stage_payload_addr = io_axi_arw_rData_addr;
  assign stage_payload_id = io_axi_arw_rData_id;
  assign stage_payload_region = io_axi_arw_rData_region;
  assign stage_payload_len = io_axi_arw_rData_len;
  assign stage_payload_size = io_axi_arw_rData_size;
  assign stage_payload_burst = io_axi_arw_rData_burst;
  assign stage_payload_lock = io_axi_arw_rData_lock;
  assign stage_payload_cache = io_axi_arw_rData_cache;
  assign stage_payload_qos = io_axi_arw_rData_qos;
  assign stage_payload_prot = io_axi_arw_rData_prot;
  assign stage_payload_write = io_axi_arw_rData_write;
  assign wordAddr = _zz_wordAddr[8:0];
  assign effectiveMen = (stage_valid && io_powerEnable);
  assign io_sram_A_MEN = effectiveMen;
  assign io_sram_A_CLK = (clk && effectiveMen);
  assign io_sram_A_ADDR = (wordAddr & (effectiveMen ? 9'h1ff : 9'h0));
  assign io_sram_A_DLY = 1'b0;
  assign io_sram_A_DIN = (io_axi_w_payload_data & (effectiveMen ? 32'hffffffff : 32'h0));
  assign io_sram_A_BM = (effectiveMen ? 32'hffffffff : 32'h0);
  assign io_sram_A_WEN = ((effectiveMen && stage_payload_write) && io_axi_w_valid);
  assign io_sram_A_REN = (effectiveMen && (! stage_payload_write));
  assign io_sram_A_BIST_CLK = (clk && effectiveMen);
  assign io_sram_A_BIST_EN = 1'b0;
  assign io_sram_A_BIST_MEN = 1'b0;
  assign io_sram_A_BIST_WEN = 1'b0;
  assign io_sram_A_BIST_REN = 1'b0;
  assign io_sram_A_BIST_ADDR = 9'h0;
  assign io_sram_A_BIST_DIN = 32'h0;
  assign io_sram_A_BIST_BM = 32'h0;
  assign io_axi_w_ready = (stage_payload_write && stage_valid);
  assign stage_ready = (stage_payload_write ? io_axi_w_valid : 1'b1);
  assign io_axi_w_fire = (io_axi_w_valid && io_axi_w_ready);
  assign io_axi_b_valid = _zz_io_axi_b_valid;
  assign io_axi_b_payload_id = stage_payload_id_regNext;
  assign io_axi_b_payload_resp = 2'b00;
  assign stage_fire = (stage_valid && stage_ready);
  assign io_axi_r_valid = _zz_io_axi_r_valid;
  assign io_axi_r_payload_id = stage_payload_id_regNext_1;
  assign io_axi_r_payload_data = io_sram_A_DOUT;
  assign io_axi_r_payload_last = 1'b1;
  assign io_axi_r_payload_resp = 2'b00;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      io_axi_arw_rValid <= 1'b0;
      _zz_io_axi_b_valid <= 1'b0;
      _zz_io_axi_r_valid <= 1'b0;
    end else begin
      if(io_axi_arw_ready) begin
        io_axi_arw_rValid <= io_axi_arw_valid;
      end
      _zz_io_axi_b_valid <= (io_axi_w_fire && stage_payload_write);
      _zz_io_axi_r_valid <= (stage_fire && (! stage_payload_write));
    end
  end

  always @(posedge clk) begin
    if(io_axi_arw_ready) begin
      io_axi_arw_rData_addr <= io_axi_arw_payload_addr;
      io_axi_arw_rData_id <= io_axi_arw_payload_id;
      io_axi_arw_rData_region <= io_axi_arw_payload_region;
      io_axi_arw_rData_len <= io_axi_arw_payload_len;
      io_axi_arw_rData_size <= io_axi_arw_payload_size;
      io_axi_arw_rData_burst <= io_axi_arw_payload_burst;
      io_axi_arw_rData_lock <= io_axi_arw_payload_lock;
      io_axi_arw_rData_cache <= io_axi_arw_payload_cache;
      io_axi_arw_rData_qos <= io_axi_arw_payload_qos;
      io_axi_arw_rData_prot <= io_axi_arw_payload_prot;
      io_axi_arw_rData_write <= io_axi_arw_payload_write;
    end
    stage_payload_id_regNext <= stage_payload_id;
    stage_payload_id_regNext_1 <= stage_payload_id;
  end


endmodule

module SystemDebugger (
  input  wire          io_remote_cmd_valid,
  output wire          io_remote_cmd_ready,
  input  wire          io_remote_cmd_payload_last,
  input  wire [0:0]    io_remote_cmd_payload_fragment,
  output wire          io_remote_rsp_valid,
  input  wire          io_remote_rsp_ready,
  output wire          io_remote_rsp_payload_error,
  output wire [31:0]   io_remote_rsp_payload_data,
  output wire          io_mem_cmd_valid,
  input  wire          io_mem_cmd_ready,
  output wire [31:0]   io_mem_cmd_payload_address,
  output wire [31:0]   io_mem_cmd_payload_data,
  output wire          io_mem_cmd_payload_wr,
  output wire [1:0]    io_mem_cmd_payload_size,
  input  wire          io_mem_rsp_valid,
  input  wire [31:0]   io_mem_rsp_payload,
  input  wire          clk,
  input  wire          reset_n
);

  reg        [66:0]   dispatcher_dataShifter;
  reg                 dispatcher_dataLoaded;
  reg        [7:0]    dispatcher_headerShifter;
  wire       [7:0]    dispatcher_header;
  reg                 dispatcher_headerLoaded;
  reg        [2:0]    dispatcher_counter;
  wire                when_Fragment_l356;
  wire                when_Fragment_l359;
  wire       [66:0]   _zz_io_mem_cmd_payload_address;
  wire                io_mem_cmd_isStall;
  wire                when_Fragment_l382;

  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign when_Fragment_l356 = (dispatcher_headerLoaded == 1'b0);
  assign when_Fragment_l359 = (dispatcher_counter == 3'b111);
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_io_mem_cmd_payload_address = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_io_mem_cmd_payload_address[31 : 0];
  assign io_mem_cmd_payload_data = _zz_io_mem_cmd_payload_address[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_io_mem_cmd_payload_address[64];
  assign io_mem_cmd_payload_size = _zz_io_mem_cmd_payload_address[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == 8'h0));
  assign io_mem_cmd_isStall = (io_mem_cmd_valid && (! io_mem_cmd_ready));
  assign when_Fragment_l382 = ((dispatcher_headerLoaded && dispatcher_dataLoaded) && (! io_mem_cmd_isStall));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= 3'b000;
    end else begin
      if(io_remote_cmd_valid) begin
        if(when_Fragment_l356) begin
          dispatcher_counter <= (dispatcher_counter + 3'b001);
          if(when_Fragment_l359) begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last) begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= 3'b000;
        end
      end
      if(when_Fragment_l382) begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    if(io_remote_cmd_valid) begin
      if(when_Fragment_l356) begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1'd1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1'd1);
      end
    end
  end


endmodule

module JtagBridge (
  input  wire          io_jtag_tms,
  input  wire          io_jtag_tdi,
  output wire          io_jtag_tdo,
  input  wire          io_jtag_tck,
  output wire          io_remote_cmd_valid,
  input  wire          io_remote_cmd_ready,
  output wire          io_remote_cmd_payload_last,
  output wire [0:0]    io_remote_cmd_payload_fragment,
  input  wire          io_remote_rsp_valid,
  output wire          io_remote_rsp_ready,
  input  wire          io_remote_rsp_payload_error,
  input  wire [31:0]   io_remote_rsp_payload_data,
  input  wire          clk,
  input  wire          reset_n
);
  localparam JtagState_RESET = 4'd0;
  localparam JtagState_IDLE = 4'd1;
  localparam JtagState_IR_SELECT = 4'd2;
  localparam JtagState_IR_CAPTURE = 4'd3;
  localparam JtagState_IR_SHIFT = 4'd4;
  localparam JtagState_IR_EXIT1 = 4'd5;
  localparam JtagState_IR_PAUSE = 4'd6;
  localparam JtagState_IR_EXIT2 = 4'd7;
  localparam JtagState_IR_UPDATE = 4'd8;
  localparam JtagState_DR_SELECT = 4'd9;
  localparam JtagState_DR_CAPTURE = 4'd10;
  localparam JtagState_DR_SHIFT = 4'd11;
  localparam JtagState_DR_EXIT1 = 4'd12;
  localparam JtagState_DR_PAUSE = 4'd13;
  localparam JtagState_DR_EXIT2 = 4'd14;
  localparam JtagState_DR_UPDATE = 4'd15;

  wire                flowCCUnsafeByToggle_1_io_output_valid;
  wire                flowCCUnsafeByToggle_1_io_output_payload_last;
  wire       [0:0]    flowCCUnsafeByToggle_1_io_output_payload_fragment;
  wire       [3:0]    _zz_jtag_tap_isBypass;
  wire       [1:0]    _zz_jtag_tap_instructionShift;
  wire                system_cmd_valid;
  wire                system_cmd_payload_last;
  wire       [0:0]    system_cmd_payload_fragment;
  wire                system_cmd_toStream_valid;
  wire                system_cmd_toStream_ready;
  wire                system_cmd_toStream_payload_last;
  wire       [0:0]    system_cmd_toStream_payload_fragment;
  (* async_reg = "true" *) reg                 system_rsp_valid;
  (* async_reg = "true" *) reg                 system_rsp_payload_error;
  (* async_reg = "true" *) reg        [31:0]   system_rsp_payload_data;
  wire                io_remote_rsp_fire;
  reg        [3:0]    jtag_tap_fsm_stateNext;
  reg        [3:0]    jtag_tap_fsm_state;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_1;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_2;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_3;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_4;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_5;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_6;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_7;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_8;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_9;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_10;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_11;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_12;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_13;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_14;
  wire       [3:0]    _zz_jtag_tap_fsm_stateNext_15;
  reg        [3:0]    jtag_tap_instruction;
  reg        [3:0]    jtag_tap_instructionShift;
  reg                 jtag_tap_bypass;
  reg                 jtag_tap_tdoUnbufferd;
  reg                 jtag_tap_tdoDr;
  wire                jtag_tap_tdoIr;
  wire                jtag_tap_isBypass;
  reg                 jtag_tap_tdoUnbufferd_regNext;
  wire                jtag_idcodeArea_ctrl_tdi;
  wire                jtag_idcodeArea_ctrl_enable;
  wire                jtag_idcodeArea_ctrl_capture;
  wire                jtag_idcodeArea_ctrl_shift;
  wire                jtag_idcodeArea_ctrl_update;
  wire                jtag_idcodeArea_ctrl_reset;
  wire                jtag_idcodeArea_ctrl_tdo;
  reg        [31:0]   jtag_idcodeArea_shifter;
  wire                when_JtagTap_l121;
  wire                jtag_writeArea_ctrl_tdi;
  wire                jtag_writeArea_ctrl_enable;
  wire                jtag_writeArea_ctrl_capture;
  wire                jtag_writeArea_ctrl_shift;
  wire                jtag_writeArea_ctrl_update;
  wire                jtag_writeArea_ctrl_reset;
  wire                jtag_writeArea_ctrl_tdo;
  wire                jtag_writeArea_source_valid;
  wire                jtag_writeArea_source_payload_last;
  wire       [0:0]    jtag_writeArea_source_payload_fragment;
  reg                 jtag_writeArea_valid;
  reg                 jtag_writeArea_data;
  wire                jtag_readArea_ctrl_tdi;
  wire                jtag_readArea_ctrl_enable;
  wire                jtag_readArea_ctrl_capture;
  wire                jtag_readArea_ctrl_shift;
  wire                jtag_readArea_ctrl_update;
  wire                jtag_readArea_ctrl_reset;
  wire                jtag_readArea_ctrl_tdo;
  reg        [33:0]   jtag_readArea_full_shifter;
  `ifndef SYNTHESIS
  reg [79:0] jtag_tap_fsm_stateNext_string;
  reg [79:0] jtag_tap_fsm_state_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_1_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_2_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_3_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_4_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_5_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_6_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_7_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_8_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_9_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_10_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_11_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_12_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_13_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_14_string;
  reg [79:0] _zz_jtag_tap_fsm_stateNext_15_string;
  `endif


  assign _zz_jtag_tap_isBypass = jtag_tap_instruction;
  assign _zz_jtag_tap_instructionShift = 2'b01;
  FlowCCUnsafeByToggle flowCCUnsafeByToggle_1 (
    .io_input_valid             (jtag_writeArea_source_valid                      ), //i
    .io_input_payload_last      (jtag_writeArea_source_payload_last               ), //i
    .io_input_payload_fragment  (jtag_writeArea_source_payload_fragment           ), //i
    .io_output_valid            (flowCCUnsafeByToggle_1_io_output_valid           ), //o
    .io_output_payload_last     (flowCCUnsafeByToggle_1_io_output_payload_last    ), //o
    .io_output_payload_fragment (flowCCUnsafeByToggle_1_io_output_payload_fragment), //o
    .io_jtag_tck                (io_jtag_tck                                      ), //i
    .clk                        (clk                                              ), //i
    .reset_n                    (reset_n                                          )  //i
  );
  initial begin
  `ifndef SYNTHESIS
    jtag_tap_fsm_state = {$urandom};
  `endif
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(jtag_tap_fsm_stateNext)
      JtagState_RESET : jtag_tap_fsm_stateNext_string = "RESET     ";
      JtagState_IDLE : jtag_tap_fsm_stateNext_string = "IDLE      ";
      JtagState_IR_SELECT : jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      JtagState_DR_SELECT : jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(jtag_tap_fsm_state)
      JtagState_RESET : jtag_tap_fsm_state_string = "RESET     ";
      JtagState_IDLE : jtag_tap_fsm_state_string = "IDLE      ";
      JtagState_IR_SELECT : jtag_tap_fsm_state_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : jtag_tap_fsm_state_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : jtag_tap_fsm_state_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : jtag_tap_fsm_state_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : jtag_tap_fsm_state_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : jtag_tap_fsm_state_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : jtag_tap_fsm_state_string = "IR_UPDATE ";
      JtagState_DR_SELECT : jtag_tap_fsm_state_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : jtag_tap_fsm_state_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : jtag_tap_fsm_state_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : jtag_tap_fsm_state_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : jtag_tap_fsm_state_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : jtag_tap_fsm_state_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : jtag_tap_fsm_state_string = "DR_UPDATE ";
      default : jtag_tap_fsm_state_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_1)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_1_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_1_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_1_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_1_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_1_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_1_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_1_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_1_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_1_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_1_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_1_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_1_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_1_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_1_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_1_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_1_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_1_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_2)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_2_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_2_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_2_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_2_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_2_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_2_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_2_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_2_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_2_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_2_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_2_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_2_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_2_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_2_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_2_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_2_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_2_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_3)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_3_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_3_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_3_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_3_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_3_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_3_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_3_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_3_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_3_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_3_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_3_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_3_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_3_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_3_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_3_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_3_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_3_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_4)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_4_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_4_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_4_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_4_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_4_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_4_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_4_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_4_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_4_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_4_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_4_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_4_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_4_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_4_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_4_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_4_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_4_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_5)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_5_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_5_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_5_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_5_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_5_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_5_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_5_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_5_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_5_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_5_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_5_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_5_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_5_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_5_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_5_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_5_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_5_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_6)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_6_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_6_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_6_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_6_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_6_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_6_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_6_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_6_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_6_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_6_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_6_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_6_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_6_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_6_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_6_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_6_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_6_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_7)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_7_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_7_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_7_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_7_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_7_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_7_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_7_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_7_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_7_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_7_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_7_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_7_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_7_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_7_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_7_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_7_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_7_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_8)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_8_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_8_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_8_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_8_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_8_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_8_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_8_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_8_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_8_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_8_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_8_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_8_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_8_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_8_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_8_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_8_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_8_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_9)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_9_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_9_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_9_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_9_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_9_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_9_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_9_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_9_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_9_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_9_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_9_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_9_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_9_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_9_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_9_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_9_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_9_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_10)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_10_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_10_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_10_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_10_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_10_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_10_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_10_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_10_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_10_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_10_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_10_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_10_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_10_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_10_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_10_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_10_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_10_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_11)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_11_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_11_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_11_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_11_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_11_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_11_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_11_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_11_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_11_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_11_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_11_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_11_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_11_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_11_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_11_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_11_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_11_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_12)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_12_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_12_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_12_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_12_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_12_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_12_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_12_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_12_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_12_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_12_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_12_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_12_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_12_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_12_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_12_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_12_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_12_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_13)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_13_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_13_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_13_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_13_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_13_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_13_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_13_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_13_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_13_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_13_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_13_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_13_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_13_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_13_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_13_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_13_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_13_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_14)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_14_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_14_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_14_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_14_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_14_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_14_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_14_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_14_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_14_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_14_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_14_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_14_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_14_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_14_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_14_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_14_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_14_string = "??????????";
    endcase
  end
  always @(*) begin
    case(_zz_jtag_tap_fsm_stateNext_15)
      JtagState_RESET : _zz_jtag_tap_fsm_stateNext_15_string = "RESET     ";
      JtagState_IDLE : _zz_jtag_tap_fsm_stateNext_15_string = "IDLE      ";
      JtagState_IR_SELECT : _zz_jtag_tap_fsm_stateNext_15_string = "IR_SELECT ";
      JtagState_IR_CAPTURE : _zz_jtag_tap_fsm_stateNext_15_string = "IR_CAPTURE";
      JtagState_IR_SHIFT : _zz_jtag_tap_fsm_stateNext_15_string = "IR_SHIFT  ";
      JtagState_IR_EXIT1 : _zz_jtag_tap_fsm_stateNext_15_string = "IR_EXIT1  ";
      JtagState_IR_PAUSE : _zz_jtag_tap_fsm_stateNext_15_string = "IR_PAUSE  ";
      JtagState_IR_EXIT2 : _zz_jtag_tap_fsm_stateNext_15_string = "IR_EXIT2  ";
      JtagState_IR_UPDATE : _zz_jtag_tap_fsm_stateNext_15_string = "IR_UPDATE ";
      JtagState_DR_SELECT : _zz_jtag_tap_fsm_stateNext_15_string = "DR_SELECT ";
      JtagState_DR_CAPTURE : _zz_jtag_tap_fsm_stateNext_15_string = "DR_CAPTURE";
      JtagState_DR_SHIFT : _zz_jtag_tap_fsm_stateNext_15_string = "DR_SHIFT  ";
      JtagState_DR_EXIT1 : _zz_jtag_tap_fsm_stateNext_15_string = "DR_EXIT1  ";
      JtagState_DR_PAUSE : _zz_jtag_tap_fsm_stateNext_15_string = "DR_PAUSE  ";
      JtagState_DR_EXIT2 : _zz_jtag_tap_fsm_stateNext_15_string = "DR_EXIT2  ";
      JtagState_DR_UPDATE : _zz_jtag_tap_fsm_stateNext_15_string = "DR_UPDATE ";
      default : _zz_jtag_tap_fsm_stateNext_15_string = "??????????";
    endcase
  end
  `endif

  assign system_cmd_toStream_valid = system_cmd_valid;
  assign system_cmd_toStream_payload_last = system_cmd_payload_last;
  assign system_cmd_toStream_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_cmd_valid = system_cmd_toStream_valid;
  assign system_cmd_toStream_ready = io_remote_cmd_ready;
  assign io_remote_cmd_payload_last = system_cmd_toStream_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_toStream_payload_fragment;
  assign io_remote_rsp_fire = (io_remote_rsp_valid && io_remote_rsp_ready);
  assign io_remote_rsp_ready = 1'b1;
  assign _zz_jtag_tap_fsm_stateNext = (io_jtag_tms ? JtagState_RESET : JtagState_IDLE);
  always @(*) begin
    case(jtag_tap_fsm_state)
      JtagState_RESET : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext;
      end
      JtagState_IDLE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_1;
      end
      JtagState_IR_SELECT : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_2;
      end
      JtagState_IR_CAPTURE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_3;
      end
      JtagState_IR_SHIFT : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_4;
      end
      JtagState_IR_EXIT1 : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_5;
      end
      JtagState_IR_PAUSE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_6;
      end
      JtagState_IR_EXIT2 : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_7;
      end
      JtagState_IR_UPDATE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_8;
      end
      JtagState_DR_SELECT : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_9;
      end
      JtagState_DR_CAPTURE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_10;
      end
      JtagState_DR_SHIFT : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_11;
      end
      JtagState_DR_EXIT1 : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_12;
      end
      JtagState_DR_PAUSE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_13;
      end
      JtagState_DR_EXIT2 : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_14;
      end
      JtagState_DR_UPDATE : begin
        jtag_tap_fsm_stateNext = _zz_jtag_tap_fsm_stateNext_15;
      end
      default : begin
      end
    endcase
  end

  assign _zz_jtag_tap_fsm_stateNext_1 = (io_jtag_tms ? JtagState_DR_SELECT : JtagState_IDLE);
  assign _zz_jtag_tap_fsm_stateNext_2 = (io_jtag_tms ? JtagState_RESET : JtagState_IR_CAPTURE);
  assign _zz_jtag_tap_fsm_stateNext_3 = (io_jtag_tms ? JtagState_IR_EXIT1 : JtagState_IR_SHIFT);
  assign _zz_jtag_tap_fsm_stateNext_4 = (io_jtag_tms ? JtagState_IR_EXIT1 : JtagState_IR_SHIFT);
  assign _zz_jtag_tap_fsm_stateNext_5 = (io_jtag_tms ? JtagState_IR_UPDATE : JtagState_IR_PAUSE);
  assign _zz_jtag_tap_fsm_stateNext_6 = (io_jtag_tms ? JtagState_IR_EXIT2 : JtagState_IR_PAUSE);
  assign _zz_jtag_tap_fsm_stateNext_7 = (io_jtag_tms ? JtagState_IR_UPDATE : JtagState_IR_SHIFT);
  assign _zz_jtag_tap_fsm_stateNext_8 = (io_jtag_tms ? JtagState_DR_SELECT : JtagState_IDLE);
  assign _zz_jtag_tap_fsm_stateNext_9 = (io_jtag_tms ? JtagState_IR_SELECT : JtagState_DR_CAPTURE);
  assign _zz_jtag_tap_fsm_stateNext_10 = (io_jtag_tms ? JtagState_DR_EXIT1 : JtagState_DR_SHIFT);
  assign _zz_jtag_tap_fsm_stateNext_11 = (io_jtag_tms ? JtagState_DR_EXIT1 : JtagState_DR_SHIFT);
  assign _zz_jtag_tap_fsm_stateNext_12 = (io_jtag_tms ? JtagState_DR_UPDATE : JtagState_DR_PAUSE);
  assign _zz_jtag_tap_fsm_stateNext_13 = (io_jtag_tms ? JtagState_DR_EXIT2 : JtagState_DR_PAUSE);
  assign _zz_jtag_tap_fsm_stateNext_14 = (io_jtag_tms ? JtagState_DR_UPDATE : JtagState_DR_SHIFT);
  assign _zz_jtag_tap_fsm_stateNext_15 = (io_jtag_tms ? JtagState_DR_SELECT : JtagState_IDLE);
  always @(*) begin
    jtag_tap_tdoUnbufferd = jtag_tap_bypass;
    case(jtag_tap_fsm_state)
      JtagState_IR_SHIFT : begin
        jtag_tap_tdoUnbufferd = jtag_tap_tdoIr;
      end
      JtagState_DR_SHIFT : begin
        if(jtag_tap_isBypass) begin
          jtag_tap_tdoUnbufferd = jtag_tap_bypass;
        end else begin
          jtag_tap_tdoUnbufferd = jtag_tap_tdoDr;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    jtag_tap_tdoDr = 1'b0;
    if(jtag_idcodeArea_ctrl_enable) begin
      jtag_tap_tdoDr = jtag_idcodeArea_ctrl_tdo;
    end
    if(jtag_writeArea_ctrl_enable) begin
      jtag_tap_tdoDr = jtag_writeArea_ctrl_tdo;
    end
    if(jtag_readArea_ctrl_enable) begin
      jtag_tap_tdoDr = jtag_readArea_ctrl_tdo;
    end
  end

  assign jtag_tap_tdoIr = jtag_tap_instructionShift[0];
  assign jtag_tap_isBypass = ($signed(_zz_jtag_tap_isBypass) == $signed(4'b1111));
  assign io_jtag_tdo = jtag_tap_tdoUnbufferd_regNext;
  assign jtag_idcodeArea_ctrl_tdo = jtag_idcodeArea_shifter[0];
  assign jtag_idcodeArea_ctrl_tdi = io_jtag_tdi;
  assign jtag_idcodeArea_ctrl_enable = (jtag_tap_instruction == 4'b0001);
  assign jtag_idcodeArea_ctrl_capture = (jtag_tap_fsm_state == JtagState_DR_CAPTURE);
  assign jtag_idcodeArea_ctrl_shift = (jtag_tap_fsm_state == JtagState_DR_SHIFT);
  assign jtag_idcodeArea_ctrl_update = (jtag_tap_fsm_state == JtagState_DR_UPDATE);
  assign jtag_idcodeArea_ctrl_reset = (jtag_tap_fsm_state == JtagState_RESET);
  assign when_JtagTap_l121 = (jtag_tap_fsm_state == JtagState_RESET);
  assign jtag_writeArea_source_valid = jtag_writeArea_valid;
  assign jtag_writeArea_source_payload_last = (! (jtag_writeArea_ctrl_enable && jtag_writeArea_ctrl_shift));
  assign jtag_writeArea_source_payload_fragment[0] = jtag_writeArea_data;
  assign system_cmd_valid = flowCCUnsafeByToggle_1_io_output_valid;
  assign system_cmd_payload_last = flowCCUnsafeByToggle_1_io_output_payload_last;
  assign system_cmd_payload_fragment = flowCCUnsafeByToggle_1_io_output_payload_fragment;
  assign jtag_writeArea_ctrl_tdo = 1'b0;
  assign jtag_writeArea_ctrl_tdi = io_jtag_tdi;
  assign jtag_writeArea_ctrl_enable = (jtag_tap_instruction == 4'b0010);
  assign jtag_writeArea_ctrl_capture = (jtag_tap_fsm_state == JtagState_DR_CAPTURE);
  assign jtag_writeArea_ctrl_shift = (jtag_tap_fsm_state == JtagState_DR_SHIFT);
  assign jtag_writeArea_ctrl_update = (jtag_tap_fsm_state == JtagState_DR_UPDATE);
  assign jtag_writeArea_ctrl_reset = (jtag_tap_fsm_state == JtagState_RESET);
  assign jtag_readArea_ctrl_tdo = jtag_readArea_full_shifter[0];
  assign jtag_readArea_ctrl_tdi = io_jtag_tdi;
  assign jtag_readArea_ctrl_enable = (jtag_tap_instruction == 4'b0011);
  assign jtag_readArea_ctrl_capture = (jtag_tap_fsm_state == JtagState_DR_CAPTURE);
  assign jtag_readArea_ctrl_shift = (jtag_tap_fsm_state == JtagState_DR_SHIFT);
  assign jtag_readArea_ctrl_update = (jtag_tap_fsm_state == JtagState_DR_UPDATE);
  assign jtag_readArea_ctrl_reset = (jtag_tap_fsm_state == JtagState_RESET);
  always @(posedge clk) begin
    if(io_remote_cmd_valid) begin
      system_rsp_valid <= 1'b0;
    end
    if(io_remote_rsp_fire) begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @(posedge io_jtag_tck) begin
    jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
    jtag_tap_bypass <= io_jtag_tdi;
    case(jtag_tap_fsm_state)
      JtagState_IR_CAPTURE : begin
        jtag_tap_instructionShift <= {2'd0, _zz_jtag_tap_instructionShift};
      end
      JtagState_IR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1'd1);
      end
      JtagState_IR_UPDATE : begin
        jtag_tap_instruction <= jtag_tap_instructionShift;
      end
      JtagState_DR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1'd1);
      end
      default : begin
      end
    endcase
    if(jtag_idcodeArea_ctrl_enable) begin
      if(jtag_idcodeArea_ctrl_shift) begin
        jtag_idcodeArea_shifter <= ({jtag_idcodeArea_ctrl_tdi,jtag_idcodeArea_shifter} >>> 1'd1);
      end
    end
    if(jtag_idcodeArea_ctrl_capture) begin
      jtag_idcodeArea_shifter <= 32'h10001fff;
    end
    if(when_JtagTap_l121) begin
      jtag_tap_instruction <= 4'b0001;
    end
    jtag_writeArea_valid <= (jtag_writeArea_ctrl_enable && jtag_writeArea_ctrl_shift);
    jtag_writeArea_data <= jtag_writeArea_ctrl_tdi;
    if(jtag_readArea_ctrl_enable) begin
      if(jtag_readArea_ctrl_capture) begin
        jtag_readArea_full_shifter <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if(jtag_readArea_ctrl_shift) begin
        jtag_readArea_full_shifter <= ({jtag_readArea_ctrl_tdi,jtag_readArea_full_shifter} >>> 1'd1);
      end
    end
  end

  always @(negedge io_jtag_tck) begin
    jtag_tap_tdoUnbufferd_regNext <= jtag_tap_tdoUnbufferd;
  end


endmodule

module VexRiscv (
  output wire          iBus_cmd_valid,
  input  wire          iBus_cmd_ready,
  output wire [31:0]   iBus_cmd_payload_pc,
  input  wire          iBus_rsp_valid,
  input  wire          iBus_rsp_payload_error,
  input  wire [31:0]   iBus_rsp_payload_inst,
  input  wire          timerInterrupt,
  input  wire          externalInterrupt,
  input  wire          softwareInterrupt,
  input  wire          debug_bus_cmd_valid,
  output reg           debug_bus_cmd_ready,
  input  wire          debug_bus_cmd_payload_wr,
  input  wire [7:0]    debug_bus_cmd_payload_address,
  input  wire [31:0]   debug_bus_cmd_payload_data,
  output reg  [31:0]   debug_bus_rsp_data,
  output wire          debug_resetOut,
  output wire          dBus_cmd_valid,
  input  wire          dBus_cmd_ready,
  output wire          dBus_cmd_payload_wr,
  output wire [3:0]    dBus_cmd_payload_mask,
  output wire [31:0]   dBus_cmd_payload_address,
  output wire [31:0]   dBus_cmd_payload_data,
  output wire [1:0]    dBus_cmd_payload_size,
  input  wire          dBus_rsp_ready,
  input  wire          dBus_rsp_error,
  input  wire [31:0]   dBus_rsp_data,
  input  wire          clk,
  input  wire          reset_n
);
  localparam ShiftCtrlEnum_DISABLE_1 = 2'd0;
  localparam ShiftCtrlEnum_SLL_1 = 2'd1;
  localparam ShiftCtrlEnum_SRL_1 = 2'd2;
  localparam ShiftCtrlEnum_SRA_1 = 2'd3;
  localparam BranchCtrlEnum_INC = 2'd0;
  localparam BranchCtrlEnum_B = 2'd1;
  localparam BranchCtrlEnum_JAL = 2'd2;
  localparam BranchCtrlEnum_JALR = 2'd3;
  localparam AluBitwiseCtrlEnum_XOR_1 = 2'd0;
  localparam AluBitwiseCtrlEnum_OR_1 = 2'd1;
  localparam AluBitwiseCtrlEnum_AND_1 = 2'd2;
  localparam AluCtrlEnum_ADD_SUB = 2'd0;
  localparam AluCtrlEnum_SLT_SLTU = 2'd1;
  localparam AluCtrlEnum_BITWISE = 2'd2;
  localparam EnvCtrlEnum_NONE = 3'd0;
  localparam EnvCtrlEnum_XRET = 3'd1;
  localparam EnvCtrlEnum_WFI = 3'd2;
  localparam EnvCtrlEnum_ECALL = 3'd3;
  localparam EnvCtrlEnum_EBREAK = 3'd4;
  localparam Src2CtrlEnum_RS = 2'd0;
  localparam Src2CtrlEnum_IMI = 2'd1;
  localparam Src2CtrlEnum_IMS = 2'd2;
  localparam Src2CtrlEnum_PC = 2'd3;
  localparam Src1CtrlEnum_RS = 2'd0;
  localparam Src1CtrlEnum_IMU = 2'd1;
  localparam Src1CtrlEnum_PC_INCREMENT = 2'd2;
  localparam Src1CtrlEnum_URS1 = 2'd3;

  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready;
  reg        [31:0]   RegFilePlugin_regFile_spinal_port0;
  reg        [31:0]   RegFilePlugin_regFile_spinal_port1;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  wire       [1:0]    IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy;
  wire       [1:0]    IBusSimplePlugin_rspJoin_rspBuffer_c_io_availability;
  wire       [31:0]   _zz_execute_SHIFT_RIGHT;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_1;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_2;
  wire       [30:0]   _zz_decode_DO_EBREAK;
  wire       [30:0]   _zz_decode_DO_EBREAK_1;
  wire       [30:0]   _zz_decode_DO_EBREAK_2;
  wire       [31:0]   _zz_decode_FORMAL_PC_NEXT;
  wire       [2:0]    _zz_decode_FORMAL_PC_NEXT_1;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_1;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_2;
  wire                _zz_decode_LEGAL_INSTRUCTION_3;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_4;
  wire       [12:0]   _zz_decode_LEGAL_INSTRUCTION_5;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_6;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_7;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_8;
  wire                _zz_decode_LEGAL_INSTRUCTION_9;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_10;
  wire       [6:0]    _zz_decode_LEGAL_INSTRUCTION_11;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_12;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_13;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_14;
  wire                _zz_decode_LEGAL_INSTRUCTION_15;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_16;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_17;
  wire       [1:0]    _zz_IBusSimplePlugin_jump_pcLoad_payload_1;
  wire       [1:0]    _zz_IBusSimplePlugin_jump_pcLoad_payload_2;
  wire       [31:0]   _zz_IBusSimplePlugin_fetchPc_pc;
  wire       [2:0]    _zz_IBusSimplePlugin_fetchPc_pc_1;
  wire       [31:0]   _zz_IBusSimplePlugin_decodePc_pcPlus;
  wire       [2:0]    _zz_IBusSimplePlugin_decodePc_pcPlus_1;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_27;
  wire       [0:0]    _zz_IBusSimplePlugin_decompressor_decompressed_28;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_29;
  wire       [31:0]   _zz_IBusSimplePlugin_decompressor_decompressed_30;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_31;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_32;
  wire       [6:0]    _zz_IBusSimplePlugin_decompressor_decompressed_33;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_34;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_35;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_36;
  wire       [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_37;
  wire       [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_38;
  wire       [2:0]    _zz_IBusSimplePlugin_pending_next;
  wire       [2:0]    _zz_IBusSimplePlugin_pending_next_1;
  wire       [0:0]    _zz_IBusSimplePlugin_pending_next_2;
  wire       [2:0]    _zz_IBusSimplePlugin_pending_next_3;
  wire       [0:0]    _zz_IBusSimplePlugin_pending_next_4;
  wire       [2:0]    _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter;
  wire       [0:0]    _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_1;
  wire       [31:0]   _zz__zz_decode_IS_DIV;
  wire       [31:0]   _zz__zz_decode_IS_DIV_1;
  wire       [31:0]   _zz__zz_decode_IS_DIV_2;
  wire       [31:0]   _zz__zz_decode_IS_DIV_3;
  wire                _zz__zz_decode_IS_DIV_4;
  wire       [1:0]    _zz__zz_decode_IS_DIV_5;
  wire                _zz__zz_decode_IS_DIV_6;
  wire       [0:0]    _zz__zz_decode_IS_DIV_7;
  wire       [31:0]   _zz__zz_decode_IS_DIV_8;
  wire       [31:0]   _zz__zz_decode_IS_DIV_9;
  wire       [25:0]   _zz__zz_decode_IS_DIV_10;
  wire                _zz__zz_decode_IS_DIV_11;
  wire       [1:0]    _zz__zz_decode_IS_DIV_12;
  wire       [31:0]   _zz__zz_decode_IS_DIV_13;
  wire       [31:0]   _zz__zz_decode_IS_DIV_14;
  wire                _zz__zz_decode_IS_DIV_15;
  wire       [31:0]   _zz__zz_decode_IS_DIV_16;
  wire       [0:0]    _zz__zz_decode_IS_DIV_17;
  wire       [31:0]   _zz__zz_decode_IS_DIV_18;
  wire       [31:0]   _zz__zz_decode_IS_DIV_19;
  wire       [21:0]   _zz__zz_decode_IS_DIV_20;
  wire       [1:0]    _zz__zz_decode_IS_DIV_21;
  wire       [31:0]   _zz__zz_decode_IS_DIV_22;
  wire       [31:0]   _zz__zz_decode_IS_DIV_23;
  wire                _zz__zz_decode_IS_DIV_24;
  wire       [31:0]   _zz__zz_decode_IS_DIV_25;
  wire       [0:0]    _zz__zz_decode_IS_DIV_26;
  wire       [17:0]   _zz__zz_decode_IS_DIV_27;
  wire       [0:0]    _zz__zz_decode_IS_DIV_28;
  wire                _zz__zz_decode_IS_DIV_29;
  wire       [31:0]   _zz__zz_decode_IS_DIV_30;
  wire       [31:0]   _zz__zz_decode_IS_DIV_31;
  wire       [0:0]    _zz__zz_decode_IS_DIV_32;
  wire       [31:0]   _zz__zz_decode_IS_DIV_33;
  wire       [13:0]   _zz__zz_decode_IS_DIV_34;
  wire                _zz__zz_decode_IS_DIV_35;
  wire                _zz__zz_decode_IS_DIV_36;
  wire       [0:0]    _zz__zz_decode_IS_DIV_37;
  wire       [31:0]   _zz__zz_decode_IS_DIV_38;
  wire       [0:0]    _zz__zz_decode_IS_DIV_39;
  wire       [31:0]   _zz__zz_decode_IS_DIV_40;
  wire       [4:0]    _zz__zz_decode_IS_DIV_41;
  wire       [31:0]   _zz__zz_decode_IS_DIV_42;
  wire       [31:0]   _zz__zz_decode_IS_DIV_43;
  wire                _zz__zz_decode_IS_DIV_44;
  wire       [0:0]    _zz__zz_decode_IS_DIV_45;
  wire       [31:0]   _zz__zz_decode_IS_DIV_46;
  wire       [1:0]    _zz__zz_decode_IS_DIV_47;
  wire       [31:0]   _zz__zz_decode_IS_DIV_48;
  wire       [31:0]   _zz__zz_decode_IS_DIV_49;
  wire                _zz__zz_decode_IS_DIV_50;
  wire       [31:0]   _zz__zz_decode_IS_DIV_51;
  wire       [31:0]   _zz__zz_decode_IS_DIV_52;
  wire       [0:0]    _zz__zz_decode_IS_DIV_53;
  wire                _zz__zz_decode_IS_DIV_54;
  wire       [8:0]    _zz__zz_decode_IS_DIV_55;
  wire       [4:0]    _zz__zz_decode_IS_DIV_56;
  wire                _zz__zz_decode_IS_DIV_57;
  wire       [31:0]   _zz__zz_decode_IS_DIV_58;
  wire       [0:0]    _zz__zz_decode_IS_DIV_59;
  wire       [31:0]   _zz__zz_decode_IS_DIV_60;
  wire       [31:0]   _zz__zz_decode_IS_DIV_61;
  wire       [1:0]    _zz__zz_decode_IS_DIV_62;
  wire                _zz__zz_decode_IS_DIV_63;
  wire       [31:0]   _zz__zz_decode_IS_DIV_64;
  wire                _zz__zz_decode_IS_DIV_65;
  wire       [31:0]   _zz__zz_decode_IS_DIV_66;
  wire                _zz__zz_decode_IS_DIV_67;
  wire       [0:0]    _zz__zz_decode_IS_DIV_68;
  wire       [31:0]   _zz__zz_decode_IS_DIV_69;
  wire       [31:0]   _zz__zz_decode_IS_DIV_70;
  wire       [3:0]    _zz__zz_decode_IS_DIV_71;
  wire                _zz__zz_decode_IS_DIV_72;
  wire       [31:0]   _zz__zz_decode_IS_DIV_73;
  wire       [0:0]    _zz__zz_decode_IS_DIV_74;
  wire       [31:0]   _zz__zz_decode_IS_DIV_75;
  wire       [31:0]   _zz__zz_decode_IS_DIV_76;
  wire       [1:0]    _zz__zz_decode_IS_DIV_77;
  wire                _zz__zz_decode_IS_DIV_78;
  wire                _zz__zz_decode_IS_DIV_79;
  wire       [0:0]    _zz__zz_decode_IS_DIV_80;
  wire       [0:0]    _zz__zz_decode_IS_DIV_81;
  wire       [0:0]    _zz__zz_decode_IS_DIV_82;
  wire       [31:0]   _zz__zz_decode_IS_DIV_83;
  wire       [31:0]   _zz__zz_decode_IS_DIV_84;
  wire       [5:0]    _zz__zz_decode_IS_DIV_85;
  wire       [1:0]    _zz__zz_decode_IS_DIV_86;
  wire                _zz__zz_decode_IS_DIV_87;
  wire       [31:0]   _zz__zz_decode_IS_DIV_88;
  wire                _zz__zz_decode_IS_DIV_89;
  wire       [0:0]    _zz__zz_decode_IS_DIV_90;
  wire       [31:0]   _zz__zz_decode_IS_DIV_91;
  wire       [31:0]   _zz__zz_decode_IS_DIV_92;
  wire       [2:0]    _zz__zz_decode_IS_DIV_93;
  wire       [0:0]    _zz__zz_decode_IS_DIV_94;
  wire       [0:0]    _zz__zz_decode_IS_DIV_95;
  wire       [31:0]   _zz__zz_decode_IS_DIV_96;
  wire       [0:0]    _zz__zz_decode_IS_DIV_97;
  wire       [0:0]    _zz__zz_decode_IS_DIV_98;
  wire       [31:0]   _zz__zz_decode_IS_DIV_99;
  wire       [31:0]   _zz__zz_decode_IS_DIV_100;
  wire       [2:0]    _zz__zz_decode_IS_DIV_101;
  wire                _zz__zz_decode_IS_DIV_102;
  wire       [0:0]    _zz__zz_decode_IS_DIV_103;
  wire       [31:0]   _zz__zz_decode_IS_DIV_104;
  wire       [1:0]    _zz__zz_decode_IS_DIV_105;
  wire       [31:0]   _zz__zz_decode_IS_DIV_106;
  wire       [31:0]   _zz__zz_decode_IS_DIV_107;
  wire       [31:0]   _zz__zz_decode_IS_DIV_108;
  wire       [31:0]   _zz__zz_decode_IS_DIV_109;
  wire       [0:0]    _zz__zz_decode_IS_DIV_110;
  wire       [1:0]    _zz__zz_decode_IS_DIV_111;
  wire       [31:0]   _zz__zz_decode_IS_DIV_112;
  wire       [31:0]   _zz__zz_decode_IS_DIV_113;
  wire       [0:0]    _zz__zz_decode_IS_DIV_114;
  wire       [1:0]    _zz__zz_decode_IS_DIV_115;
  wire       [31:0]   _zz__zz_decode_IS_DIV_116;
  wire       [31:0]   _zz__zz_decode_IS_DIV_117;
  wire                _zz_RegFilePlugin_regFile_port;
  wire                _zz_decode_RegFilePlugin_rs1Data;
  wire                _zz_RegFilePlugin_regFile_port_1;
  wire                _zz_decode_RegFilePlugin_rs2Data;
  wire       [0:0]    _zz__zz_execute_REGFILE_WRITE_DATA;
  wire       [2:0]    _zz__zz_decode_SRC1;
  wire       [4:0]    _zz__zz_decode_SRC1_1;
  wire       [11:0]   _zz__zz_decode_SRC2_2;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_1;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_2;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_3;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_4;
  wire       [5:0]    _zz_memory_MulDivIterativePlugin_mul_counter_valueNext;
  wire       [0:0]    _zz_memory_MulDivIterativePlugin_mul_counter_valueNext_1;
  wire       [33:0]   _zz_memory_MulDivIterativePlugin_accumulator;
  wire       [33:0]   _zz_memory_MulDivIterativePlugin_accumulator_1;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_accumulator_2;
  wire       [33:0]   _zz_memory_MulDivIterativePlugin_accumulator_3;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_accumulator_4;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_accumulator_5;
  wire       [5:0]    _zz_memory_MulDivIterativePlugin_div_counter_valueNext;
  wire       [0:0]    _zz_memory_MulDivIterativePlugin_div_counter_valueNext_1;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   _zz_memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   _zz_memory_MulDivIterativePlugin_div_stage_0_outRemainder_1;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_div_result_1;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_div_result_2;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_div_result_3;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_div_result_4;
  wire       [0:0]    _zz_memory_MulDivIterativePlugin_div_result_5;
  wire       [32:0]   _zz_memory_MulDivIterativePlugin_rs1_2;
  wire       [0:0]    _zz_memory_MulDivIterativePlugin_rs1_3;
  wire       [31:0]   _zz_memory_MulDivIterativePlugin_rs2_1;
  wire       [0:0]    _zz_memory_MulDivIterativePlugin_rs2_2;
  wire       [19:0]   _zz__zz_execute_BranchPlugin_branch_src2;
  wire       [11:0]   _zz__zz_execute_BranchPlugin_branch_src2_4;
  wire       [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_20;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_DO_EBREAK;
  wire       [31:0]   decode_SRC2;
  wire       [31:0]   decode_SRC1;
  wire                decode_SRC2_FORCE_ZERO;
  wire       [1:0]    decode_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_to_execute_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_to_execute_BRANCH_CTRL_1;
  wire                decode_IS_DIV;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_MUL;
  wire       [1:0]    _zz_execute_to_memory_SHIFT_CTRL;
  wire       [1:0]    _zz_execute_to_memory_SHIFT_CTRL_1;
  wire       [1:0]    decode_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SHIFT_CTRL_1;
  wire       [1:0]    decode_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  wire                decode_SRC_LESS_UNSIGNED;
  wire       [1:0]    decode_ALU_CTRL;
  wire       [1:0]    _zz_decode_ALU_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_CTRL_1;
  wire       [2:0]    _zz_memory_to_writeBack_ENV_CTRL;
  wire       [2:0]    _zz_memory_to_writeBack_ENV_CTRL_1;
  wire       [2:0]    _zz_execute_to_memory_ENV_CTRL;
  wire       [2:0]    _zz_execute_to_memory_ENV_CTRL_1;
  wire       [2:0]    decode_ENV_CTRL;
  wire       [2:0]    _zz_decode_ENV_CTRL;
  wire       [2:0]    _zz_decode_to_execute_ENV_CTRL;
  wire       [2:0]    _zz_decode_to_execute_ENV_CTRL_1;
  wire                decode_IS_CSR;
  wire                decode_MEMORY_STORE;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire                decode_MEMORY_ENABLE;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   memory_PC;
  wire                execute_DO_EBREAK;
  wire                decode_IS_EBREAK;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire       [1:0]    execute_BRANCH_CTRL;
  wire       [1:0]    _zz_execute_BRANCH_CTRL;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire                execute_IS_RS1_SIGNED;
  wire       [31:0]   execute_RS1;
  wire                execute_IS_DIV;
  wire                execute_IS_MUL;
  wire                execute_IS_RS2_SIGNED;
  wire                memory_IS_DIV;
  wire                memory_IS_MUL;
  wire       [31:0]   memory_SHIFT_RIGHT;
  wire       [1:0]    memory_SHIFT_CTRL;
  wire       [1:0]    _zz_memory_SHIFT_CTRL;
  wire       [1:0]    execute_SHIFT_CTRL;
  wire       [1:0]    _zz_execute_SHIFT_CTRL;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_decode_to_execute_PC;
  wire       [31:0]   _zz_decode_to_execute_RS2;
  wire       [1:0]    decode_SRC2_CTRL;
  wire       [1:0]    _zz_decode_SRC2_CTRL;
  wire       [31:0]   _zz_decode_to_execute_RS1;
  wire       [1:0]    decode_SRC1_CTRL;
  wire       [1:0]    _zz_decode_SRC1_CTRL;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       [1:0]    execute_ALU_CTRL;
  wire       [1:0]    _zz_execute_ALU_CTRL;
  wire       [31:0]   execute_SRC2;
  wire       [1:0]    execute_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_execute_ALU_BITWISE_CTRL;
  wire       [31:0]   _zz_decode_RS2;
  wire       [31:0]   _zz_lastStageRegFileWrite_payload_address;
  wire                _zz_lastStageRegFileWrite_valid;
  reg                 _zz_1;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       [1:0]    _zz_decode_BRANCH_CTRL_1;
  wire       [1:0]    _zz_decode_SHIFT_CTRL_1;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL_1;
  wire       [1:0]    _zz_decode_ALU_CTRL_1;
  wire       [2:0]    _zz_decode_ENV_CTRL_1;
  wire       [1:0]    _zz_decode_SRC2_CTRL_1;
  wire       [1:0]    _zz_decode_SRC1_CTRL_1;
  reg        [31:0]   _zz_decode_RS2_1;
  wire       [31:0]   execute_SRC1;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       [2:0]    memory_ENV_CTRL;
  wire       [2:0]    _zz_memory_ENV_CTRL;
  wire       [2:0]    execute_ENV_CTRL;
  wire       [2:0]    _zz_execute_ENV_CTRL;
  wire       [2:0]    writeBack_ENV_CTRL;
  wire       [2:0]    _zz_writeBack_ENV_CTRL;
  reg        [31:0]   _zz_decode_RS2_2;
  wire       [31:0]   memory_INSTRUCTION;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [31:0]   memory_MEMORY_READ_DATA;
  wire                memory_MEMORY_STORE;
  wire                memory_MEMORY_ENABLE;
  wire       [31:0]   execute_SRC_ADD;
  wire       [31:0]   execute_RS2;
  wire       [31:0]   execute_INSTRUCTION;
  wire                execute_MEMORY_STORE;
  wire                execute_MEMORY_ENABLE;
  wire                execute_ALIGNEMENT_FAULT;
  reg        [31:0]   _zz_memory_to_writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   decode_PC;
  wire       [31:0]   decode_INSTRUCTION;
  wire                decode_IS_RVC;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  reg                 decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  reg                 execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  wire                writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  wire                writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusSimplePlugin_fetcherHalt;
  reg                 IBusSimplePlugin_forceNoDecodeCond;
  reg                 IBusSimplePlugin_incomingInstruction;
  wire                IBusSimplePlugin_pcValids_0;
  wire                IBusSimplePlugin_pcValids_1;
  wire                IBusSimplePlugin_pcValids_2;
  wire                IBusSimplePlugin_pcValids_3;
  wire       [31:0]   CsrPlugin_csrMapping_readDataSignal;
  wire       [31:0]   CsrPlugin_csrMapping_readDataInit;
  wire       [31:0]   CsrPlugin_csrMapping_writeDataSignal;
  reg                 CsrPlugin_csrMapping_allowCsrSignal;
  wire                CsrPlugin_csrMapping_hazardFree;
  wire                CsrPlugin_csrMapping_doForceFailCsr;
  reg                 CsrPlugin_inWfi /* verilator public */ ;
  reg                 CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  reg                 CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_selfException_valid;
  reg        [3:0]    CsrPlugin_selfException_payload_code;
  wire       [31:0]   CsrPlugin_selfException_payload_badAddr;
  reg                 CsrPlugin_allowInterrupts;
  reg                 CsrPlugin_allowException;
  reg                 CsrPlugin_allowEbreakException;
  wire                CsrPlugin_xretAwayFromMachine;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  reg                 BranchPlugin_inDebugNoFetchFlag;
  reg                 DebugPlugin_injectionPort_valid;
  reg                 DebugPlugin_injectionPort_ready;
  wire       [31:0]   DebugPlugin_injectionPort_payload;
  wire                IBusSimplePlugin_externalFlush;
  wire                IBusSimplePlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusSimplePlugin_jump_pcLoad_payload;
  wire       [1:0]    _zz_IBusSimplePlugin_jump_pcLoad_payload;
  wire                IBusSimplePlugin_fetchPc_output_valid;
  wire                IBusSimplePlugin_fetchPc_output_ready;
  wire       [31:0]   IBusSimplePlugin_fetchPc_output_payload;
  reg        [31:0]   IBusSimplePlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusSimplePlugin_fetchPc_correction;
  reg                 IBusSimplePlugin_fetchPc_correctionReg;
  wire                IBusSimplePlugin_fetchPc_output_fire;
  wire                IBusSimplePlugin_fetchPc_corrected;
  wire                IBusSimplePlugin_fetchPc_pcRegPropagate;
  reg                 IBusSimplePlugin_fetchPc_booted;
  reg                 IBusSimplePlugin_fetchPc_inc;
  wire                when_Fetcher_l133;
  wire                when_Fetcher_l133_1;
  reg        [31:0]   IBusSimplePlugin_fetchPc_pc;
  reg                 IBusSimplePlugin_fetchPc_flushed;
  wire                when_Fetcher_l160;
  reg                 IBusSimplePlugin_decodePc_flushed;
  reg        [31:0]   IBusSimplePlugin_decodePc_pcReg /* verilator public */ ;
  wire       [31:0]   IBusSimplePlugin_decodePc_pcPlus;
  reg                 IBusSimplePlugin_decodePc_injectedDecode;
  wire                when_Fetcher_l182;
  wire                when_Fetcher_l194;
  wire                IBusSimplePlugin_iBusRsp_redoFetch;
  wire                IBusSimplePlugin_iBusRsp_stages_0_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_output_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_0_halt;
  wire                IBusSimplePlugin_iBusRsp_stages_1_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusSimplePlugin_iBusRsp_stages_1_halt;
  wire                IBusSimplePlugin_iBusRsp_stages_2_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_2_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_2_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_2_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_2_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_2_output_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_2_halt;
  wire                _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  wire                _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  wire                _zz_IBusSimplePlugin_iBusRsp_stages_2_input_ready;
  wire                IBusSimplePlugin_iBusRsp_flush;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  reg                 _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  reg        [31:0]   _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  reg                 _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  reg        [31:0]   _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  reg                 IBusSimplePlugin_iBusRsp_readyForError;
  wire                IBusSimplePlugin_iBusRsp_output_valid;
  wire                IBusSimplePlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_output_payload_pc;
  wire                IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusSimplePlugin_iBusRsp_output_payload_isRvc;
  wire                when_Fetcher_l242;
  wire                IBusSimplePlugin_decompressor_input_valid;
  wire                IBusSimplePlugin_decompressor_input_ready;
  wire       [31:0]   IBusSimplePlugin_decompressor_input_payload_pc;
  wire                IBusSimplePlugin_decompressor_input_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_decompressor_input_payload_rsp_inst;
  wire                IBusSimplePlugin_decompressor_input_payload_isRvc;
  wire                IBusSimplePlugin_decompressor_output_valid;
  wire                IBusSimplePlugin_decompressor_output_ready;
  wire       [31:0]   IBusSimplePlugin_decompressor_output_payload_pc;
  wire                IBusSimplePlugin_decompressor_output_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_decompressor_output_payload_rsp_inst;
  wire                IBusSimplePlugin_decompressor_output_payload_isRvc;
  wire                IBusSimplePlugin_decompressor_flushNext;
  wire                IBusSimplePlugin_decompressor_consumeCurrent;
  reg                 IBusSimplePlugin_decompressor_bufferValid;
  reg        [15:0]   IBusSimplePlugin_decompressor_bufferData;
  wire                IBusSimplePlugin_decompressor_isInputLowRvc;
  wire                IBusSimplePlugin_decompressor_isInputHighRvc;
  reg                 IBusSimplePlugin_decompressor_throw2BytesReg;
  wire                IBusSimplePlugin_decompressor_throw2Bytes;
  wire                IBusSimplePlugin_decompressor_unaligned;
  reg                 IBusSimplePlugin_decompressor_bufferValidLatch;
  reg                 IBusSimplePlugin_decompressor_throw2BytesLatch;
  wire                IBusSimplePlugin_decompressor_bufferValidPatched;
  wire                IBusSimplePlugin_decompressor_throw2BytesPatched;
  wire       [31:0]   IBusSimplePlugin_decompressor_raw;
  wire                IBusSimplePlugin_decompressor_isRvc;
  wire       [15:0]   _zz_IBusSimplePlugin_decompressor_decompressed;
  reg        [31:0]   IBusSimplePlugin_decompressor_decompressed;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_1;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_2;
  wire       [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_3;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_4;
  reg        [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_5;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_6;
  reg        [9:0]    _zz_IBusSimplePlugin_decompressor_decompressed_7;
  wire       [20:0]   _zz_IBusSimplePlugin_decompressor_decompressed_8;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_9;
  reg        [14:0]   _zz_IBusSimplePlugin_decompressor_decompressed_10;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_11;
  reg        [2:0]    _zz_IBusSimplePlugin_decompressor_decompressed_12;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_13;
  reg        [9:0]    _zz_IBusSimplePlugin_decompressor_decompressed_14;
  wire       [20:0]   _zz_IBusSimplePlugin_decompressor_decompressed_15;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_16;
  reg        [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_17;
  wire       [12:0]   _zz_IBusSimplePlugin_decompressor_decompressed_18;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_19;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_20;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_21;
  wire       [4:0]    switch_Misc_l44;
  wire                when_Misc_l47;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_22;
  wire       [1:0]    switch_Misc_l241;
  wire       [1:0]    switch_Misc_l241_1;
  reg        [2:0]    _zz_IBusSimplePlugin_decompressor_decompressed_23;
  reg        [2:0]    _zz_IBusSimplePlugin_decompressor_decompressed_24;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_25;
  reg        [6:0]    _zz_IBusSimplePlugin_decompressor_decompressed_26;
  wire                IBusSimplePlugin_decompressor_output_fire;
  wire                IBusSimplePlugin_decompressor_bufferFill;
  wire                when_Fetcher_l285;
  wire                when_Fetcher_l288;
  wire                when_Fetcher_l293;
  wire                IBusSimplePlugin_injector_decodeInput_valid;
  wire                IBusSimplePlugin_injector_decodeInput_ready;
  wire       [31:0]   IBusSimplePlugin_injector_decodeInput_payload_pc;
  wire                IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  wire                IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  reg                 _zz_IBusSimplePlugin_injector_decodeInput_valid;
  reg        [31:0]   _zz_IBusSimplePlugin_injector_decodeInput_payload_pc;
  reg                 _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  reg        [31:0]   _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  reg                 _zz_IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_0;
  wire                when_Fetcher_l331;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_1;
  wire                when_Fetcher_l331_1;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_2;
  wire                when_Fetcher_l331_2;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_3;
  wire                when_Fetcher_l331_3;
  reg        [31:0]   IBusSimplePlugin_injector_formal_rawInDecode;
  wire                IBusSimplePlugin_cmd_valid;
  wire                IBusSimplePlugin_cmd_ready;
  wire       [31:0]   IBusSimplePlugin_cmd_payload_pc;
  wire                IBusSimplePlugin_pending_inc;
  wire                IBusSimplePlugin_pending_dec;
  reg        [2:0]    IBusSimplePlugin_pending_value;
  wire       [2:0]    IBusSimplePlugin_pending_next;
  wire                IBusSimplePlugin_cmdFork_pendingFull;
  wire                IBusSimplePlugin_cmdFork_enterTheMarket;
  reg                 IBusSimplePlugin_cmdFork_cmdKeep;
  reg                 IBusSimplePlugin_cmdFork_cmdFired;
  wire                IBusSimplePlugin_cmd_fire;
  wire                when_IBusSimplePlugin_l317;
  wire                when_IBusSimplePlugin_l318;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_valid;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_ready;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  reg        [2:0]    IBusSimplePlugin_rspJoin_rspBuffer_discardCounter;
  wire                iBus_rsp_toStream_valid;
  wire                iBus_rsp_toStream_ready;
  wire                iBus_rsp_toStream_payload_error;
  wire       [31:0]   iBus_rsp_toStream_payload_inst;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_flush;
  wire                core_cpu_IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_fire;
  wire       [31:0]   IBusSimplePlugin_rspJoin_fetchRsp_pc;
  reg                 IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  wire                IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  wire                when_IBusSimplePlugin_l377;
  wire                IBusSimplePlugin_rspJoin_join_valid;
  wire                IBusSimplePlugin_rspJoin_join_ready;
  wire       [31:0]   IBusSimplePlugin_rspJoin_join_payload_pc;
  wire                IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  wire                IBusSimplePlugin_rspJoin_join_payload_isRvc;
  wire                IBusSimplePlugin_rspJoin_exceptionDetected;
  wire                IBusSimplePlugin_rspJoin_join_fire;
  wire                _zz_IBusSimplePlugin_iBusRsp_output_valid;
  wire                _zz_dBus_cmd_valid;
  reg                 execute_DBusSimplePlugin_skipCmd;
  reg        [31:0]   _zz_dBus_cmd_payload_data;
  wire                when_DBusSimplePlugin_l434;
  reg        [3:0]    _zz_execute_DBusSimplePlugin_formalMask;
  wire       [3:0]    execute_DBusSimplePlugin_formalMask;
  wire                when_DBusSimplePlugin_l489;
  reg        [31:0]   memory_DBusSimplePlugin_rspShifted;
  wire       [1:0]    switch_Misc_l241_2;
  wire                _zz_memory_DBusSimplePlugin_rspFormated;
  reg        [31:0]   _zz_memory_DBusSimplePlugin_rspFormated_1;
  wire                _zz_memory_DBusSimplePlugin_rspFormated_2;
  reg        [31:0]   _zz_memory_DBusSimplePlugin_rspFormated_3;
  reg        [31:0]   memory_DBusSimplePlugin_rspFormated;
  wire                when_DBusSimplePlugin_l565;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
  wire       [1:0]    CsrPlugin_mtvec_mode;
  reg        [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg        [31:0]   CsrPlugin_mscratch;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle;
  reg        [63:0]   CsrPlugin_minstret;
  wire                _zz_when_CsrPlugin_l1302;
  wire                _zz_when_CsrPlugin_l1302_1;
  wire                _zz_when_CsrPlugin_l1302_2;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire                when_CsrPlugin_l1259;
  wire                when_CsrPlugin_l1259_1;
  wire                when_CsrPlugin_l1259_2;
  wire                when_CsrPlugin_l1259_3;
  wire                when_CsrPlugin_l1272;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                when_CsrPlugin_l1296;
  wire                when_CsrPlugin_l1302;
  wire                when_CsrPlugin_l1302_1;
  wire                when_CsrPlugin_l1302_2;
  wire                CsrPlugin_exception;
  reg                 CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  wire                when_CsrPlugin_l1335;
  wire                when_CsrPlugin_l1335_1;
  wire                when_CsrPlugin_l1335_2;
  wire                when_CsrPlugin_l1340;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                when_CsrPlugin_l1346;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  wire                CsrPlugin_trapCauseEbreakDebug;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  wire                CsrPlugin_trapEnterDebug;
  wire                when_CsrPlugin_l1390;
  wire                when_CsrPlugin_l1398;
  wire                when_CsrPlugin_l1456;
  wire       [1:0]    switch_CsrPlugin_l1460;
  reg                 execute_CsrPlugin_wfiWake;
  wire                when_CsrPlugin_l1519;
  wire                when_CsrPlugin_l1521;
  wire                when_CsrPlugin_l1527;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire                when_CsrPlugin_l1540;
  wire                when_CsrPlugin_l1547;
  wire                when_CsrPlugin_l1548;
  wire                when_CsrPlugin_l1555;
  wire                when_CsrPlugin_l1565;
  reg                 execute_CsrPlugin_writeInstruction;
  reg                 execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  wire                switch_Misc_l241_3;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_writeDataSignal;
  wire                when_CsrPlugin_l1587;
  wire                when_CsrPlugin_l1591;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  wire       [31:0]   _zz_decode_IS_DIV;
  wire                _zz_decode_IS_DIV_1;
  wire                _zz_decode_IS_DIV_2;
  wire                _zz_decode_IS_DIV_3;
  wire                _zz_decode_IS_DIV_4;
  wire                _zz_decode_IS_DIV_5;
  wire                _zz_decode_IS_DIV_6;
  wire                _zz_decode_IS_DIV_7;
  wire                _zz_decode_IS_DIV_8;
  wire                _zz_decode_IS_DIV_9;
  wire       [1:0]    _zz_decode_SRC1_CTRL_2;
  wire       [1:0]    _zz_decode_SRC2_CTRL_2;
  wire       [2:0]    _zz_decode_ENV_CTRL_2;
  wire       [1:0]    _zz_decode_ALU_CTRL_2;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL_2;
  wire       [1:0]    _zz_decode_SHIFT_CTRL_2;
  wire       [1:0]    _zz_decode_BRANCH_CTRL_2;
  wire                when_RegFilePlugin_l63;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_5;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_execute_REGFILE_WRITE_DATA;
  reg        [31:0]   _zz_decode_SRC1;
  wire                _zz_decode_SRC2;
  reg        [19:0]   _zz_decode_SRC2_1;
  wire                _zz_decode_SRC2_2;
  reg        [19:0]   _zz_decode_SRC2_3;
  reg        [31:0]   _zz_decode_SRC2_4;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_execute_FullBarrelShifterPlugin_reversed;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_decode_RS2_3;
  reg        [32:0]   memory_MulDivIterativePlugin_rs1;
  reg        [31:0]   memory_MulDivIterativePlugin_rs2;
  reg        [64:0]   memory_MulDivIterativePlugin_accumulator;
  wire                memory_MulDivIterativePlugin_frontendOk;
  reg                 memory_MulDivIterativePlugin_mul_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_mul_counter_willClear;
  reg        [5:0]    memory_MulDivIterativePlugin_mul_counter_valueNext;
  reg        [5:0]    memory_MulDivIterativePlugin_mul_counter_value;
  wire                memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_mul_counter_willOverflow;
  wire                when_MulDivIterativePlugin_l96;
  wire                when_MulDivIterativePlugin_l97;
  wire                when_MulDivIterativePlugin_l100;
  wire                when_MulDivIterativePlugin_l110;
  reg                 memory_MulDivIterativePlugin_div_needRevert;
  reg                 memory_MulDivIterativePlugin_div_counter_willIncrement;
  reg                 memory_MulDivIterativePlugin_div_counter_willClear;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_valueNext;
  reg        [5:0]    memory_MulDivIterativePlugin_div_counter_value;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflowIfInc;
  wire                memory_MulDivIterativePlugin_div_counter_willOverflow;
  reg                 memory_MulDivIterativePlugin_div_done;
  wire                when_MulDivIterativePlugin_l126;
  wire                when_MulDivIterativePlugin_l126_1;
  reg        [31:0]   memory_MulDivIterativePlugin_div_result;
  wire                when_MulDivIterativePlugin_l128;
  wire                when_MulDivIterativePlugin_l129;
  wire                when_MulDivIterativePlugin_l132;
  wire       [31:0]   _zz_memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_MulDivIterativePlugin_div_stage_0_outNumerator;
  wire                when_MulDivIterativePlugin_l151;
  wire       [31:0]   _zz_memory_MulDivIterativePlugin_div_result;
  wire                when_MulDivIterativePlugin_l162;
  wire                _zz_memory_MulDivIterativePlugin_rs2;
  wire                _zz_memory_MulDivIterativePlugin_rs1;
  reg        [32:0]   _zz_memory_MulDivIterativePlugin_rs1_1;
  reg                 HazardSimplePlugin_src0Hazard;
  reg                 HazardSimplePlugin_src1Hazard;
  wire                HazardSimplePlugin_writeBackWrites_valid;
  wire       [4:0]    HazardSimplePlugin_writeBackWrites_payload_address;
  wire       [31:0]   HazardSimplePlugin_writeBackWrites_payload_data;
  reg                 HazardSimplePlugin_writeBackBuffer_valid;
  reg        [4:0]    HazardSimplePlugin_writeBackBuffer_payload_address;
  reg        [31:0]   HazardSimplePlugin_writeBackBuffer_payload_data;
  wire                HazardSimplePlugin_addr0Match;
  wire                HazardSimplePlugin_addr1Match;
  wire                when_HazardSimplePlugin_l47;
  wire                when_HazardSimplePlugin_l48;
  wire                when_HazardSimplePlugin_l51;
  wire                when_HazardSimplePlugin_l45;
  wire                when_HazardSimplePlugin_l57;
  wire                when_HazardSimplePlugin_l58;
  wire                when_HazardSimplePlugin_l48_1;
  wire                when_HazardSimplePlugin_l51_1;
  wire                when_HazardSimplePlugin_l45_1;
  wire                when_HazardSimplePlugin_l57_1;
  wire                when_HazardSimplePlugin_l58_1;
  wire                when_HazardSimplePlugin_l48_2;
  wire                when_HazardSimplePlugin_l51_2;
  wire                when_HazardSimplePlugin_l45_2;
  wire                when_HazardSimplePlugin_l57_2;
  wire                when_HazardSimplePlugin_l58_2;
  wire                when_HazardSimplePlugin_l105;
  wire                when_HazardSimplePlugin_l108;
  wire                when_HazardSimplePlugin_l113;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    switch_Misc_l241_4;
  reg                 _zz_execute_BRANCH_DO;
  reg                 _zz_execute_BRANCH_DO_1;
  wire       [31:0]   execute_BranchPlugin_branch_src1;
  wire                _zz_execute_BranchPlugin_branch_src2;
  reg        [10:0]   _zz_execute_BranchPlugin_branch_src2_1;
  wire                _zz_execute_BranchPlugin_branch_src2_2;
  reg        [19:0]   _zz_execute_BranchPlugin_branch_src2_3;
  wire                _zz_execute_BranchPlugin_branch_src2_4;
  reg        [18:0]   _zz_execute_BranchPlugin_branch_src2_5;
  reg        [31:0]   _zz_execute_BranchPlugin_branch_src2_6;
  wire       [31:0]   execute_BranchPlugin_branch_src2;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  reg                 DebugPlugin_firstCycle;
  reg                 DebugPlugin_secondCycle;
  reg                 DebugPlugin_resetIt;
  reg                 DebugPlugin_haltIt;
  reg                 DebugPlugin_stepIt;
  reg                 DebugPlugin_isPipBusy;
  reg                 DebugPlugin_godmode;
  wire                when_DebugPlugin_l238;
  reg                 DebugPlugin_haltedByBreak;
  reg                 DebugPlugin_debugUsed /* verilator public */ ;
  reg                 DebugPlugin_disableEbreak;
  wire                DebugPlugin_allowEBreak;
  reg                 DebugPlugin_hardwareBreakpoints_0_valid;
  reg        [30:0]   DebugPlugin_hardwareBreakpoints_0_pc;
  reg                 DebugPlugin_hardwareBreakpoints_1_valid;
  reg        [30:0]   DebugPlugin_hardwareBreakpoints_1_pc;
  reg                 DebugPlugin_hardwareBreakpoints_2_valid;
  reg        [30:0]   DebugPlugin_hardwareBreakpoints_2_pc;
  reg        [31:0]   DebugPlugin_busReadDataReg;
  reg                 _zz_when_DebugPlugin_l257;
  wire                when_DebugPlugin_l257;
  wire       [5:0]    switch_DebugPlugin_l280;
  wire                when_DebugPlugin_l284;
  wire                when_DebugPlugin_l284_1;
  wire                when_DebugPlugin_l285;
  wire                when_DebugPlugin_l285_1;
  wire                when_DebugPlugin_l286;
  wire                when_DebugPlugin_l287;
  wire                when_DebugPlugin_l288;
  wire                when_DebugPlugin_l288_1;
  wire                when_DebugPlugin_l308;
  wire                when_DebugPlugin_l311;
  wire                when_DebugPlugin_l324;
  reg                 _zz_6;
  reg                 DebugPlugin_resetIt_regNext;
  wire                when_DebugPlugin_l344;
  wire                when_Pipeline_l124;
  reg        [31:0]   decode_to_execute_PC;
  wire                when_Pipeline_l124_1;
  reg        [31:0]   execute_to_memory_PC;
  wire                when_Pipeline_l124_2;
  reg        [31:0]   memory_to_writeBack_PC;
  wire                when_Pipeline_l124_3;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  wire                when_Pipeline_l124_4;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  wire                when_Pipeline_l124_5;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  wire                when_Pipeline_l124_6;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_7;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_8;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_9;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  wire                when_Pipeline_l124_10;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  wire                when_Pipeline_l124_11;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  wire                when_Pipeline_l124_12;
  reg                 decode_to_execute_MEMORY_ENABLE;
  wire                when_Pipeline_l124_13;
  reg                 execute_to_memory_MEMORY_ENABLE;
  wire                when_Pipeline_l124_14;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_15;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_16;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_17;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  wire                when_Pipeline_l124_18;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_19;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_20;
  reg                 decode_to_execute_MEMORY_STORE;
  wire                when_Pipeline_l124_21;
  reg                 execute_to_memory_MEMORY_STORE;
  wire                when_Pipeline_l124_22;
  reg                 decode_to_execute_IS_CSR;
  wire                when_Pipeline_l124_23;
  reg        [2:0]    decode_to_execute_ENV_CTRL;
  wire                when_Pipeline_l124_24;
  reg        [2:0]    execute_to_memory_ENV_CTRL;
  wire                when_Pipeline_l124_25;
  reg        [2:0]    memory_to_writeBack_ENV_CTRL;
  wire                when_Pipeline_l124_26;
  reg        [1:0]    decode_to_execute_ALU_CTRL;
  wire                when_Pipeline_l124_27;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  wire                when_Pipeline_l124_28;
  reg        [1:0]    decode_to_execute_ALU_BITWISE_CTRL;
  wire                when_Pipeline_l124_29;
  reg        [1:0]    decode_to_execute_SHIFT_CTRL;
  wire                when_Pipeline_l124_30;
  reg        [1:0]    execute_to_memory_SHIFT_CTRL;
  wire                when_Pipeline_l124_31;
  reg                 decode_to_execute_IS_MUL;
  wire                when_Pipeline_l124_32;
  reg                 execute_to_memory_IS_MUL;
  wire                when_Pipeline_l124_33;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  wire                when_Pipeline_l124_34;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  wire                when_Pipeline_l124_35;
  reg                 decode_to_execute_IS_DIV;
  wire                when_Pipeline_l124_36;
  reg                 execute_to_memory_IS_DIV;
  wire                when_Pipeline_l124_37;
  reg        [1:0]    decode_to_execute_BRANCH_CTRL;
  wire                when_Pipeline_l124_38;
  reg        [31:0]   decode_to_execute_RS1;
  wire                when_Pipeline_l124_39;
  reg        [31:0]   decode_to_execute_RS2;
  wire                when_Pipeline_l124_40;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  wire                when_Pipeline_l124_41;
  reg        [31:0]   decode_to_execute_SRC1;
  wire                when_Pipeline_l124_42;
  reg        [31:0]   decode_to_execute_SRC2;
  wire                when_Pipeline_l124_43;
  reg                 decode_to_execute_DO_EBREAK;
  wire                when_Pipeline_l124_44;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  wire                when_Pipeline_l124_45;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_46;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_47;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  wire                when_Pipeline_l124_48;
  reg                 execute_to_memory_BRANCH_DO;
  wire                when_Pipeline_l124_49;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  wire                when_Pipeline_l151;
  wire                when_Pipeline_l154;
  wire                when_Pipeline_l151_1;
  wire                when_Pipeline_l154_1;
  wire                when_Pipeline_l151_2;
  wire                when_Pipeline_l154_2;
  reg        [2:0]    IBusSimplePlugin_injector_port_state;
  wire                when_Fetcher_l373;
  wire                when_Fetcher_l391;
  wire                when_Fetcher_l411;
  wire                when_CsrPlugin_l1669;
  reg                 execute_CsrPlugin_csr_3857;
  wire                when_CsrPlugin_l1669_1;
  reg                 execute_CsrPlugin_csr_3858;
  wire                when_CsrPlugin_l1669_2;
  reg                 execute_CsrPlugin_csr_3859;
  wire                when_CsrPlugin_l1669_3;
  reg                 execute_CsrPlugin_csr_3860;
  wire                when_CsrPlugin_l1669_4;
  reg                 execute_CsrPlugin_csr_769;
  wire                when_CsrPlugin_l1669_5;
  reg                 execute_CsrPlugin_csr_768;
  wire                when_CsrPlugin_l1669_6;
  reg                 execute_CsrPlugin_csr_836;
  wire                when_CsrPlugin_l1669_7;
  reg                 execute_CsrPlugin_csr_772;
  wire                when_CsrPlugin_l1669_8;
  reg                 execute_CsrPlugin_csr_773;
  wire                when_CsrPlugin_l1669_9;
  reg                 execute_CsrPlugin_csr_833;
  wire                when_CsrPlugin_l1669_10;
  reg                 execute_CsrPlugin_csr_832;
  wire                when_CsrPlugin_l1669_11;
  reg                 execute_CsrPlugin_csr_834;
  wire                when_CsrPlugin_l1669_12;
  reg                 execute_CsrPlugin_csr_835;
  wire                when_CsrPlugin_l1669_13;
  reg                 execute_CsrPlugin_csr_2816;
  wire                when_CsrPlugin_l1669_14;
  reg                 execute_CsrPlugin_csr_2944;
  wire                when_CsrPlugin_l1669_15;
  reg                 execute_CsrPlugin_csr_2818;
  wire                when_CsrPlugin_l1669_16;
  reg                 execute_CsrPlugin_csr_2946;
  wire                when_CsrPlugin_l1669_17;
  reg                 execute_CsrPlugin_csr_3072;
  wire                when_CsrPlugin_l1669_18;
  reg                 execute_CsrPlugin_csr_3200;
  wire                when_CsrPlugin_l1669_19;
  reg                 execute_CsrPlugin_csr_3074;
  wire                when_CsrPlugin_l1669_20;
  reg                 execute_CsrPlugin_csr_3202;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_1;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_2;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_3;
  wire       [1:0]    switch_CsrPlugin_l1031;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_4;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_5;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_6;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_7;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_8;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_9;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_10;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_11;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_12;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_13;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_14;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_15;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_16;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_17;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_18;
  reg        [31:0]   _zz_CsrPlugin_csrMapping_readDataInit_19;
  wire                when_CsrPlugin_l1702;
  wire       [11:0]   _zz_when_CsrPlugin_l1709;
  wire                when_CsrPlugin_l1709;
  reg                 when_CsrPlugin_l1719;
  wire                when_CsrPlugin_l1717;
  wire                when_CsrPlugin_l1725;
  `ifndef SYNTHESIS
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_1_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_1_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_1_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_1_string;
  reg [47:0] _zz_memory_to_writeBack_ENV_CTRL_string;
  reg [47:0] _zz_memory_to_writeBack_ENV_CTRL_1_string;
  reg [47:0] _zz_execute_to_memory_ENV_CTRL_string;
  reg [47:0] _zz_execute_to_memory_ENV_CTRL_1_string;
  reg [47:0] decode_ENV_CTRL_string;
  reg [47:0] _zz_decode_ENV_CTRL_string;
  reg [47:0] _zz_decode_to_execute_ENV_CTRL_string;
  reg [47:0] _zz_decode_to_execute_ENV_CTRL_1_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_execute_BRANCH_CTRL_string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_memory_SHIFT_CTRL_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_SHIFT_CTRL_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_decode_SRC2_CTRL_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_decode_SRC1_CTRL_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_execute_ALU_CTRL_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_execute_ALU_BITWISE_CTRL_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_1_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_1_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_1_string;
  reg [63:0] _zz_decode_ALU_CTRL_1_string;
  reg [47:0] _zz_decode_ENV_CTRL_1_string;
  reg [23:0] _zz_decode_SRC2_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_1_string;
  reg [47:0] memory_ENV_CTRL_string;
  reg [47:0] _zz_memory_ENV_CTRL_string;
  reg [47:0] execute_ENV_CTRL_string;
  reg [47:0] _zz_execute_ENV_CTRL_string;
  reg [47:0] writeBack_ENV_CTRL_string;
  reg [47:0] _zz_writeBack_ENV_CTRL_string;
  reg [95:0] _zz_decode_SRC1_CTRL_2_string;
  reg [23:0] _zz_decode_SRC2_CTRL_2_string;
  reg [47:0] _zz_decode_ENV_CTRL_2_string;
  reg [63:0] _zz_decode_ALU_CTRL_2_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_2_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_2_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_2_string;
  reg [47:0] decode_to_execute_ENV_CTRL_string;
  reg [47:0] execute_to_memory_ENV_CTRL_string;
  reg [47:0] memory_to_writeBack_ENV_CTRL_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif

  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_execute_SHIFT_RIGHT_1 = ($signed(_zz_execute_SHIFT_RIGHT_2) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT_1[31 : 0];
  assign _zz_execute_SHIFT_RIGHT_2 = {((execute_SHIFT_CTRL == ShiftCtrlEnum_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_decode_DO_EBREAK = (decode_PC >>> 1'd1);
  assign _zz_decode_DO_EBREAK_1 = (decode_PC >>> 1'd1);
  assign _zz_decode_DO_EBREAK_2 = (decode_PC >>> 1'd1);
  assign _zz_decode_FORMAL_PC_NEXT_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz_decode_FORMAL_PC_NEXT = {29'd0, _zz_decode_FORMAL_PC_NEXT_1};
  assign _zz_IBusSimplePlugin_jump_pcLoad_payload_1 = (_zz_IBusSimplePlugin_jump_pcLoad_payload & (~ _zz_IBusSimplePlugin_jump_pcLoad_payload_2));
  assign _zz_IBusSimplePlugin_jump_pcLoad_payload_2 = (_zz_IBusSimplePlugin_jump_pcLoad_payload - 2'b01);
  assign _zz_IBusSimplePlugin_fetchPc_pc_1 = {IBusSimplePlugin_fetchPc_inc,2'b00};
  assign _zz_IBusSimplePlugin_fetchPc_pc = {29'd0, _zz_IBusSimplePlugin_fetchPc_pc_1};
  assign _zz_IBusSimplePlugin_decodePc_pcPlus_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz_IBusSimplePlugin_decodePc_pcPlus = {29'd0, _zz_IBusSimplePlugin_decodePc_pcPlus_1};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_30 = {{_zz_IBusSimplePlugin_decompressor_decompressed_10,_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2]},12'h0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_37 = {{{4'b0000,_zz_IBusSimplePlugin_decompressor_decompressed[8 : 7]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 9]},2'b00};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_38 = {{{4'b0000,_zz_IBusSimplePlugin_decompressor_decompressed[8 : 7]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 9]},2'b00};
  assign _zz_IBusSimplePlugin_pending_next = (IBusSimplePlugin_pending_value + _zz_IBusSimplePlugin_pending_next_1);
  assign _zz_IBusSimplePlugin_pending_next_2 = IBusSimplePlugin_pending_inc;
  assign _zz_IBusSimplePlugin_pending_next_1 = {2'd0, _zz_IBusSimplePlugin_pending_next_2};
  assign _zz_IBusSimplePlugin_pending_next_4 = IBusSimplePlugin_pending_dec;
  assign _zz_IBusSimplePlugin_pending_next_3 = {2'd0, _zz_IBusSimplePlugin_pending_next_4};
  assign _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_1 = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter != 3'b000));
  assign _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter = {2'd0, _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_1};
  assign _zz__zz_execute_REGFILE_WRITE_DATA = execute_SRC_LESS;
  assign _zz__zz_decode_SRC1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz__zz_decode_SRC1_1 = decode_INSTRUCTION[19 : 15];
  assign _zz__zz_decode_SRC2_2 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_execute_SrcPlugin_addSub = ($signed(_zz_execute_SrcPlugin_addSub_1) + $signed(_zz_execute_SrcPlugin_addSub_4));
  assign _zz_execute_SrcPlugin_addSub_1 = ($signed(_zz_execute_SrcPlugin_addSub_2) + $signed(_zz_execute_SrcPlugin_addSub_3));
  assign _zz_execute_SrcPlugin_addSub_2 = execute_SRC1;
  assign _zz_execute_SrcPlugin_addSub_3 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_execute_SrcPlugin_addSub_4 = (execute_SRC_USE_SUB_LESS ? 32'h00000001 : 32'h0);
  assign _zz_memory_MulDivIterativePlugin_mul_counter_valueNext_1 = memory_MulDivIterativePlugin_mul_counter_willIncrement;
  assign _zz_memory_MulDivIterativePlugin_mul_counter_valueNext = {5'd0, _zz_memory_MulDivIterativePlugin_mul_counter_valueNext_1};
  assign _zz_memory_MulDivIterativePlugin_accumulator = (_zz_memory_MulDivIterativePlugin_accumulator_1 + _zz_memory_MulDivIterativePlugin_accumulator_3);
  assign _zz_memory_MulDivIterativePlugin_accumulator_2 = (memory_MulDivIterativePlugin_rs2[0] ? memory_MulDivIterativePlugin_rs1 : 33'h0);
  assign _zz_memory_MulDivIterativePlugin_accumulator_1 = {{1{_zz_memory_MulDivIterativePlugin_accumulator_2[32]}}, _zz_memory_MulDivIterativePlugin_accumulator_2};
  assign _zz_memory_MulDivIterativePlugin_accumulator_4 = _zz_memory_MulDivIterativePlugin_accumulator_5;
  assign _zz_memory_MulDivIterativePlugin_accumulator_3 = {{1{_zz_memory_MulDivIterativePlugin_accumulator_4[32]}}, _zz_memory_MulDivIterativePlugin_accumulator_4};
  assign _zz_memory_MulDivIterativePlugin_accumulator_5 = (memory_MulDivIterativePlugin_accumulator >>> 6'd32);
  assign _zz_memory_MulDivIterativePlugin_div_counter_valueNext_1 = memory_MulDivIterativePlugin_div_counter_willIncrement;
  assign _zz_memory_MulDivIterativePlugin_div_counter_valueNext = {5'd0, _zz_memory_MulDivIterativePlugin_div_counter_valueNext_1};
  assign _zz_memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = {1'd0, memory_MulDivIterativePlugin_rs2};
  assign _zz_memory_MulDivIterativePlugin_div_stage_0_outRemainder = memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_memory_MulDivIterativePlugin_div_stage_0_outRemainder_1 = memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_memory_MulDivIterativePlugin_div_stage_0_outNumerator = {_zz_memory_MulDivIterativePlugin_div_stage_0_remainderShifted,(! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_memory_MulDivIterativePlugin_div_result_1 = _zz_memory_MulDivIterativePlugin_div_result_2;
  assign _zz_memory_MulDivIterativePlugin_div_result_2 = _zz_memory_MulDivIterativePlugin_div_result_3;
  assign _zz_memory_MulDivIterativePlugin_div_result_3 = ({memory_MulDivIterativePlugin_div_needRevert,(memory_MulDivIterativePlugin_div_needRevert ? (~ _zz_memory_MulDivIterativePlugin_div_result) : _zz_memory_MulDivIterativePlugin_div_result)} + _zz_memory_MulDivIterativePlugin_div_result_4);
  assign _zz_memory_MulDivIterativePlugin_div_result_5 = memory_MulDivIterativePlugin_div_needRevert;
  assign _zz_memory_MulDivIterativePlugin_div_result_4 = {32'd0, _zz_memory_MulDivIterativePlugin_div_result_5};
  assign _zz_memory_MulDivIterativePlugin_rs1_3 = _zz_memory_MulDivIterativePlugin_rs1;
  assign _zz_memory_MulDivIterativePlugin_rs1_2 = {32'd0, _zz_memory_MulDivIterativePlugin_rs1_3};
  assign _zz_memory_MulDivIterativePlugin_rs2_2 = _zz_memory_MulDivIterativePlugin_rs2;
  assign _zz_memory_MulDivIterativePlugin_rs2_1 = {31'd0, _zz_memory_MulDivIterativePlugin_rs2_2};
  assign _zz__zz_execute_BranchPlugin_branch_src2 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz__zz_execute_BranchPlugin_branch_src2_4 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_decode_RegFilePlugin_rs1Data = 1'b1;
  assign _zz_decode_RegFilePlugin_rs2Data = 1'b1;
  assign _zz_decode_LEGAL_INSTRUCTION = 32'h0000107f;
  assign _zz_decode_LEGAL_INSTRUCTION_1 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_decode_LEGAL_INSTRUCTION_2 = 32'h00002073;
  assign _zz_decode_LEGAL_INSTRUCTION_3 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_decode_LEGAL_INSTRUCTION_4 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_decode_LEGAL_INSTRUCTION_5 = {((decode_INSTRUCTION & 32'h0000107f) == 32'h00000013),{((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_6) == 32'h00000003),{(_zz_decode_LEGAL_INSTRUCTION_7 == _zz_decode_LEGAL_INSTRUCTION_8),{_zz_decode_LEGAL_INSTRUCTION_9,{_zz_decode_LEGAL_INSTRUCTION_10,_zz_decode_LEGAL_INSTRUCTION_11}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_6 = 32'h0000207f;
  assign _zz_decode_LEGAL_INSTRUCTION_7 = (decode_INSTRUCTION & 32'h0000505f);
  assign _zz_decode_LEGAL_INSTRUCTION_8 = 32'h00000003;
  assign _zz_decode_LEGAL_INSTRUCTION_9 = ((decode_INSTRUCTION & 32'h0000707b) == 32'h00000063);
  assign _zz_decode_LEGAL_INSTRUCTION_10 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_decode_LEGAL_INSTRUCTION_11 = {((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033),{((decode_INSTRUCTION & 32'hbe00705f) == 32'h00005013),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_12) == 32'h00001013),{(_zz_decode_LEGAL_INSTRUCTION_13 == _zz_decode_LEGAL_INSTRUCTION_14),{_zz_decode_LEGAL_INSTRUCTION_15,{_zz_decode_LEGAL_INSTRUCTION_16,_zz_decode_LEGAL_INSTRUCTION_17}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_12 = 32'hfe00305f;
  assign _zz_decode_LEGAL_INSTRUCTION_13 = (decode_INSTRUCTION & 32'hbe00707f);
  assign _zz_decode_LEGAL_INSTRUCTION_14 = 32'h00000033;
  assign _zz_decode_LEGAL_INSTRUCTION_15 = ((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073);
  assign _zz_decode_LEGAL_INSTRUCTION_16 = ((decode_INSTRUCTION & 32'hffefffff) == 32'h00000073);
  assign _zz_decode_LEGAL_INSTRUCTION_17 = ((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073);
  assign _zz_IBusSimplePlugin_decompressor_decompressed_27 = {_zz_IBusSimplePlugin_decompressor_decompressed_12,_zz_IBusSimplePlugin_decompressor_decompressed[4 : 3]};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_28 = _zz_IBusSimplePlugin_decompressor_decompressed[5];
  assign _zz_IBusSimplePlugin_decompressor_decompressed_29 = _zz_IBusSimplePlugin_decompressor_decompressed[2];
  assign _zz_IBusSimplePlugin_decompressor_decompressed_31 = (_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] == 2'b01);
  assign _zz_IBusSimplePlugin_decompressor_decompressed_32 = ((_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] == 2'b11) && (_zz_IBusSimplePlugin_decompressor_decompressed[6 : 5] == 2'b00));
  assign _zz_IBusSimplePlugin_decompressor_decompressed_33 = 7'h0;
  assign _zz_IBusSimplePlugin_decompressor_decompressed_34 = _zz_IBusSimplePlugin_decompressor_decompressed[6 : 2];
  assign _zz_IBusSimplePlugin_decompressor_decompressed_35 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  assign _zz_IBusSimplePlugin_decompressor_decompressed_36 = _zz_IBusSimplePlugin_decompressor_decompressed[11 : 7];
  assign _zz__zz_decode_IS_DIV = (decode_INSTRUCTION & 32'h0000001c);
  assign _zz__zz_decode_IS_DIV_1 = 32'h00000004;
  assign _zz__zz_decode_IS_DIV_2 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz__zz_decode_IS_DIV_3 = 32'h00000040;
  assign _zz__zz_decode_IS_DIV_4 = ((decode_INSTRUCTION & 32'h02004064) == 32'h02004020);
  assign _zz__zz_decode_IS_DIV_5 = {_zz_decode_IS_DIV_9,_zz_decode_IS_DIV_8};
  assign _zz__zz_decode_IS_DIV_6 = (|{_zz_decode_IS_DIV_9,{_zz_decode_IS_DIV_7,_zz_decode_IS_DIV_8}});
  assign _zz__zz_decode_IS_DIV_7 = (|(_zz__zz_decode_IS_DIV_8 == _zz__zz_decode_IS_DIV_9));
  assign _zz__zz_decode_IS_DIV_10 = {(|_zz__zz_decode_IS_DIV_11),{(|_zz__zz_decode_IS_DIV_12),{_zz__zz_decode_IS_DIV_15,{_zz__zz_decode_IS_DIV_17,_zz__zz_decode_IS_DIV_20}}}};
  assign _zz__zz_decode_IS_DIV_8 = (decode_INSTRUCTION & 32'h02004074);
  assign _zz__zz_decode_IS_DIV_9 = 32'h02000030;
  assign _zz__zz_decode_IS_DIV_11 = ((decode_INSTRUCTION & 32'h02007054) == 32'h00005010);
  assign _zz__zz_decode_IS_DIV_12 = {((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_13) == 32'h40001010),((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_14) == 32'h00001010)};
  assign _zz__zz_decode_IS_DIV_15 = (|((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_16) == 32'h00000024));
  assign _zz__zz_decode_IS_DIV_17 = (|(_zz__zz_decode_IS_DIV_18 == _zz__zz_decode_IS_DIV_19));
  assign _zz__zz_decode_IS_DIV_20 = {(|_zz_decode_IS_DIV_7),{(|_zz__zz_decode_IS_DIV_21),{_zz__zz_decode_IS_DIV_24,{_zz__zz_decode_IS_DIV_26,_zz__zz_decode_IS_DIV_27}}}};
  assign _zz__zz_decode_IS_DIV_13 = 32'h40003054;
  assign _zz__zz_decode_IS_DIV_14 = 32'h02007054;
  assign _zz__zz_decode_IS_DIV_16 = 32'h00000064;
  assign _zz__zz_decode_IS_DIV_18 = (decode_INSTRUCTION & 32'h00001000);
  assign _zz__zz_decode_IS_DIV_19 = 32'h00001000;
  assign _zz__zz_decode_IS_DIV_21 = {((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_22) == 32'h00002000),((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_23) == 32'h00001000)};
  assign _zz__zz_decode_IS_DIV_24 = (|((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_25) == 32'h00004000));
  assign _zz__zz_decode_IS_DIV_26 = (|_zz_decode_IS_DIV_2);
  assign _zz__zz_decode_IS_DIV_27 = {(|_zz_decode_IS_DIV_6),{(|_zz__zz_decode_IS_DIV_28),{_zz__zz_decode_IS_DIV_29,{_zz__zz_decode_IS_DIV_32,_zz__zz_decode_IS_DIV_34}}}};
  assign _zz__zz_decode_IS_DIV_22 = 32'h00002010;
  assign _zz__zz_decode_IS_DIV_23 = 32'h00005000;
  assign _zz__zz_decode_IS_DIV_25 = 32'h00004004;
  assign _zz__zz_decode_IS_DIV_28 = _zz_decode_IS_DIV_6;
  assign _zz__zz_decode_IS_DIV_29 = (|{((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_30) == 32'h10000050),((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_31) == 32'h00000050)});
  assign _zz__zz_decode_IS_DIV_32 = (|((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_33) == 32'h00000050));
  assign _zz__zz_decode_IS_DIV_34 = {(|{_zz__zz_decode_IS_DIV_35,_zz__zz_decode_IS_DIV_36}),{(|{_zz__zz_decode_IS_DIV_37,_zz__zz_decode_IS_DIV_39}),{(|_zz__zz_decode_IS_DIV_41),{_zz__zz_decode_IS_DIV_50,{_zz__zz_decode_IS_DIV_53,_zz__zz_decode_IS_DIV_55}}}}};
  assign _zz__zz_decode_IS_DIV_30 = 32'h10203050;
  assign _zz__zz_decode_IS_DIV_31 = 32'h10103050;
  assign _zz__zz_decode_IS_DIV_33 = 32'h00103050;
  assign _zz__zz_decode_IS_DIV_35 = ((decode_INSTRUCTION & 32'h00001050) == 32'h00001050);
  assign _zz__zz_decode_IS_DIV_36 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002050);
  assign _zz__zz_decode_IS_DIV_37 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_38) == 32'h00000020);
  assign _zz__zz_decode_IS_DIV_39 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_40) == 32'h00000020);
  assign _zz__zz_decode_IS_DIV_41 = {(_zz__zz_decode_IS_DIV_42 == _zz__zz_decode_IS_DIV_43),{_zz__zz_decode_IS_DIV_44,{_zz__zz_decode_IS_DIV_45,_zz__zz_decode_IS_DIV_47}}};
  assign _zz__zz_decode_IS_DIV_50 = (|(_zz__zz_decode_IS_DIV_51 == _zz__zz_decode_IS_DIV_52));
  assign _zz__zz_decode_IS_DIV_53 = (|_zz__zz_decode_IS_DIV_54);
  assign _zz__zz_decode_IS_DIV_55 = {(|_zz__zz_decode_IS_DIV_56),{_zz__zz_decode_IS_DIV_67,{_zz__zz_decode_IS_DIV_80,_zz__zz_decode_IS_DIV_85}}};
  assign _zz__zz_decode_IS_DIV_38 = 32'h00000034;
  assign _zz__zz_decode_IS_DIV_40 = 32'h00000064;
  assign _zz__zz_decode_IS_DIV_42 = (decode_INSTRUCTION & 32'h00002040);
  assign _zz__zz_decode_IS_DIV_43 = 32'h00002040;
  assign _zz__zz_decode_IS_DIV_44 = ((decode_INSTRUCTION & 32'h00001040) == 32'h00001040);
  assign _zz__zz_decode_IS_DIV_45 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_46) == 32'h00000040);
  assign _zz__zz_decode_IS_DIV_47 = {(_zz__zz_decode_IS_DIV_48 == _zz__zz_decode_IS_DIV_49),_zz_decode_IS_DIV_3};
  assign _zz__zz_decode_IS_DIV_51 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz__zz_decode_IS_DIV_52 = 32'h00000020;
  assign _zz__zz_decode_IS_DIV_54 = ((decode_INSTRUCTION & 32'h0) == 32'h0);
  assign _zz__zz_decode_IS_DIV_56 = {_zz_decode_IS_DIV_4,{_zz__zz_decode_IS_DIV_57,{_zz__zz_decode_IS_DIV_59,_zz__zz_decode_IS_DIV_62}}};
  assign _zz__zz_decode_IS_DIV_67 = (|{_zz_decode_IS_DIV_5,{_zz__zz_decode_IS_DIV_68,_zz__zz_decode_IS_DIV_71}});
  assign _zz__zz_decode_IS_DIV_80 = (|{_zz__zz_decode_IS_DIV_81,_zz__zz_decode_IS_DIV_82});
  assign _zz__zz_decode_IS_DIV_85 = {(|_zz__zz_decode_IS_DIV_86),{_zz__zz_decode_IS_DIV_89,{_zz__zz_decode_IS_DIV_97,_zz__zz_decode_IS_DIV_101}}};
  assign _zz__zz_decode_IS_DIV_46 = 32'h00000050;
  assign _zz__zz_decode_IS_DIV_48 = (decode_INSTRUCTION & 32'h00400040);
  assign _zz__zz_decode_IS_DIV_49 = 32'h00000040;
  assign _zz__zz_decode_IS_DIV_57 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_58) == 32'h00002010);
  assign _zz__zz_decode_IS_DIV_59 = (_zz__zz_decode_IS_DIV_60 == _zz__zz_decode_IS_DIV_61);
  assign _zz__zz_decode_IS_DIV_62 = {_zz__zz_decode_IS_DIV_63,_zz__zz_decode_IS_DIV_65};
  assign _zz__zz_decode_IS_DIV_68 = (_zz__zz_decode_IS_DIV_69 == _zz__zz_decode_IS_DIV_70);
  assign _zz__zz_decode_IS_DIV_71 = {_zz__zz_decode_IS_DIV_72,{_zz__zz_decode_IS_DIV_74,_zz__zz_decode_IS_DIV_77}};
  assign _zz__zz_decode_IS_DIV_81 = _zz_decode_IS_DIV_4;
  assign _zz__zz_decode_IS_DIV_82 = (_zz__zz_decode_IS_DIV_83 == _zz__zz_decode_IS_DIV_84);
  assign _zz__zz_decode_IS_DIV_86 = {_zz_decode_IS_DIV_4,_zz__zz_decode_IS_DIV_87};
  assign _zz__zz_decode_IS_DIV_89 = (|{_zz__zz_decode_IS_DIV_90,_zz__zz_decode_IS_DIV_93});
  assign _zz__zz_decode_IS_DIV_97 = (|_zz__zz_decode_IS_DIV_98);
  assign _zz__zz_decode_IS_DIV_101 = {_zz__zz_decode_IS_DIV_102,{_zz__zz_decode_IS_DIV_110,_zz__zz_decode_IS_DIV_114}};
  assign _zz__zz_decode_IS_DIV_58 = 32'h00002030;
  assign _zz__zz_decode_IS_DIV_60 = (decode_INSTRUCTION & 32'h00001030);
  assign _zz__zz_decode_IS_DIV_61 = 32'h00000010;
  assign _zz__zz_decode_IS_DIV_63 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_64) == 32'h00002020);
  assign _zz__zz_decode_IS_DIV_65 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_66) == 32'h00000020);
  assign _zz__zz_decode_IS_DIV_69 = (decode_INSTRUCTION & 32'h00001010);
  assign _zz__zz_decode_IS_DIV_70 = 32'h00001010;
  assign _zz__zz_decode_IS_DIV_72 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_73) == 32'h00002010);
  assign _zz__zz_decode_IS_DIV_74 = (_zz__zz_decode_IS_DIV_75 == _zz__zz_decode_IS_DIV_76);
  assign _zz__zz_decode_IS_DIV_77 = {_zz__zz_decode_IS_DIV_78,_zz__zz_decode_IS_DIV_79};
  assign _zz__zz_decode_IS_DIV_83 = (decode_INSTRUCTION & 32'h00000070);
  assign _zz__zz_decode_IS_DIV_84 = 32'h00000020;
  assign _zz__zz_decode_IS_DIV_87 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_88) == 32'h0);
  assign _zz__zz_decode_IS_DIV_90 = (_zz__zz_decode_IS_DIV_91 == _zz__zz_decode_IS_DIV_92);
  assign _zz__zz_decode_IS_DIV_93 = {_zz_decode_IS_DIV_3,{_zz__zz_decode_IS_DIV_94,_zz__zz_decode_IS_DIV_95}};
  assign _zz__zz_decode_IS_DIV_98 = (_zz__zz_decode_IS_DIV_99 == _zz__zz_decode_IS_DIV_100);
  assign _zz__zz_decode_IS_DIV_102 = (|{_zz__zz_decode_IS_DIV_103,_zz__zz_decode_IS_DIV_105});
  assign _zz__zz_decode_IS_DIV_110 = (|_zz__zz_decode_IS_DIV_111);
  assign _zz__zz_decode_IS_DIV_114 = (|_zz__zz_decode_IS_DIV_115);
  assign _zz__zz_decode_IS_DIV_64 = 32'h02002060;
  assign _zz__zz_decode_IS_DIV_66 = 32'h02003020;
  assign _zz__zz_decode_IS_DIV_73 = 32'h00002010;
  assign _zz__zz_decode_IS_DIV_75 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz__zz_decode_IS_DIV_76 = 32'h00000010;
  assign _zz__zz_decode_IS_DIV_78 = ((decode_INSTRUCTION & 32'h0000000c) == 32'h00000004);
  assign _zz__zz_decode_IS_DIV_79 = ((decode_INSTRUCTION & 32'h00000028) == 32'h0);
  assign _zz__zz_decode_IS_DIV_88 = 32'h00000020;
  assign _zz__zz_decode_IS_DIV_91 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz__zz_decode_IS_DIV_92 = 32'h0;
  assign _zz__zz_decode_IS_DIV_94 = _zz_decode_IS_DIV_2;
  assign _zz__zz_decode_IS_DIV_95 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_96) == 32'h00001000);
  assign _zz__zz_decode_IS_DIV_99 = (decode_INSTRUCTION & 32'h00000058);
  assign _zz__zz_decode_IS_DIV_100 = 32'h0;
  assign _zz__zz_decode_IS_DIV_103 = ((decode_INSTRUCTION & _zz__zz_decode_IS_DIV_104) == 32'h00000040);
  assign _zz__zz_decode_IS_DIV_105 = {(_zz__zz_decode_IS_DIV_106 == _zz__zz_decode_IS_DIV_107),(_zz__zz_decode_IS_DIV_108 == _zz__zz_decode_IS_DIV_109)};
  assign _zz__zz_decode_IS_DIV_111 = {(_zz__zz_decode_IS_DIV_112 == _zz__zz_decode_IS_DIV_113),_zz_decode_IS_DIV_1};
  assign _zz__zz_decode_IS_DIV_115 = {(_zz__zz_decode_IS_DIV_116 == _zz__zz_decode_IS_DIV_117),_zz_decode_IS_DIV_1};
  assign _zz__zz_decode_IS_DIV_96 = 32'h00005004;
  assign _zz__zz_decode_IS_DIV_104 = 32'h00000044;
  assign _zz__zz_decode_IS_DIV_106 = (decode_INSTRUCTION & 32'h00002014);
  assign _zz__zz_decode_IS_DIV_107 = 32'h00002010;
  assign _zz__zz_decode_IS_DIV_108 = (decode_INSTRUCTION & 32'h40000034);
  assign _zz__zz_decode_IS_DIV_109 = 32'h40000030;
  assign _zz__zz_decode_IS_DIV_112 = (decode_INSTRUCTION & 32'h00000014);
  assign _zz__zz_decode_IS_DIV_113 = 32'h00000004;
  assign _zz__zz_decode_IS_DIV_116 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz__zz_decode_IS_DIV_117 = 32'h00000004;
  assign _zz_CsrPlugin_csrMapping_readDataInit_20 = 32'h0;
  always @(posedge clk) begin
    if(_zz_decode_RegFilePlugin_rs1Data) begin
      RegFilePlugin_regFile_spinal_port0 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @(posedge clk) begin
    if(_zz_decode_RegFilePlugin_rs2Data) begin
      RegFilePlugin_regFile_spinal_port1 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @(posedge clk) begin
    if(_zz_1) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  StreamFifoLowLatency_5 IBusSimplePlugin_rspJoin_rspBuffer_c (
    .io_push_valid         (iBus_rsp_toStream_valid                                       ), //i
    .io_push_ready         (IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready            ), //o
    .io_push_payload_error (iBus_rsp_toStream_payload_error                               ), //i
    .io_push_payload_inst  (iBus_rsp_toStream_payload_inst[31:0]                          ), //i
    .io_pop_valid          (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid             ), //o
    .io_pop_ready          (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready             ), //i
    .io_pop_payload_error  (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error     ), //o
    .io_pop_payload_inst   (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst[31:0]), //o
    .io_flush              (1'b0                                                          ), //i
    .io_occupancy          (IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy[1:0]        ), //o
    .io_availability       (IBusSimplePlugin_rspJoin_rspBuffer_c_io_availability[1:0]     ), //o
    .clk                   (clk                                                           ), //i
    .reset_n               (reset_n                                                       )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_BRANCH_CTRL)
      BranchCtrlEnum_INC : decode_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : decode_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : decode_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_decode_to_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_to_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_to_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL_1)
      BranchCtrlEnum_INC : _zz_decode_to_execute_BRANCH_CTRL_1_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_to_execute_BRANCH_CTRL_1_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL_1)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL_1)
      AluCtrlEnum_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_1_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_1_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_to_execute_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_memory_to_writeBack_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_memory_to_writeBack_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_memory_to_writeBack_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_memory_to_writeBack_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_memory_to_writeBack_ENV_CTRL_string = "EBREAK";
      default : _zz_memory_to_writeBack_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_memory_to_writeBack_ENV_CTRL_1_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_memory_to_writeBack_ENV_CTRL_1_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_memory_to_writeBack_ENV_CTRL_1_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_memory_to_writeBack_ENV_CTRL_1_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_memory_to_writeBack_ENV_CTRL_1_string = "EBREAK";
      default : _zz_memory_to_writeBack_ENV_CTRL_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_execute_to_memory_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_execute_to_memory_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_execute_to_memory_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_execute_to_memory_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_execute_to_memory_ENV_CTRL_string = "EBREAK";
      default : _zz_execute_to_memory_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_execute_to_memory_ENV_CTRL_1_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_execute_to_memory_ENV_CTRL_1_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_execute_to_memory_ENV_CTRL_1_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_execute_to_memory_ENV_CTRL_1_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_execute_to_memory_ENV_CTRL_1_string = "EBREAK";
      default : _zz_execute_to_memory_ENV_CTRL_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      EnvCtrlEnum_NONE : decode_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : decode_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : decode_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : decode_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : decode_ENV_CTRL_string = "EBREAK";
      default : decode_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_decode_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_decode_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_decode_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_decode_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_decode_ENV_CTRL_string = "EBREAK";
      default : _zz_decode_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_decode_to_execute_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_decode_to_execute_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_decode_to_execute_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_decode_to_execute_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_decode_to_execute_ENV_CTRL_string = "EBREAK";
      default : _zz_decode_to_execute_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_decode_to_execute_ENV_CTRL_1_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_decode_to_execute_ENV_CTRL_1_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_decode_to_execute_ENV_CTRL_1_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_decode_to_execute_ENV_CTRL_1_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_decode_to_execute_ENV_CTRL_1_string = "EBREAK";
      default : _zz_decode_to_execute_ENV_CTRL_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      Src2CtrlEnum_RS : decode_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : decode_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : decode_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_string = "PC ";
      default : _zz_decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      Src1CtrlEnum_RS : decode_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : decode_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_1)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_1_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_1_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_1_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_1)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_1)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_1_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_1_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_1)
      EnvCtrlEnum_NONE : _zz_decode_ENV_CTRL_1_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_decode_ENV_CTRL_1_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_decode_ENV_CTRL_1_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_decode_ENV_CTRL_1_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_decode_ENV_CTRL_1_string = "EBREAK";
      default : _zz_decode_ENV_CTRL_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_1)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_1_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_1_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_1_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_1_string = "PC ";
      default : _zz_decode_SRC2_CTRL_1_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_1)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_1_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_1_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_1_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_1_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_1_string = "????????????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      EnvCtrlEnum_NONE : memory_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : memory_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : memory_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : memory_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : memory_ENV_CTRL_string = "EBREAK";
      default : memory_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_memory_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_memory_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_memory_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_memory_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_memory_ENV_CTRL_string = "EBREAK";
      default : _zz_memory_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      EnvCtrlEnum_NONE : execute_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : execute_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : execute_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : execute_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : execute_ENV_CTRL_string = "EBREAK";
      default : execute_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_execute_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_execute_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_execute_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_execute_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_execute_ENV_CTRL_string = "EBREAK";
      default : _zz_execute_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : writeBack_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : writeBack_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : writeBack_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : writeBack_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : writeBack_ENV_CTRL_string = "EBREAK";
      default : writeBack_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : _zz_writeBack_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_writeBack_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_writeBack_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_writeBack_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_writeBack_ENV_CTRL_string = "EBREAK";
      default : _zz_writeBack_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_2)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_2_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_2_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_2_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_2_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_2_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_2)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_2_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_2_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_2_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_2_string = "PC ";
      default : _zz_decode_SRC2_CTRL_2_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_2)
      EnvCtrlEnum_NONE : _zz_decode_ENV_CTRL_2_string = "NONE  ";
      EnvCtrlEnum_XRET : _zz_decode_ENV_CTRL_2_string = "XRET  ";
      EnvCtrlEnum_WFI : _zz_decode_ENV_CTRL_2_string = "WFI   ";
      EnvCtrlEnum_ECALL : _zz_decode_ENV_CTRL_2_string = "ECALL ";
      EnvCtrlEnum_EBREAK : _zz_decode_ENV_CTRL_2_string = "EBREAK";
      default : _zz_decode_ENV_CTRL_2_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_2)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_2_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_2_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_2_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_2_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_2)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_2_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_2)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_2_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_2_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_2_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_2_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_2_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_2)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_2_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_2_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_2_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_2_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_2_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      EnvCtrlEnum_NONE : decode_to_execute_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : decode_to_execute_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : decode_to_execute_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : decode_to_execute_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : decode_to_execute_ENV_CTRL_string = "EBREAK";
      default : decode_to_execute_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      EnvCtrlEnum_NONE : execute_to_memory_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : execute_to_memory_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : execute_to_memory_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : execute_to_memory_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : execute_to_memory_ENV_CTRL_string = "EBREAK";
      default : execute_to_memory_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      EnvCtrlEnum_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE  ";
      EnvCtrlEnum_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET  ";
      EnvCtrlEnum_WFI : memory_to_writeBack_ENV_CTRL_string = "WFI   ";
      EnvCtrlEnum_ECALL : memory_to_writeBack_ENV_CTRL_string = "ECALL ";
      EnvCtrlEnum_EBREAK : memory_to_writeBack_ENV_CTRL_string = "EBREAK";
      default : memory_to_writeBack_ENV_CTRL_string = "??????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  `endif

  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = _zz_execute_BRANCH_DO_1;
  assign execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign execute_REGFILE_WRITE_DATA = _zz_execute_REGFILE_WRITE_DATA;
  assign execute_MEMORY_ADDRESS_LOW = dBus_cmd_payload_address[1 : 0];
  assign decode_DO_EBREAK = (((! DebugPlugin_haltIt) && (decode_IS_EBREAK || (((1'b0 || (DebugPlugin_hardwareBreakpoints_0_valid && (DebugPlugin_hardwareBreakpoints_0_pc == _zz_decode_DO_EBREAK))) || (DebugPlugin_hardwareBreakpoints_1_valid && (DebugPlugin_hardwareBreakpoints_1_pc == _zz_decode_DO_EBREAK_1))) || (DebugPlugin_hardwareBreakpoints_2_valid && (DebugPlugin_hardwareBreakpoints_2_pc == _zz_decode_DO_EBREAK_2))))) && DebugPlugin_allowEBreak);
  assign decode_SRC2 = _zz_decode_SRC2_4;
  assign decode_SRC1 = _zz_decode_SRC1;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL;
  assign _zz_decode_to_execute_BRANCH_CTRL = _zz_decode_to_execute_BRANCH_CTRL_1;
  assign decode_IS_DIV = _zz_decode_IS_DIV[29];
  assign decode_IS_RS2_SIGNED = _zz_decode_IS_DIV[28];
  assign decode_IS_RS1_SIGNED = _zz_decode_IS_DIV[27];
  assign decode_IS_MUL = _zz_decode_IS_DIV[26];
  assign _zz_execute_to_memory_SHIFT_CTRL = _zz_execute_to_memory_SHIFT_CTRL_1;
  assign decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL = _zz_decode_to_execute_SHIFT_CTRL_1;
  assign decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL = _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  assign decode_SRC_LESS_UNSIGNED = _zz_decode_IS_DIV[20];
  assign decode_ALU_CTRL = _zz_decode_ALU_CTRL;
  assign _zz_decode_to_execute_ALU_CTRL = _zz_decode_to_execute_ALU_CTRL_1;
  assign _zz_memory_to_writeBack_ENV_CTRL = _zz_memory_to_writeBack_ENV_CTRL_1;
  assign _zz_execute_to_memory_ENV_CTRL = _zz_execute_to_memory_ENV_CTRL_1;
  assign decode_ENV_CTRL = _zz_decode_ENV_CTRL;
  assign _zz_decode_to_execute_ENV_CTRL = _zz_decode_to_execute_ENV_CTRL_1;
  assign decode_IS_CSR = _zz_decode_IS_DIV[13];
  assign decode_MEMORY_STORE = _zz_decode_IS_DIV[10];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_decode_IS_DIV[9];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_decode_IS_DIV[8];
  assign decode_MEMORY_ENABLE = _zz_decode_IS_DIV[3];
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + _zz_decode_FORMAL_PC_NEXT);
  assign memory_PC = execute_to_memory_PC;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_decode_IS_DIV[17];
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_BRANCH_CTRL = _zz_execute_BRANCH_CTRL;
  assign decode_RS2_USE = _zz_decode_IS_DIV[12];
  assign decode_RS1_USE = _zz_decode_IS_DIV[4];
  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @(*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr1Match) begin
        decode_RS2 = HazardSimplePlugin_writeBackBuffer_payload_data;
      end
    end
    if(when_HazardSimplePlugin_l45) begin
      if(when_HazardSimplePlugin_l47) begin
        if(when_HazardSimplePlugin_l51) begin
          decode_RS2 = _zz_decode_RS2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_1) begin
      if(memory_BYPASSABLE_MEMORY_STAGE) begin
        if(when_HazardSimplePlugin_l51_1) begin
          decode_RS2 = _zz_decode_RS2_2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_2) begin
      if(execute_BYPASSABLE_EXECUTE_STAGE) begin
        if(when_HazardSimplePlugin_l51_2) begin
          decode_RS2 = _zz_decode_RS2_1;
        end
      end
    end
  end

  always @(*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr0Match) begin
        decode_RS1 = HazardSimplePlugin_writeBackBuffer_payload_data;
      end
    end
    if(when_HazardSimplePlugin_l45) begin
      if(when_HazardSimplePlugin_l47) begin
        if(when_HazardSimplePlugin_l48) begin
          decode_RS1 = _zz_decode_RS2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_1) begin
      if(memory_BYPASSABLE_MEMORY_STAGE) begin
        if(when_HazardSimplePlugin_l48_1) begin
          decode_RS1 = _zz_decode_RS2_2;
        end
      end
    end
    if(when_HazardSimplePlugin_l45_2) begin
      if(execute_BYPASSABLE_EXECUTE_STAGE) begin
        if(when_HazardSimplePlugin_l48_2) begin
          decode_RS1 = _zz_decode_RS2_1;
        end
      end
    end
  end

  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_RS1 = decode_to_execute_RS1;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  assign memory_SHIFT_CTRL = _zz_memory_SHIFT_CTRL;
  assign execute_SHIFT_CTRL = _zz_execute_SHIFT_CTRL;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_decode_to_execute_PC = decode_PC;
  assign _zz_decode_to_execute_RS2 = decode_RS2;
  assign decode_SRC2_CTRL = _zz_decode_SRC2_CTRL;
  assign _zz_decode_to_execute_RS1 = decode_RS1;
  assign decode_SRC1_CTRL = _zz_decode_SRC1_CTRL;
  assign decode_SRC_USE_SUB_LESS = _zz_decode_IS_DIV[2];
  assign decode_SRC_ADD_ZERO = _zz_decode_IS_DIV[23];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_execute_ALU_CTRL;
  assign execute_SRC2 = decode_to_execute_SRC2;
  assign execute_ALU_BITWISE_CTRL = _zz_execute_ALU_BITWISE_CTRL;
  assign _zz_decode_RS2 = writeBack_REGFILE_WRITE_DATA;
  assign _zz_lastStageRegFileWrite_payload_address = writeBack_INSTRUCTION;
  assign _zz_lastStageRegFileWrite_valid = writeBack_REGFILE_WRITE_VALID;
  always @(*) begin
    _zz_1 = 1'b0;
    if(lastStageRegFileWrite_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusSimplePlugin_decompressor_output_payload_rsp_inst);
  always @(*) begin
    decode_REGFILE_WRITE_VALID = _zz_decode_IS_DIV[7];
    if(when_RegFilePlugin_l63) begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = (|{((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION) == 32'h00001073),{(_zz_decode_LEGAL_INSTRUCTION_1 == _zz_decode_LEGAL_INSTRUCTION_2),{_zz_decode_LEGAL_INSTRUCTION_3,{_zz_decode_LEGAL_INSTRUCTION_4,_zz_decode_LEGAL_INSTRUCTION_5}}}}}});
  always @(*) begin
    _zz_decode_RS2_1 = execute_REGFILE_WRITE_DATA;
    if(when_CsrPlugin_l1587) begin
      _zz_decode_RS2_1 = CsrPlugin_csrMapping_readDataSignal;
    end
  end

  assign execute_SRC1 = decode_to_execute_SRC1;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_memory_ENV_CTRL;
  assign execute_ENV_CTRL = _zz_execute_ENV_CTRL;
  assign writeBack_ENV_CTRL = _zz_writeBack_ENV_CTRL;
  always @(*) begin
    _zz_decode_RS2_2 = memory_REGFILE_WRITE_DATA;
    if(when_DBusSimplePlugin_l565) begin
      _zz_decode_RS2_2 = memory_DBusSimplePlugin_rspFormated;
    end
    if(memory_arbitration_isValid) begin
      case(memory_SHIFT_CTRL)
        ShiftCtrlEnum_SLL_1 : begin
          _zz_decode_RS2_2 = _zz_decode_RS2_3;
        end
        ShiftCtrlEnum_SRL_1, ShiftCtrlEnum_SRA_1 : begin
          _zz_decode_RS2_2 = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(when_MulDivIterativePlugin_l96) begin
      _zz_decode_RS2_2 = ((memory_INSTRUCTION[13 : 12] == 2'b00) ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_accumulator[63 : 32]);
    end
    if(when_MulDivIterativePlugin_l128) begin
      _zz_decode_RS2_2 = memory_MulDivIterativePlugin_div_result;
    end
  end

  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign memory_MEMORY_READ_DATA = dBus_rsp_data;
  assign memory_MEMORY_STORE = execute_to_memory_MEMORY_STORE;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign execute_MEMORY_STORE = decode_to_execute_MEMORY_STORE;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_ALIGNEMENT_FAULT = 1'b0;
  always @(*) begin
    _zz_memory_to_writeBack_FORMAL_PC_NEXT = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid) begin
      _zz_memory_to_writeBack_FORMAL_PC_NEXT = BranchPlugin_jumpInterface_payload;
    end
  end

  assign decode_PC = IBusSimplePlugin_decodePc_pcReg;
  assign decode_INSTRUCTION = IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  assign decode_IS_RVC = IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @(*) begin
    decode_arbitration_haltItself = 1'b0;
    case(IBusSimplePlugin_injector_port_state)
      3'b010 : begin
        decode_arbitration_haltItself = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(CsrPlugin_pipelineLiberator_active) begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(when_CsrPlugin_l1527) begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(when_HazardSimplePlugin_l113) begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    decode_arbitration_removeIt = 1'b0;
    if(decodeExceptionPort_valid) begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @(*) begin
    decode_arbitration_flushNext = 1'b0;
    if(decodeExceptionPort_valid) begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_haltItself = 1'b0;
    if(when_DBusSimplePlugin_l434) begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(when_CsrPlugin_l1519) begin
      if(when_CsrPlugin_l1521) begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if(when_CsrPlugin_l1591) begin
      if(execute_CsrPlugin_blockedBySideEffects) begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @(*) begin
    execute_arbitration_haltByOther = 1'b0;
    if(when_DebugPlugin_l308) begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_removeIt = 1'b0;
    if(CsrPlugin_selfException_valid) begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed) begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @(*) begin
    execute_arbitration_flushIt = 1'b0;
    if(when_DebugPlugin_l308) begin
      if(when_DebugPlugin_l311) begin
        execute_arbitration_flushIt = 1'b1;
      end
    end
  end

  always @(*) begin
    execute_arbitration_flushNext = 1'b0;
    if(CsrPlugin_selfException_valid) begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(when_DebugPlugin_l308) begin
      if(when_DebugPlugin_l311) begin
        execute_arbitration_flushNext = 1'b1;
      end
    end
    if(_zz_6) begin
      execute_arbitration_flushNext = 1'b1;
    end
    if(_zz_6) begin
      execute_arbitration_flushNext = 1'b1;
    end
  end

  always @(*) begin
    memory_arbitration_haltItself = 1'b0;
    if(when_DBusSimplePlugin_l489) begin
      memory_arbitration_haltItself = 1'b1;
    end
    if(when_MulDivIterativePlugin_l96) begin
      if(when_MulDivIterativePlugin_l97) begin
        memory_arbitration_haltItself = 1'b1;
      end
      if(when_MulDivIterativePlugin_l100) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l129) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @(*) begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_arbitration_isFlushed) begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @(*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid) begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  assign writeBack_arbitration_haltItself = 1'b0;
  assign writeBack_arbitration_haltByOther = 1'b0;
  always @(*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(writeBack_arbitration_isFlushed) begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  assign writeBack_arbitration_flushIt = 1'b0;
  always @(*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(when_CsrPlugin_l1390) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(when_CsrPlugin_l1456) begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @(*) begin
    IBusSimplePlugin_fetcherHalt = 1'b0;
    if(when_CsrPlugin_l1272) begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
    if(when_CsrPlugin_l1390) begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
    if(when_CsrPlugin_l1456) begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
    if(when_DebugPlugin_l308) begin
      if(when_DebugPlugin_l311) begin
        IBusSimplePlugin_fetcherHalt = 1'b1;
      end
    end
    if(DebugPlugin_haltIt) begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
    if(when_DebugPlugin_l324) begin
      IBusSimplePlugin_fetcherHalt = 1'b1;
    end
  end

  always @(*) begin
    IBusSimplePlugin_forceNoDecodeCond = 1'b0;
    if(_zz_6) begin
      IBusSimplePlugin_forceNoDecodeCond = 1'b1;
    end
  end

  always @(*) begin
    IBusSimplePlugin_incomingInstruction = 1'b0;
    if(when_Fetcher_l242) begin
      IBusSimplePlugin_incomingInstruction = 1'b1;
    end
    if(IBusSimplePlugin_injector_decodeInput_valid) begin
      IBusSimplePlugin_incomingInstruction = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_csrMapping_allowCsrSignal = 1'b0;
    if(when_CsrPlugin_l1702) begin
      CsrPlugin_csrMapping_allowCsrSignal = 1'b1;
    end
    if(when_CsrPlugin_l1709) begin
      CsrPlugin_csrMapping_allowCsrSignal = 1'b1;
    end
  end

  assign CsrPlugin_csrMapping_doForceFailCsr = 1'b0;
  assign CsrPlugin_csrMapping_readDataSignal = CsrPlugin_csrMapping_readDataInit;
  always @(*) begin
    CsrPlugin_inWfi = 1'b0;
    if(when_CsrPlugin_l1519) begin
      CsrPlugin_inWfi = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_thirdPartyWake = 1'b0;
    if(DebugPlugin_haltIt) begin
      CsrPlugin_thirdPartyWake = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(when_CsrPlugin_l1390) begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(when_CsrPlugin_l1456) begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_jumpInterface_payload = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    if(when_CsrPlugin_l1390) begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(when_CsrPlugin_l1456) begin
      case(switch_CsrPlugin_l1460)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    CsrPlugin_forceMachineWire = 1'b0;
    if(DebugPlugin_godmode) begin
      CsrPlugin_forceMachineWire = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_allowInterrupts = 1'b1;
    if(when_DebugPlugin_l344) begin
      CsrPlugin_allowInterrupts = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_allowException = 1'b1;
    if(DebugPlugin_godmode) begin
      CsrPlugin_allowException = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_allowEbreakException = 1'b1;
    if(DebugPlugin_allowEBreak) begin
      CsrPlugin_allowEbreakException = 1'b0;
    end
  end

  assign CsrPlugin_xretAwayFromMachine = 1'b0;
  always @(*) begin
    BranchPlugin_inDebugNoFetchFlag = 1'b0;
    if(DebugPlugin_godmode) begin
      BranchPlugin_inDebugNoFetchFlag = 1'b1;
    end
  end

  assign IBusSimplePlugin_externalFlush = (|{writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}});
  assign IBusSimplePlugin_jump_pcLoad_valid = (|{BranchPlugin_jumpInterface_valid,CsrPlugin_jumpInterface_valid});
  assign _zz_IBusSimplePlugin_jump_pcLoad_payload = {BranchPlugin_jumpInterface_valid,CsrPlugin_jumpInterface_valid};
  assign IBusSimplePlugin_jump_pcLoad_payload = (_zz_IBusSimplePlugin_jump_pcLoad_payload_1[0] ? CsrPlugin_jumpInterface_payload : BranchPlugin_jumpInterface_payload);
  always @(*) begin
    IBusSimplePlugin_fetchPc_correction = 1'b0;
    if(IBusSimplePlugin_jump_pcLoad_valid) begin
      IBusSimplePlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusSimplePlugin_fetchPc_output_fire = (IBusSimplePlugin_fetchPc_output_valid && IBusSimplePlugin_fetchPc_output_ready);
  assign IBusSimplePlugin_fetchPc_corrected = (IBusSimplePlugin_fetchPc_correction || IBusSimplePlugin_fetchPc_correctionReg);
  assign IBusSimplePlugin_fetchPc_pcRegPropagate = 1'b0;
  assign when_Fetcher_l133 = (IBusSimplePlugin_fetchPc_correction || IBusSimplePlugin_fetchPc_pcRegPropagate);
  assign when_Fetcher_l133_1 = ((! IBusSimplePlugin_fetchPc_output_valid) && IBusSimplePlugin_fetchPc_output_ready);
  always @(*) begin
    IBusSimplePlugin_fetchPc_pc = (IBusSimplePlugin_fetchPc_pcReg + _zz_IBusSimplePlugin_fetchPc_pc);
    if(IBusSimplePlugin_fetchPc_inc) begin
      IBusSimplePlugin_fetchPc_pc[1] = 1'b0;
    end
    if(IBusSimplePlugin_jump_pcLoad_valid) begin
      IBusSimplePlugin_fetchPc_pc = IBusSimplePlugin_jump_pcLoad_payload;
    end
    IBusSimplePlugin_fetchPc_pc[0] = 1'b0;
  end

  always @(*) begin
    IBusSimplePlugin_fetchPc_flushed = 1'b0;
    if(IBusSimplePlugin_jump_pcLoad_valid) begin
      IBusSimplePlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign when_Fetcher_l160 = (IBusSimplePlugin_fetchPc_booted && ((IBusSimplePlugin_fetchPc_output_ready || IBusSimplePlugin_fetchPc_correction) || IBusSimplePlugin_fetchPc_pcRegPropagate));
  assign IBusSimplePlugin_fetchPc_output_valid = ((! IBusSimplePlugin_fetcherHalt) && IBusSimplePlugin_fetchPc_booted);
  assign IBusSimplePlugin_fetchPc_output_payload = IBusSimplePlugin_fetchPc_pc;
  always @(*) begin
    IBusSimplePlugin_decodePc_flushed = 1'b0;
    if(when_Fetcher_l194) begin
      IBusSimplePlugin_decodePc_flushed = 1'b1;
    end
  end

  assign IBusSimplePlugin_decodePc_pcPlus = (IBusSimplePlugin_decodePc_pcReg + _zz_IBusSimplePlugin_decodePc_pcPlus);
  always @(*) begin
    IBusSimplePlugin_decodePc_injectedDecode = 1'b0;
    if(when_Fetcher_l373) begin
      IBusSimplePlugin_decodePc_injectedDecode = 1'b1;
    end
  end

  assign when_Fetcher_l182 = (decode_arbitration_isFiring && (! IBusSimplePlugin_decodePc_injectedDecode));
  assign when_Fetcher_l194 = (IBusSimplePlugin_jump_pcLoad_valid && ((! decode_arbitration_isStuck) || decode_arbitration_removeIt));
  assign IBusSimplePlugin_iBusRsp_redoFetch = 1'b0;
  assign IBusSimplePlugin_iBusRsp_stages_0_input_valid = IBusSimplePlugin_fetchPc_output_valid;
  assign IBusSimplePlugin_fetchPc_output_ready = IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  assign IBusSimplePlugin_iBusRsp_stages_0_input_payload = IBusSimplePlugin_fetchPc_output_payload;
  assign IBusSimplePlugin_iBusRsp_stages_0_halt = 1'b0;
  assign _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready = (! IBusSimplePlugin_iBusRsp_stages_0_halt);
  assign IBusSimplePlugin_iBusRsp_stages_0_input_ready = (IBusSimplePlugin_iBusRsp_stages_0_output_ready && _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_valid = (IBusSimplePlugin_iBusRsp_stages_0_input_valid && _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_payload = IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  always @(*) begin
    IBusSimplePlugin_iBusRsp_stages_1_halt = 1'b0;
    if(when_IBusSimplePlugin_l317) begin
      IBusSimplePlugin_iBusRsp_stages_1_halt = 1'b1;
    end
    if(when_IBusSimplePlugin_l318) begin
      IBusSimplePlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready = (! IBusSimplePlugin_iBusRsp_stages_1_halt);
  assign IBusSimplePlugin_iBusRsp_stages_1_input_ready = (IBusSimplePlugin_iBusRsp_stages_1_output_ready && _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_valid = (IBusSimplePlugin_iBusRsp_stages_1_input_valid && _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_payload = IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  assign IBusSimplePlugin_iBusRsp_stages_2_halt = 1'b0;
  assign _zz_IBusSimplePlugin_iBusRsp_stages_2_input_ready = (! IBusSimplePlugin_iBusRsp_stages_2_halt);
  assign IBusSimplePlugin_iBusRsp_stages_2_input_ready = (IBusSimplePlugin_iBusRsp_stages_2_output_ready && _zz_IBusSimplePlugin_iBusRsp_stages_2_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_2_output_valid = (IBusSimplePlugin_iBusRsp_stages_2_input_valid && _zz_IBusSimplePlugin_iBusRsp_stages_2_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_2_output_payload = IBusSimplePlugin_iBusRsp_stages_2_input_payload;
  assign IBusSimplePlugin_iBusRsp_flush = (IBusSimplePlugin_externalFlush || IBusSimplePlugin_iBusRsp_redoFetch);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_ready = ((1'b0 && (! IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid)) || IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_ready);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid = _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  assign IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload = _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  assign IBusSimplePlugin_iBusRsp_stages_1_input_valid = IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  assign IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_ready = IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  assign IBusSimplePlugin_iBusRsp_stages_1_input_payload = IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  assign IBusSimplePlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid)) || IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_ready);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid = _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  assign IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_payload = _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  assign IBusSimplePlugin_iBusRsp_stages_2_input_valid = IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid;
  assign IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_ready = IBusSimplePlugin_iBusRsp_stages_2_input_ready;
  assign IBusSimplePlugin_iBusRsp_stages_2_input_payload = IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_payload;
  always @(*) begin
    IBusSimplePlugin_iBusRsp_readyForError = 1'b1;
    if(IBusSimplePlugin_injector_decodeInput_valid) begin
      IBusSimplePlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign when_Fetcher_l242 = (IBusSimplePlugin_iBusRsp_stages_1_input_valid || IBusSimplePlugin_iBusRsp_stages_2_input_valid);
  assign IBusSimplePlugin_decompressor_input_valid = (IBusSimplePlugin_iBusRsp_output_valid && (! IBusSimplePlugin_iBusRsp_redoFetch));
  assign IBusSimplePlugin_decompressor_input_payload_pc = IBusSimplePlugin_iBusRsp_output_payload_pc;
  assign IBusSimplePlugin_decompressor_input_payload_rsp_error = IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
  assign IBusSimplePlugin_decompressor_input_payload_rsp_inst = IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
  assign IBusSimplePlugin_decompressor_input_payload_isRvc = IBusSimplePlugin_iBusRsp_output_payload_isRvc;
  assign IBusSimplePlugin_iBusRsp_output_ready = IBusSimplePlugin_decompressor_input_ready;
  assign IBusSimplePlugin_decompressor_flushNext = 1'b0;
  assign IBusSimplePlugin_decompressor_consumeCurrent = 1'b0;
  assign IBusSimplePlugin_decompressor_isInputLowRvc = (IBusSimplePlugin_decompressor_input_payload_rsp_inst[1 : 0] != 2'b11);
  assign IBusSimplePlugin_decompressor_isInputHighRvc = (IBusSimplePlugin_decompressor_input_payload_rsp_inst[17 : 16] != 2'b11);
  assign IBusSimplePlugin_decompressor_throw2Bytes = (IBusSimplePlugin_decompressor_throw2BytesReg || IBusSimplePlugin_decompressor_input_payload_pc[1]);
  assign IBusSimplePlugin_decompressor_unaligned = (IBusSimplePlugin_decompressor_throw2Bytes || IBusSimplePlugin_decompressor_bufferValid);
  assign IBusSimplePlugin_decompressor_bufferValidPatched = (IBusSimplePlugin_decompressor_input_valid ? IBusSimplePlugin_decompressor_bufferValid : IBusSimplePlugin_decompressor_bufferValidLatch);
  assign IBusSimplePlugin_decompressor_throw2BytesPatched = (IBusSimplePlugin_decompressor_input_valid ? IBusSimplePlugin_decompressor_throw2Bytes : IBusSimplePlugin_decompressor_throw2BytesLatch);
  assign IBusSimplePlugin_decompressor_raw = (IBusSimplePlugin_decompressor_bufferValidPatched ? {IBusSimplePlugin_decompressor_input_payload_rsp_inst[15 : 0],IBusSimplePlugin_decompressor_bufferData} : {IBusSimplePlugin_decompressor_input_payload_rsp_inst[31 : 16],(IBusSimplePlugin_decompressor_throw2BytesPatched ? IBusSimplePlugin_decompressor_input_payload_rsp_inst[31 : 16] : IBusSimplePlugin_decompressor_input_payload_rsp_inst[15 : 0])});
  assign IBusSimplePlugin_decompressor_isRvc = (IBusSimplePlugin_decompressor_raw[1 : 0] != 2'b11);
  assign _zz_IBusSimplePlugin_decompressor_decompressed = IBusSimplePlugin_decompressor_raw[15 : 0];
  always @(*) begin
    IBusSimplePlugin_decompressor_decompressed = 32'h0;
    case(switch_Misc_l44)
      5'h0 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{{{2'b00,_zz_IBusSimplePlugin_decompressor_decompressed[10 : 7]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 11]},_zz_IBusSimplePlugin_decompressor_decompressed[5]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},2'b00},5'h02},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed_2},7'h13};
        if(when_Misc_l47) begin
          IBusSimplePlugin_decompressor_decompressed = 32'h0;
        end
      end
      5'h02 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{_zz_IBusSimplePlugin_decompressor_decompressed_3,_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed_2},7'h03};
      end
      5'h06 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_3[11 : 5],_zz_IBusSimplePlugin_decompressor_decompressed_2},_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed_3[4 : 0]},7'h23};
      end
      5'h08 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{_zz_IBusSimplePlugin_decompressor_decompressed_5,_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h09 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_8[20],_zz_IBusSimplePlugin_decompressor_decompressed_8[10 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_8[11]},_zz_IBusSimplePlugin_decompressor_decompressed_8[19 : 12]},_zz_IBusSimplePlugin_decompressor_decompressed_20},7'h6f};
      end
      5'h0a : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{_zz_IBusSimplePlugin_decompressor_decompressed_5,5'h0},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h0b : begin
        IBusSimplePlugin_decompressor_decompressed = ((_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7] == 5'h02) ? {{{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_27,_zz_IBusSimplePlugin_decompressor_decompressed_28},_zz_IBusSimplePlugin_decompressor_decompressed_29},_zz_IBusSimplePlugin_decompressor_decompressed[6]},4'b0000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13} : {{_zz_IBusSimplePlugin_decompressor_decompressed_30[31 : 12],_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h37});
      end
      5'h0c : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{((_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] == 2'b10) ? _zz_IBusSimplePlugin_decompressor_decompressed_26 : {{1'b0,(_zz_IBusSimplePlugin_decompressor_decompressed_31 || _zz_IBusSimplePlugin_decompressor_decompressed_32)},5'h0}),(((! _zz_IBusSimplePlugin_decompressor_decompressed[11]) || _zz_IBusSimplePlugin_decompressor_decompressed_22) ? _zz_IBusSimplePlugin_decompressor_decompressed[6 : 2] : _zz_IBusSimplePlugin_decompressor_decompressed_2)},_zz_IBusSimplePlugin_decompressor_decompressed_1},_zz_IBusSimplePlugin_decompressor_decompressed_24},_zz_IBusSimplePlugin_decompressor_decompressed_1},(_zz_IBusSimplePlugin_decompressor_decompressed_22 ? 7'h13 : 7'h33)};
      end
      5'h0d : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_15[20],_zz_IBusSimplePlugin_decompressor_decompressed_15[10 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_15[11]},_zz_IBusSimplePlugin_decompressor_decompressed_15[19 : 12]},_zz_IBusSimplePlugin_decompressor_decompressed_19},7'h6f};
      end
      5'h0e : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_18[12],_zz_IBusSimplePlugin_decompressor_decompressed_18[10 : 5]},_zz_IBusSimplePlugin_decompressor_decompressed_19},_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed_18[4 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_18[11]},7'h63};
      end
      5'h0f : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_18[12],_zz_IBusSimplePlugin_decompressor_decompressed_18[10 : 5]},_zz_IBusSimplePlugin_decompressor_decompressed_19},_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b001},_zz_IBusSimplePlugin_decompressor_decompressed_18[4 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_18[11]},7'h63};
      end
      5'h10 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{7'h0,_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2]},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b001},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h12 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{{4'b0000,_zz_IBusSimplePlugin_decompressor_decompressed[3 : 2]},_zz_IBusSimplePlugin_decompressor_decompressed[12]},_zz_IBusSimplePlugin_decompressor_decompressed[6 : 4]},2'b00},_zz_IBusSimplePlugin_decompressor_decompressed_21},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h03};
      end
      5'h14 : begin
        IBusSimplePlugin_decompressor_decompressed = ((_zz_IBusSimplePlugin_decompressor_decompressed[12 : 2] == 11'h400) ? 32'h00100073 : ((_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2] == 5'h0) ? {{{{12'h0,_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b000},(_zz_IBusSimplePlugin_decompressor_decompressed[12] ? _zz_IBusSimplePlugin_decompressor_decompressed_20 : _zz_IBusSimplePlugin_decompressor_decompressed_19)},7'h67} : {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_33,_zz_IBusSimplePlugin_decompressor_decompressed_34},(_zz_IBusSimplePlugin_decompressor_decompressed_35 ? _zz_IBusSimplePlugin_decompressor_decompressed_36 : _zz_IBusSimplePlugin_decompressor_decompressed_19)},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h33}));
      end
      5'h16 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_37[11 : 5],_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2]},_zz_IBusSimplePlugin_decompressor_decompressed_21},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed_38[4 : 0]},7'h23};
      end
      default : begin
      end
    endcase
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_1 = {2'b01,_zz_IBusSimplePlugin_decompressor_decompressed[9 : 7]};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_2 = {2'b01,_zz_IBusSimplePlugin_decompressor_decompressed[4 : 2]};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_3 = {{{{5'h0,_zz_IBusSimplePlugin_decompressor_decompressed[5]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 10]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},2'b00};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_4 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_5[11] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[10] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[9] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[8] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[7] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[6] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[5] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[4 : 0] = _zz_IBusSimplePlugin_decompressor_decompressed[6 : 2];
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_6 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_7[9] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[8] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[7] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[6] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[5] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[4] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[3] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[2] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[1] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[0] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_8 = {{{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_7,_zz_IBusSimplePlugin_decompressor_decompressed[8]},_zz_IBusSimplePlugin_decompressor_decompressed[10 : 9]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},_zz_IBusSimplePlugin_decompressor_decompressed[7]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[11]},_zz_IBusSimplePlugin_decompressor_decompressed[5 : 3]},1'b0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_9 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_10[14] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[13] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[12] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[11] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[10] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[9] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[8] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[7] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[6] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[5] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[4] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[3] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[2] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[1] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[0] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_11 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_12[2] = _zz_IBusSimplePlugin_decompressor_decompressed_11;
    _zz_IBusSimplePlugin_decompressor_decompressed_12[1] = _zz_IBusSimplePlugin_decompressor_decompressed_11;
    _zz_IBusSimplePlugin_decompressor_decompressed_12[0] = _zz_IBusSimplePlugin_decompressor_decompressed_11;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_13 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_14[9] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[8] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[7] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[6] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[5] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[4] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[3] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[2] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[1] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[0] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_15 = {{{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_14,_zz_IBusSimplePlugin_decompressor_decompressed[8]},_zz_IBusSimplePlugin_decompressor_decompressed[10 : 9]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},_zz_IBusSimplePlugin_decompressor_decompressed[7]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[11]},_zz_IBusSimplePlugin_decompressor_decompressed[5 : 3]},1'b0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_16 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_17[4] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[3] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[2] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[1] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[0] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_18 = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_17,_zz_IBusSimplePlugin_decompressor_decompressed[6 : 5]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10]},_zz_IBusSimplePlugin_decompressor_decompressed[4 : 3]},1'b0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_19 = 5'h0;
  assign _zz_IBusSimplePlugin_decompressor_decompressed_20 = 5'h01;
  assign _zz_IBusSimplePlugin_decompressor_decompressed_21 = 5'h02;
  assign switch_Misc_l44 = {_zz_IBusSimplePlugin_decompressor_decompressed[1 : 0],_zz_IBusSimplePlugin_decompressor_decompressed[15 : 13]};
  assign when_Misc_l47 = (_zz_IBusSimplePlugin_decompressor_decompressed[12 : 2] == 11'h0);
  assign _zz_IBusSimplePlugin_decompressor_decompressed_22 = (_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] != 2'b11);
  assign switch_Misc_l241 = _zz_IBusSimplePlugin_decompressor_decompressed[11 : 10];
  assign switch_Misc_l241_1 = _zz_IBusSimplePlugin_decompressor_decompressed[6 : 5];
  always @(*) begin
    case(switch_Misc_l241_1)
      2'b00 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b000;
      end
      2'b01 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b100;
      end
      2'b10 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b110;
      end
      default : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b111;
      end
    endcase
  end

  always @(*) begin
    case(switch_Misc_l241)
      2'b00 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = 3'b101;
      end
      2'b01 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = 3'b101;
      end
      2'b10 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = 3'b111;
      end
      default : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = _zz_IBusSimplePlugin_decompressor_decompressed_23;
      end
    endcase
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_25 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_26[6] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[5] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[4] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[3] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[2] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[1] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[0] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
  end

  assign IBusSimplePlugin_decompressor_output_valid = (IBusSimplePlugin_decompressor_input_valid && (! ((IBusSimplePlugin_decompressor_throw2Bytes && (! IBusSimplePlugin_decompressor_bufferValid)) && (! IBusSimplePlugin_decompressor_isInputHighRvc))));
  assign IBusSimplePlugin_decompressor_output_payload_pc = IBusSimplePlugin_decompressor_input_payload_pc;
  assign IBusSimplePlugin_decompressor_output_payload_isRvc = IBusSimplePlugin_decompressor_isRvc;
  assign IBusSimplePlugin_decompressor_output_payload_rsp_inst = (IBusSimplePlugin_decompressor_isRvc ? IBusSimplePlugin_decompressor_decompressed : IBusSimplePlugin_decompressor_raw);
  assign IBusSimplePlugin_decompressor_input_ready = (IBusSimplePlugin_decompressor_output_ready && (((! IBusSimplePlugin_iBusRsp_stages_2_input_valid) || IBusSimplePlugin_decompressor_flushNext) || ((! (IBusSimplePlugin_decompressor_bufferValid && IBusSimplePlugin_decompressor_isInputHighRvc)) && (! (((! IBusSimplePlugin_decompressor_unaligned) && IBusSimplePlugin_decompressor_isInputLowRvc) && IBusSimplePlugin_decompressor_isInputHighRvc)))));
  assign IBusSimplePlugin_decompressor_output_fire = (IBusSimplePlugin_decompressor_output_valid && IBusSimplePlugin_decompressor_output_ready);
  assign IBusSimplePlugin_decompressor_bufferFill = (((((! IBusSimplePlugin_decompressor_unaligned) && IBusSimplePlugin_decompressor_isInputLowRvc) && (! IBusSimplePlugin_decompressor_isInputHighRvc)) || (IBusSimplePlugin_decompressor_bufferValid && (! IBusSimplePlugin_decompressor_isInputHighRvc))) || ((IBusSimplePlugin_decompressor_throw2Bytes && (! IBusSimplePlugin_decompressor_isRvc)) && (! IBusSimplePlugin_decompressor_isInputHighRvc)));
  assign when_Fetcher_l285 = (IBusSimplePlugin_decompressor_output_ready && IBusSimplePlugin_decompressor_input_valid);
  assign when_Fetcher_l288 = (IBusSimplePlugin_decompressor_output_ready && IBusSimplePlugin_decompressor_input_valid);
  assign when_Fetcher_l293 = (IBusSimplePlugin_externalFlush || IBusSimplePlugin_decompressor_consumeCurrent);
  assign IBusSimplePlugin_decompressor_output_ready = ((1'b0 && (! IBusSimplePlugin_injector_decodeInput_valid)) || IBusSimplePlugin_injector_decodeInput_ready);
  assign IBusSimplePlugin_injector_decodeInput_valid = _zz_IBusSimplePlugin_injector_decodeInput_valid;
  assign IBusSimplePlugin_injector_decodeInput_payload_pc = _zz_IBusSimplePlugin_injector_decodeInput_payload_pc;
  assign IBusSimplePlugin_injector_decodeInput_payload_rsp_error = _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  assign IBusSimplePlugin_injector_decodeInput_payload_rsp_inst = _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  assign IBusSimplePlugin_injector_decodeInput_payload_isRvc = _zz_IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  assign when_Fetcher_l331 = (! 1'b0);
  assign when_Fetcher_l331_1 = (! execute_arbitration_isStuck);
  assign when_Fetcher_l331_2 = (! memory_arbitration_isStuck);
  assign when_Fetcher_l331_3 = (! writeBack_arbitration_isStuck);
  assign IBusSimplePlugin_pcValids_0 = IBusSimplePlugin_injector_nextPcCalc_valids_0;
  assign IBusSimplePlugin_pcValids_1 = IBusSimplePlugin_injector_nextPcCalc_valids_1;
  assign IBusSimplePlugin_pcValids_2 = IBusSimplePlugin_injector_nextPcCalc_valids_2;
  assign IBusSimplePlugin_pcValids_3 = IBusSimplePlugin_injector_nextPcCalc_valids_3;
  assign IBusSimplePlugin_injector_decodeInput_ready = (! decode_arbitration_isStuck);
  always @(*) begin
    decode_arbitration_isValid = IBusSimplePlugin_injector_decodeInput_valid;
    case(IBusSimplePlugin_injector_port_state)
      3'b010 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b011 : begin
        decode_arbitration_isValid = 1'b1;
      end
      default : begin
      end
    endcase
    if(IBusSimplePlugin_forceNoDecodeCond) begin
      decode_arbitration_isValid = 1'b0;
    end
  end

  assign iBus_cmd_valid = IBusSimplePlugin_cmd_valid;
  assign IBusSimplePlugin_cmd_ready = iBus_cmd_ready;
  assign iBus_cmd_payload_pc = IBusSimplePlugin_cmd_payload_pc;
  assign IBusSimplePlugin_pending_next = (_zz_IBusSimplePlugin_pending_next - _zz_IBusSimplePlugin_pending_next_3);
  assign IBusSimplePlugin_cmdFork_pendingFull = (IBusSimplePlugin_pending_value == 3'b111);
  assign IBusSimplePlugin_cmd_fire = (IBusSimplePlugin_cmd_valid && IBusSimplePlugin_cmd_ready);
  assign IBusSimplePlugin_cmdFork_enterTheMarket = (((IBusSimplePlugin_iBusRsp_stages_1_input_valid && (! IBusSimplePlugin_cmdFork_pendingFull)) && (! IBusSimplePlugin_cmdFork_cmdFired)) && (! IBusSimplePlugin_cmdFork_cmdKeep));
  assign when_IBusSimplePlugin_l317 = ((IBusSimplePlugin_cmdFork_pendingFull && (! IBusSimplePlugin_cmdFork_cmdFired)) && (! IBusSimplePlugin_cmdFork_cmdKeep));
  assign when_IBusSimplePlugin_l318 = ((! IBusSimplePlugin_cmd_ready) && (! IBusSimplePlugin_cmdFork_cmdFired));
  assign IBusSimplePlugin_cmd_valid = (IBusSimplePlugin_cmdFork_enterTheMarket || IBusSimplePlugin_cmdFork_cmdKeep);
  assign IBusSimplePlugin_pending_inc = IBusSimplePlugin_cmdFork_enterTheMarket;
  assign IBusSimplePlugin_cmd_payload_pc = {IBusSimplePlugin_iBusRsp_stages_1_input_payload[31 : 2],2'b00};
  assign iBus_rsp_toStream_valid = iBus_rsp_valid;
  assign iBus_rsp_toStream_payload_error = iBus_rsp_payload_error;
  assign iBus_rsp_toStream_payload_inst = iBus_rsp_payload_inst;
  assign iBus_rsp_toStream_ready = IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready;
  assign IBusSimplePlugin_rspJoin_rspBuffer_flush = ((IBusSimplePlugin_rspJoin_rspBuffer_discardCounter != 3'b000) || IBusSimplePlugin_iBusRsp_flush);
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_valid = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter == 3'b000));
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  assign IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready = (IBusSimplePlugin_rspJoin_rspBuffer_output_ready || IBusSimplePlugin_rspJoin_rspBuffer_flush);
  assign core_cpu_IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_fire = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready);
  assign IBusSimplePlugin_pending_dec = core_cpu_IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_fire;
  assign IBusSimplePlugin_rspJoin_fetchRsp_isRvc = 1'b0;
  assign IBusSimplePlugin_rspJoin_fetchRsp_pc = IBusSimplePlugin_iBusRsp_stages_2_output_payload;
  always @(*) begin
    IBusSimplePlugin_rspJoin_fetchRsp_rsp_error = IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
    if(when_IBusSimplePlugin_l377) begin
      IBusSimplePlugin_rspJoin_fetchRsp_rsp_error = 1'b0;
    end
  end

  assign IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst = IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  assign when_IBusSimplePlugin_l377 = (! IBusSimplePlugin_rspJoin_rspBuffer_output_valid);
  assign IBusSimplePlugin_rspJoin_exceptionDetected = 1'b0;
  assign IBusSimplePlugin_rspJoin_join_valid = (IBusSimplePlugin_iBusRsp_stages_2_output_valid && IBusSimplePlugin_rspJoin_rspBuffer_output_valid);
  assign IBusSimplePlugin_rspJoin_join_payload_pc = IBusSimplePlugin_rspJoin_fetchRsp_pc;
  assign IBusSimplePlugin_rspJoin_join_payload_rsp_error = IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  assign IBusSimplePlugin_rspJoin_join_payload_rsp_inst = IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  assign IBusSimplePlugin_rspJoin_join_payload_isRvc = IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  assign IBusSimplePlugin_rspJoin_join_fire = (IBusSimplePlugin_rspJoin_join_valid && IBusSimplePlugin_rspJoin_join_ready);
  assign IBusSimplePlugin_iBusRsp_stages_2_output_ready = (IBusSimplePlugin_iBusRsp_stages_2_output_valid ? IBusSimplePlugin_rspJoin_join_fire : IBusSimplePlugin_rspJoin_join_ready);
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_ready = IBusSimplePlugin_rspJoin_join_fire;
  assign _zz_IBusSimplePlugin_iBusRsp_output_valid = (! IBusSimplePlugin_rspJoin_exceptionDetected);
  assign IBusSimplePlugin_rspJoin_join_ready = (IBusSimplePlugin_iBusRsp_output_ready && _zz_IBusSimplePlugin_iBusRsp_output_valid);
  assign IBusSimplePlugin_iBusRsp_output_valid = (IBusSimplePlugin_rspJoin_join_valid && _zz_IBusSimplePlugin_iBusRsp_output_valid);
  assign IBusSimplePlugin_iBusRsp_output_payload_pc = IBusSimplePlugin_rspJoin_join_payload_pc;
  assign IBusSimplePlugin_iBusRsp_output_payload_rsp_error = IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  assign IBusSimplePlugin_iBusRsp_output_payload_rsp_inst = IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  assign IBusSimplePlugin_iBusRsp_output_payload_isRvc = IBusSimplePlugin_rspJoin_join_payload_isRvc;
  assign _zz_dBus_cmd_valid = 1'b0;
  always @(*) begin
    execute_DBusSimplePlugin_skipCmd = 1'b0;
    if(execute_ALIGNEMENT_FAULT) begin
      execute_DBusSimplePlugin_skipCmd = 1'b1;
    end
  end

  assign dBus_cmd_valid = (((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! execute_arbitration_isStuckByOthers)) && (! execute_arbitration_isFlushed)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_dBus_cmd_valid));
  assign dBus_cmd_payload_wr = execute_MEMORY_STORE;
  assign dBus_cmd_payload_size = execute_INSTRUCTION[13 : 12];
  always @(*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_dBus_cmd_payload_data = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_dBus_cmd_payload_data = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_dBus_cmd_payload_data = execute_RS2[31 : 0];
      end
    endcase
  end

  assign dBus_cmd_payload_data = _zz_dBus_cmd_payload_data;
  assign when_DBusSimplePlugin_l434 = ((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! dBus_cmd_ready)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_dBus_cmd_valid));
  always @(*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_execute_DBusSimplePlugin_formalMask = 4'b0001;
      end
      2'b01 : begin
        _zz_execute_DBusSimplePlugin_formalMask = 4'b0011;
      end
      default : begin
        _zz_execute_DBusSimplePlugin_formalMask = 4'b1111;
      end
    endcase
  end

  assign execute_DBusSimplePlugin_formalMask = (_zz_execute_DBusSimplePlugin_formalMask <<< dBus_cmd_payload_address[1 : 0]);
  assign dBus_cmd_payload_mask = execute_DBusSimplePlugin_formalMask;
  assign dBus_cmd_payload_address = execute_SRC_ADD;
  assign when_DBusSimplePlugin_l489 = (((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (! memory_MEMORY_STORE)) && ((! dBus_rsp_ready) || 1'b0));
  always @(*) begin
    memory_DBusSimplePlugin_rspShifted = memory_MEMORY_READ_DATA;
    case(memory_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        memory_DBusSimplePlugin_rspShifted[7 : 0] = memory_MEMORY_READ_DATA[15 : 8];
      end
      2'b10 : begin
        memory_DBusSimplePlugin_rspShifted[15 : 0] = memory_MEMORY_READ_DATA[31 : 16];
      end
      2'b11 : begin
        memory_DBusSimplePlugin_rspShifted[7 : 0] = memory_MEMORY_READ_DATA[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign switch_Misc_l241_2 = memory_INSTRUCTION[13 : 12];
  assign _zz_memory_DBusSimplePlugin_rspFormated = (memory_DBusSimplePlugin_rspShifted[7] && (! memory_INSTRUCTION[14]));
  always @(*) begin
    _zz_memory_DBusSimplePlugin_rspFormated_1[31] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[30] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[29] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[28] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[27] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[26] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[25] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[24] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[23] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[22] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[21] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[20] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[19] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[18] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[17] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[16] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[15] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[14] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[13] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[12] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[11] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[10] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[9] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[8] = _zz_memory_DBusSimplePlugin_rspFormated;
    _zz_memory_DBusSimplePlugin_rspFormated_1[7 : 0] = memory_DBusSimplePlugin_rspShifted[7 : 0];
  end

  assign _zz_memory_DBusSimplePlugin_rspFormated_2 = (memory_DBusSimplePlugin_rspShifted[15] && (! memory_INSTRUCTION[14]));
  always @(*) begin
    _zz_memory_DBusSimplePlugin_rspFormated_3[31] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[30] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[29] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[28] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[27] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[26] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[25] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[24] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[23] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[22] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[21] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[20] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[19] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[18] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[17] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[16] = _zz_memory_DBusSimplePlugin_rspFormated_2;
    _zz_memory_DBusSimplePlugin_rspFormated_3[15 : 0] = memory_DBusSimplePlugin_rspShifted[15 : 0];
  end

  always @(*) begin
    case(switch_Misc_l241_2)
      2'b00 : begin
        memory_DBusSimplePlugin_rspFormated = _zz_memory_DBusSimplePlugin_rspFormated_1;
      end
      2'b01 : begin
        memory_DBusSimplePlugin_rspFormated = _zz_memory_DBusSimplePlugin_rspFormated_3;
      end
      default : begin
        memory_DBusSimplePlugin_rspFormated = memory_DBusSimplePlugin_rspShifted;
      end
    endcase
  end

  assign when_DBusSimplePlugin_l565 = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
  always @(*) begin
    CsrPlugin_privilege = 2'b11;
    if(CsrPlugin_forceMachineWire) begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign CsrPlugin_misa_base = 2'b01;
  assign CsrPlugin_misa_extensions = 26'h0000042;
  assign CsrPlugin_mtvec_mode = 2'b00;
  assign _zz_when_CsrPlugin_l1302 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_when_CsrPlugin_l1302_1 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_when_CsrPlugin_l1302_2 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(decodeExceptionPort_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(CsrPlugin_selfException_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(memory_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @(*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(writeBack_arbitration_isFlushed) begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign when_CsrPlugin_l1259 = (! decode_arbitration_isStuck);
  assign when_CsrPlugin_l1259_1 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1259_2 = (! memory_arbitration_isStuck);
  assign when_CsrPlugin_l1259_3 = (! writeBack_arbitration_isStuck);
  assign when_CsrPlugin_l1272 = (|{CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}});
  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign when_CsrPlugin_l1296 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign when_CsrPlugin_l1302 = ((_zz_when_CsrPlugin_l1302 && 1'b1) && (! 1'b0));
  assign when_CsrPlugin_l1302_1 = ((_zz_when_CsrPlugin_l1302_1 && 1'b1) && (! 1'b0));
  assign when_CsrPlugin_l1302_2 = ((_zz_when_CsrPlugin_l1302_2 && 1'b1) && (! 1'b0));
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  assign when_CsrPlugin_l1335 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1335_1 = (! memory_arbitration_isStuck);
  assign when_CsrPlugin_l1335_2 = (! writeBack_arbitration_isStuck);
  assign when_CsrPlugin_l1340 = ((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt);
  always @(*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(when_CsrPlugin_l1346) begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException) begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign when_CsrPlugin_l1346 = (|{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}});
  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @(*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException) begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @(*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException) begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  assign CsrPlugin_trapCauseEbreakDebug = 1'b0;
  always @(*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    CsrPlugin_xtvec_base = 30'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign CsrPlugin_trapEnterDebug = 1'b0;
  assign when_CsrPlugin_l1390 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign when_CsrPlugin_l1398 = (! CsrPlugin_trapEnterDebug);
  assign when_CsrPlugin_l1456 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == EnvCtrlEnum_XRET));
  assign switch_CsrPlugin_l1460 = writeBack_INSTRUCTION[29 : 28];
  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign when_CsrPlugin_l1519 = (execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_WFI));
  assign when_CsrPlugin_l1521 = (! execute_CsrPlugin_wfiWake);
  assign when_CsrPlugin_l1527 = (|{(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == EnvCtrlEnum_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == EnvCtrlEnum_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_XRET))}});
  assign execute_CsrPlugin_blockedBySideEffects = ((|{writeBack_arbitration_isValid,memory_arbitration_isValid}) || 1'b0);
  always @(*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_3857) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3858) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3859) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3860) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_769) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_768) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_773) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_833) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_832) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_835) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2816) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2944) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2818) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_2946) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_3072) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3200) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3074) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3202) begin
      if(execute_CSR_READ_OPCODE) begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(CsrPlugin_csrMapping_allowCsrSignal) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(when_CsrPlugin_l1719) begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(when_CsrPlugin_l1725) begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @(*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if(when_CsrPlugin_l1547) begin
      if(when_CsrPlugin_l1548) begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @(*) begin
    CsrPlugin_selfException_valid = 1'b0;
    if(when_CsrPlugin_l1540) begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(when_CsrPlugin_l1555) begin
      CsrPlugin_selfException_valid = 1'b1;
    end
    if(when_CsrPlugin_l1565) begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @(*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(when_CsrPlugin_l1540) begin
      CsrPlugin_selfException_payload_code = 4'b0010;
    end
    if(when_CsrPlugin_l1555) begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        default : begin
          CsrPlugin_selfException_payload_code = 4'b1011;
        end
      endcase
    end
    if(when_CsrPlugin_l1565) begin
      CsrPlugin_selfException_payload_code = 4'b0011;
    end
  end

  assign CsrPlugin_selfException_payload_badAddr = execute_INSTRUCTION;
  assign when_CsrPlugin_l1540 = (execute_CsrPlugin_illegalAccess || execute_CsrPlugin_illegalInstruction);
  assign when_CsrPlugin_l1547 = (execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_XRET));
  assign when_CsrPlugin_l1548 = (CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]);
  assign when_CsrPlugin_l1555 = (execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_ECALL));
  assign when_CsrPlugin_l1565 = ((execute_arbitration_isValid && (execute_ENV_CTRL == EnvCtrlEnum_EBREAK)) && CsrPlugin_allowEbreakException);
  always @(*) begin
    execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
    if(when_CsrPlugin_l1719) begin
      execute_CsrPlugin_writeInstruction = 1'b0;
    end
  end

  always @(*) begin
    execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
    if(when_CsrPlugin_l1719) begin
      execute_CsrPlugin_readInstruction = 1'b0;
    end
  end

  assign execute_CsrPlugin_writeEnable = (execute_CsrPlugin_writeInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readEnable = (execute_CsrPlugin_readInstruction && (! execute_arbitration_isStuck));
  assign CsrPlugin_csrMapping_hazardFree = (! execute_CsrPlugin_blockedBySideEffects);
  assign execute_CsrPlugin_readToWriteData = CsrPlugin_csrMapping_readDataSignal;
  assign switch_Misc_l241_3 = execute_INSTRUCTION[13];
  always @(*) begin
    case(switch_Misc_l241_3)
      1'b0 : begin
        _zz_CsrPlugin_csrMapping_writeDataSignal = execute_SRC1;
      end
      default : begin
        _zz_CsrPlugin_csrMapping_writeDataSignal = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign CsrPlugin_csrMapping_writeDataSignal = _zz_CsrPlugin_csrMapping_writeDataSignal;
  assign when_CsrPlugin_l1587 = (execute_arbitration_isValid && execute_IS_CSR);
  assign when_CsrPlugin_l1591 = (execute_arbitration_isValid && (execute_IS_CSR || 1'b0));
  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign _zz_decode_IS_DIV_1 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_decode_IS_DIV_2 = ((decode_INSTRUCTION & 32'h00006004) == 32'h00002000);
  assign _zz_decode_IS_DIV_3 = ((decode_INSTRUCTION & 32'h00000018) == 32'h0);
  assign _zz_decode_IS_DIV_4 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_decode_IS_DIV_5 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_decode_IS_DIV_6 = ((decode_INSTRUCTION & 32'h10103050) == 32'h00100050);
  assign _zz_decode_IS_DIV_7 = ((decode_INSTRUCTION & 32'h00003000) == 32'h00002000);
  assign _zz_decode_IS_DIV_8 = ((decode_INSTRUCTION & 32'h00007000) == 32'h00001000);
  assign _zz_decode_IS_DIV_9 = ((decode_INSTRUCTION & 32'h00005000) == 32'h00004000);
  assign _zz_decode_IS_DIV = {(|{_zz_decode_IS_DIV_5,(_zz__zz_decode_IS_DIV == _zz__zz_decode_IS_DIV_1)}),{(|(_zz__zz_decode_IS_DIV_2 == _zz__zz_decode_IS_DIV_3)),{(|_zz__zz_decode_IS_DIV_4),{(|_zz__zz_decode_IS_DIV_5),{_zz__zz_decode_IS_DIV_6,{_zz__zz_decode_IS_DIV_7,_zz__zz_decode_IS_DIV_10}}}}}};
  assign _zz_decode_SRC1_CTRL_2 = _zz_decode_IS_DIV[1 : 0];
  assign _zz_decode_SRC1_CTRL_1 = _zz_decode_SRC1_CTRL_2;
  assign _zz_decode_SRC2_CTRL_2 = _zz_decode_IS_DIV[6 : 5];
  assign _zz_decode_SRC2_CTRL_1 = _zz_decode_SRC2_CTRL_2;
  assign _zz_decode_ENV_CTRL_2 = _zz_decode_IS_DIV[16 : 14];
  assign _zz_decode_ENV_CTRL_1 = _zz_decode_ENV_CTRL_2;
  assign _zz_decode_ALU_CTRL_2 = _zz_decode_IS_DIV[19 : 18];
  assign _zz_decode_ALU_CTRL_1 = _zz_decode_ALU_CTRL_2;
  assign _zz_decode_ALU_BITWISE_CTRL_2 = _zz_decode_IS_DIV[22 : 21];
  assign _zz_decode_ALU_BITWISE_CTRL_1 = _zz_decode_ALU_BITWISE_CTRL_2;
  assign _zz_decode_SHIFT_CTRL_2 = _zz_decode_IS_DIV[25 : 24];
  assign _zz_decode_SHIFT_CTRL_1 = _zz_decode_SHIFT_CTRL_2;
  assign _zz_decode_BRANCH_CTRL_2 = _zz_decode_IS_DIV[31 : 30];
  assign _zz_decode_BRANCH_CTRL_1 = _zz_decode_BRANCH_CTRL_2;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign when_RegFilePlugin_l63 = (decode_INSTRUCTION[11 : 7] == 5'h0);
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = RegFilePlugin_regFile_spinal_port0;
  assign decode_RegFilePlugin_rs2Data = RegFilePlugin_regFile_spinal_port1;
  always @(*) begin
    lastStageRegFileWrite_valid = (_zz_lastStageRegFileWrite_valid && writeBack_arbitration_isFiring);
    if(_zz_5) begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_address = _zz_lastStageRegFileWrite_payload_address[11 : 7];
    if(_zz_5) begin
      lastStageRegFileWrite_payload_address = 5'h0;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_data = _zz_decode_RS2;
    if(_zz_5) begin
      lastStageRegFileWrite_payload_data = 32'h0;
    end
  end

  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      AluBitwiseCtrlEnum_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @(*) begin
    case(execute_ALU_CTRL)
      AluCtrlEnum_BITWISE : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_IntAluPlugin_bitwise;
      end
      AluCtrlEnum_SLT_SLTU : begin
        _zz_execute_REGFILE_WRITE_DATA = {31'd0, _zz__zz_execute_REGFILE_WRITE_DATA};
      end
      default : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @(*) begin
    case(decode_SRC1_CTRL)
      Src1CtrlEnum_RS : begin
        _zz_decode_SRC1 = _zz_decode_to_execute_RS1;
      end
      Src1CtrlEnum_PC_INCREMENT : begin
        _zz_decode_SRC1 = {29'd0, _zz__zz_decode_SRC1};
      end
      Src1CtrlEnum_IMU : begin
        _zz_decode_SRC1 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_decode_SRC1 = {27'd0, _zz__zz_decode_SRC1_1};
      end
    endcase
  end

  assign _zz_decode_SRC2 = decode_INSTRUCTION[31];
  always @(*) begin
    _zz_decode_SRC2_1[19] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[18] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[17] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[16] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[15] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[14] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[13] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[12] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[11] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[10] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[9] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[8] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[7] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[6] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[5] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[4] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[3] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[2] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[1] = _zz_decode_SRC2;
    _zz_decode_SRC2_1[0] = _zz_decode_SRC2;
  end

  assign _zz_decode_SRC2_2 = _zz__zz_decode_SRC2_2[11];
  always @(*) begin
    _zz_decode_SRC2_3[19] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[18] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[17] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[16] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[15] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[14] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[13] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[12] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[11] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[10] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[9] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[8] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[7] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[6] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[5] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[4] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[3] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[2] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[1] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[0] = _zz_decode_SRC2_2;
  end

  always @(*) begin
    case(decode_SRC2_CTRL)
      Src2CtrlEnum_RS : begin
        _zz_decode_SRC2_4 = _zz_decode_to_execute_RS2;
      end
      Src2CtrlEnum_IMI : begin
        _zz_decode_SRC2_4 = {_zz_decode_SRC2_1,decode_INSTRUCTION[31 : 20]};
      end
      Src2CtrlEnum_IMS : begin
        _zz_decode_SRC2_4 = {_zz_decode_SRC2_3,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_decode_SRC2_4 = _zz_decode_to_execute_PC;
      end
    endcase
  end

  always @(*) begin
    execute_SrcPlugin_addSub = _zz_execute_SrcPlugin_addSub;
    if(execute_SRC2_FORCE_ZERO) begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @(*) begin
    _zz_execute_FullBarrelShifterPlugin_reversed[0] = execute_SRC1[31];
    _zz_execute_FullBarrelShifterPlugin_reversed[1] = execute_SRC1[30];
    _zz_execute_FullBarrelShifterPlugin_reversed[2] = execute_SRC1[29];
    _zz_execute_FullBarrelShifterPlugin_reversed[3] = execute_SRC1[28];
    _zz_execute_FullBarrelShifterPlugin_reversed[4] = execute_SRC1[27];
    _zz_execute_FullBarrelShifterPlugin_reversed[5] = execute_SRC1[26];
    _zz_execute_FullBarrelShifterPlugin_reversed[6] = execute_SRC1[25];
    _zz_execute_FullBarrelShifterPlugin_reversed[7] = execute_SRC1[24];
    _zz_execute_FullBarrelShifterPlugin_reversed[8] = execute_SRC1[23];
    _zz_execute_FullBarrelShifterPlugin_reversed[9] = execute_SRC1[22];
    _zz_execute_FullBarrelShifterPlugin_reversed[10] = execute_SRC1[21];
    _zz_execute_FullBarrelShifterPlugin_reversed[11] = execute_SRC1[20];
    _zz_execute_FullBarrelShifterPlugin_reversed[12] = execute_SRC1[19];
    _zz_execute_FullBarrelShifterPlugin_reversed[13] = execute_SRC1[18];
    _zz_execute_FullBarrelShifterPlugin_reversed[14] = execute_SRC1[17];
    _zz_execute_FullBarrelShifterPlugin_reversed[15] = execute_SRC1[16];
    _zz_execute_FullBarrelShifterPlugin_reversed[16] = execute_SRC1[15];
    _zz_execute_FullBarrelShifterPlugin_reversed[17] = execute_SRC1[14];
    _zz_execute_FullBarrelShifterPlugin_reversed[18] = execute_SRC1[13];
    _zz_execute_FullBarrelShifterPlugin_reversed[19] = execute_SRC1[12];
    _zz_execute_FullBarrelShifterPlugin_reversed[20] = execute_SRC1[11];
    _zz_execute_FullBarrelShifterPlugin_reversed[21] = execute_SRC1[10];
    _zz_execute_FullBarrelShifterPlugin_reversed[22] = execute_SRC1[9];
    _zz_execute_FullBarrelShifterPlugin_reversed[23] = execute_SRC1[8];
    _zz_execute_FullBarrelShifterPlugin_reversed[24] = execute_SRC1[7];
    _zz_execute_FullBarrelShifterPlugin_reversed[25] = execute_SRC1[6];
    _zz_execute_FullBarrelShifterPlugin_reversed[26] = execute_SRC1[5];
    _zz_execute_FullBarrelShifterPlugin_reversed[27] = execute_SRC1[4];
    _zz_execute_FullBarrelShifterPlugin_reversed[28] = execute_SRC1[3];
    _zz_execute_FullBarrelShifterPlugin_reversed[29] = execute_SRC1[2];
    _zz_execute_FullBarrelShifterPlugin_reversed[30] = execute_SRC1[1];
    _zz_execute_FullBarrelShifterPlugin_reversed[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == ShiftCtrlEnum_SLL_1) ? _zz_execute_FullBarrelShifterPlugin_reversed : execute_SRC1);
  always @(*) begin
    _zz_decode_RS2_3[0] = memory_SHIFT_RIGHT[31];
    _zz_decode_RS2_3[1] = memory_SHIFT_RIGHT[30];
    _zz_decode_RS2_3[2] = memory_SHIFT_RIGHT[29];
    _zz_decode_RS2_3[3] = memory_SHIFT_RIGHT[28];
    _zz_decode_RS2_3[4] = memory_SHIFT_RIGHT[27];
    _zz_decode_RS2_3[5] = memory_SHIFT_RIGHT[26];
    _zz_decode_RS2_3[6] = memory_SHIFT_RIGHT[25];
    _zz_decode_RS2_3[7] = memory_SHIFT_RIGHT[24];
    _zz_decode_RS2_3[8] = memory_SHIFT_RIGHT[23];
    _zz_decode_RS2_3[9] = memory_SHIFT_RIGHT[22];
    _zz_decode_RS2_3[10] = memory_SHIFT_RIGHT[21];
    _zz_decode_RS2_3[11] = memory_SHIFT_RIGHT[20];
    _zz_decode_RS2_3[12] = memory_SHIFT_RIGHT[19];
    _zz_decode_RS2_3[13] = memory_SHIFT_RIGHT[18];
    _zz_decode_RS2_3[14] = memory_SHIFT_RIGHT[17];
    _zz_decode_RS2_3[15] = memory_SHIFT_RIGHT[16];
    _zz_decode_RS2_3[16] = memory_SHIFT_RIGHT[15];
    _zz_decode_RS2_3[17] = memory_SHIFT_RIGHT[14];
    _zz_decode_RS2_3[18] = memory_SHIFT_RIGHT[13];
    _zz_decode_RS2_3[19] = memory_SHIFT_RIGHT[12];
    _zz_decode_RS2_3[20] = memory_SHIFT_RIGHT[11];
    _zz_decode_RS2_3[21] = memory_SHIFT_RIGHT[10];
    _zz_decode_RS2_3[22] = memory_SHIFT_RIGHT[9];
    _zz_decode_RS2_3[23] = memory_SHIFT_RIGHT[8];
    _zz_decode_RS2_3[24] = memory_SHIFT_RIGHT[7];
    _zz_decode_RS2_3[25] = memory_SHIFT_RIGHT[6];
    _zz_decode_RS2_3[26] = memory_SHIFT_RIGHT[5];
    _zz_decode_RS2_3[27] = memory_SHIFT_RIGHT[4];
    _zz_decode_RS2_3[28] = memory_SHIFT_RIGHT[3];
    _zz_decode_RS2_3[29] = memory_SHIFT_RIGHT[2];
    _zz_decode_RS2_3[30] = memory_SHIFT_RIGHT[1];
    _zz_decode_RS2_3[31] = memory_SHIFT_RIGHT[0];
  end

  assign memory_MulDivIterativePlugin_frontendOk = 1'b1;
  always @(*) begin
    memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b0;
    if(when_MulDivIterativePlugin_l96) begin
      if(when_MulDivIterativePlugin_l100) begin
        memory_MulDivIterativePlugin_mul_counter_willIncrement = 1'b1;
      end
    end
  end

  always @(*) begin
    memory_MulDivIterativePlugin_mul_counter_willClear = 1'b0;
    if(when_MulDivIterativePlugin_l110) begin
      memory_MulDivIterativePlugin_mul_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_mul_counter_value == 6'h20);
  assign memory_MulDivIterativePlugin_mul_counter_willOverflow = (memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc && memory_MulDivIterativePlugin_mul_counter_willIncrement);
  always @(*) begin
    if(memory_MulDivIterativePlugin_mul_counter_willOverflow) begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = (memory_MulDivIterativePlugin_mul_counter_value + _zz_memory_MulDivIterativePlugin_mul_counter_valueNext);
    end
    if(memory_MulDivIterativePlugin_mul_counter_willClear) begin
      memory_MulDivIterativePlugin_mul_counter_valueNext = 6'h0;
    end
  end

  assign when_MulDivIterativePlugin_l96 = (memory_arbitration_isValid && memory_IS_MUL);
  assign when_MulDivIterativePlugin_l97 = ((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc));
  assign when_MulDivIterativePlugin_l100 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_mul_counter_willOverflowIfInc));
  assign when_MulDivIterativePlugin_l110 = (! memory_arbitration_isStuck);
  always @(*) begin
    memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b0;
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l132) begin
        memory_MulDivIterativePlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @(*) begin
    memory_MulDivIterativePlugin_div_counter_willClear = 1'b0;
    if(when_MulDivIterativePlugin_l162) begin
      memory_MulDivIterativePlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_MulDivIterativePlugin_div_counter_willOverflowIfInc = (memory_MulDivIterativePlugin_div_counter_value == 6'h21);
  assign memory_MulDivIterativePlugin_div_counter_willOverflow = (memory_MulDivIterativePlugin_div_counter_willOverflowIfInc && memory_MulDivIterativePlugin_div_counter_willIncrement);
  always @(*) begin
    if(memory_MulDivIterativePlugin_div_counter_willOverflow) begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_MulDivIterativePlugin_div_counter_valueNext = (memory_MulDivIterativePlugin_div_counter_value + _zz_memory_MulDivIterativePlugin_div_counter_valueNext);
    end
    if(memory_MulDivIterativePlugin_div_counter_willClear) begin
      memory_MulDivIterativePlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign when_MulDivIterativePlugin_l126 = (memory_MulDivIterativePlugin_div_counter_value == 6'h20);
  assign when_MulDivIterativePlugin_l126_1 = (! memory_arbitration_isStuck);
  assign when_MulDivIterativePlugin_l128 = (memory_arbitration_isValid && memory_IS_DIV);
  assign when_MulDivIterativePlugin_l129 = ((! memory_MulDivIterativePlugin_frontendOk) || (! memory_MulDivIterativePlugin_div_done));
  assign when_MulDivIterativePlugin_l132 = (memory_MulDivIterativePlugin_frontendOk && (! memory_MulDivIterativePlugin_div_done));
  assign _zz_memory_MulDivIterativePlugin_div_stage_0_remainderShifted = memory_MulDivIterativePlugin_rs1[31 : 0];
  assign memory_MulDivIterativePlugin_div_stage_0_remainderShifted = {memory_MulDivIterativePlugin_accumulator[31 : 0],_zz_memory_MulDivIterativePlugin_div_stage_0_remainderShifted[31]};
  assign memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator = (memory_MulDivIterativePlugin_div_stage_0_remainderShifted - _zz_memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator);
  assign memory_MulDivIterativePlugin_div_stage_0_outRemainder = ((! memory_MulDivIterativePlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_memory_MulDivIterativePlugin_div_stage_0_outRemainder : _zz_memory_MulDivIterativePlugin_div_stage_0_outRemainder_1);
  assign memory_MulDivIterativePlugin_div_stage_0_outNumerator = _zz_memory_MulDivIterativePlugin_div_stage_0_outNumerator[31:0];
  assign when_MulDivIterativePlugin_l151 = (memory_MulDivIterativePlugin_div_counter_value == 6'h20);
  assign _zz_memory_MulDivIterativePlugin_div_result = (memory_INSTRUCTION[13] ? memory_MulDivIterativePlugin_accumulator[31 : 0] : memory_MulDivIterativePlugin_rs1[31 : 0]);
  assign when_MulDivIterativePlugin_l162 = (! memory_arbitration_isStuck);
  assign _zz_memory_MulDivIterativePlugin_rs2 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_memory_MulDivIterativePlugin_rs1 = ((execute_IS_MUL && _zz_memory_MulDivIterativePlugin_rs2) || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @(*) begin
    _zz_memory_MulDivIterativePlugin_rs1_1[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_memory_MulDivIterativePlugin_rs1_1[31 : 0] = execute_RS1;
  end

  always @(*) begin
    HazardSimplePlugin_src0Hazard = 1'b0;
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l48) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l48_1) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l48_2) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l105) begin
      HazardSimplePlugin_src0Hazard = 1'b0;
    end
  end

  always @(*) begin
    HazardSimplePlugin_src1Hazard = 1'b0;
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l51) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l51_1) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l51_2) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l108) begin
      HazardSimplePlugin_src1Hazard = 1'b0;
    end
  end

  assign HazardSimplePlugin_writeBackWrites_valid = (_zz_lastStageRegFileWrite_valid && writeBack_arbitration_isFiring);
  assign HazardSimplePlugin_writeBackWrites_payload_address = _zz_lastStageRegFileWrite_payload_address[11 : 7];
  assign HazardSimplePlugin_writeBackWrites_payload_data = _zz_decode_RS2;
  assign HazardSimplePlugin_addr0Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[19 : 15]);
  assign HazardSimplePlugin_addr1Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l47 = 1'b1;
  assign when_HazardSimplePlugin_l48 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58 = (1'b0 || (! when_HazardSimplePlugin_l47));
  assign when_HazardSimplePlugin_l48_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_1 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign when_HazardSimplePlugin_l48_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l51_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l45_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l57_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_2 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign when_HazardSimplePlugin_l105 = (! decode_RS1_USE);
  assign when_HazardSimplePlugin_l108 = (! decode_RS2_USE);
  assign when_HazardSimplePlugin_l113 = (decode_arbitration_isValid && (HazardSimplePlugin_src0Hazard || HazardSimplePlugin_src1Hazard));
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign switch_Misc_l241_4 = execute_INSTRUCTION[14 : 12];
  always @(*) begin
    case(switch_Misc_l241_4)
      3'b000 : begin
        _zz_execute_BRANCH_DO = execute_BranchPlugin_eq;
      end
      3'b001 : begin
        _zz_execute_BRANCH_DO = (! execute_BranchPlugin_eq);
      end
      3'b101 : begin
        _zz_execute_BRANCH_DO = (! execute_SRC_LESS);
      end
      3'b111 : begin
        _zz_execute_BRANCH_DO = (! execute_SRC_LESS);
      end
      default : begin
        _zz_execute_BRANCH_DO = execute_SRC_LESS;
      end
    endcase
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : begin
        _zz_execute_BRANCH_DO_1 = 1'b0;
      end
      BranchCtrlEnum_JAL : begin
        _zz_execute_BRANCH_DO_1 = 1'b1;
      end
      BranchCtrlEnum_JALR : begin
        _zz_execute_BRANCH_DO_1 = 1'b1;
      end
      default : begin
        _zz_execute_BRANCH_DO_1 = _zz_execute_BRANCH_DO;
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src1 = ((execute_BRANCH_CTRL == BranchCtrlEnum_JALR) ? execute_RS1 : execute_PC);
  assign _zz_execute_BranchPlugin_branch_src2 = _zz__zz_execute_BranchPlugin_branch_src2[19];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_1[10] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[9] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[8] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[7] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[6] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[5] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[4] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[3] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[2] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[1] = _zz_execute_BranchPlugin_branch_src2;
    _zz_execute_BranchPlugin_branch_src2_1[0] = _zz_execute_BranchPlugin_branch_src2;
  end

  assign _zz_execute_BranchPlugin_branch_src2_2 = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_3[19] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[18] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[17] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[16] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[15] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[14] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[13] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[12] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[11] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[10] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[9] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[8] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[7] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[6] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[5] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[4] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[3] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[2] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[1] = _zz_execute_BranchPlugin_branch_src2_2;
    _zz_execute_BranchPlugin_branch_src2_3[0] = _zz_execute_BranchPlugin_branch_src2_2;
  end

  assign _zz_execute_BranchPlugin_branch_src2_4 = _zz__zz_execute_BranchPlugin_branch_src2_4[11];
  always @(*) begin
    _zz_execute_BranchPlugin_branch_src2_5[18] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[17] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[16] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[15] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[14] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[13] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[12] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[11] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[10] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[9] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[8] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[7] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[6] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[5] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[4] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[3] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[2] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[1] = _zz_execute_BranchPlugin_branch_src2_4;
    _zz_execute_BranchPlugin_branch_src2_5[0] = _zz_execute_BranchPlugin_branch_src2_4;
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_JAL : begin
        _zz_execute_BranchPlugin_branch_src2_6 = {{_zz_execute_BranchPlugin_branch_src2_1,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
      end
      BranchCtrlEnum_JALR : begin
        _zz_execute_BranchPlugin_branch_src2_6 = {_zz_execute_BranchPlugin_branch_src2_3,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        _zz_execute_BranchPlugin_branch_src2_6 = {{_zz_execute_BranchPlugin_branch_src2_5,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src2 = _zz_execute_BranchPlugin_branch_src2_6;
  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = memory_BRANCH_CALC;
  assign when_DebugPlugin_l238 = (DebugPlugin_haltIt && (! DebugPlugin_isPipBusy));
  assign DebugPlugin_allowEBreak = (DebugPlugin_debugUsed && (! DebugPlugin_disableEbreak));
  always @(*) begin
    debug_bus_cmd_ready = 1'b1;
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l280)
        6'h01 : begin
          if(debug_bus_cmd_payload_wr) begin
            debug_bus_cmd_ready = DebugPlugin_injectionPort_ready;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(*) begin
    debug_bus_rsp_data = DebugPlugin_busReadDataReg;
    if(when_DebugPlugin_l257) begin
      debug_bus_rsp_data[0] = DebugPlugin_resetIt;
      debug_bus_rsp_data[1] = DebugPlugin_haltIt;
      debug_bus_rsp_data[2] = DebugPlugin_isPipBusy;
      debug_bus_rsp_data[3] = DebugPlugin_haltedByBreak;
      debug_bus_rsp_data[4] = DebugPlugin_stepIt;
    end
  end

  assign when_DebugPlugin_l257 = (! _zz_when_DebugPlugin_l257);
  always @(*) begin
    DebugPlugin_injectionPort_valid = 1'b0;
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l280)
        6'h01 : begin
          if(debug_bus_cmd_payload_wr) begin
            DebugPlugin_injectionPort_valid = 1'b1;
          end
        end
        default : begin
        end
      endcase
    end
  end

  assign DebugPlugin_injectionPort_payload = debug_bus_cmd_payload_data;
  assign switch_DebugPlugin_l280 = debug_bus_cmd_payload_address[7 : 2];
  assign when_DebugPlugin_l284 = debug_bus_cmd_payload_data[16];
  assign when_DebugPlugin_l284_1 = debug_bus_cmd_payload_data[24];
  assign when_DebugPlugin_l285 = debug_bus_cmd_payload_data[17];
  assign when_DebugPlugin_l285_1 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l286 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l287 = debug_bus_cmd_payload_data[25];
  assign when_DebugPlugin_l288 = debug_bus_cmd_payload_data[18];
  assign when_DebugPlugin_l288_1 = debug_bus_cmd_payload_data[26];
  assign when_DebugPlugin_l308 = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign when_DebugPlugin_l311 = ((|{writeBack_arbitration_isValid,memory_arbitration_isValid}) == 1'b0);
  assign when_DebugPlugin_l324 = (DebugPlugin_stepIt && IBusSimplePlugin_incomingInstruction);
  assign debug_resetOut = DebugPlugin_resetIt_regNext;
  assign when_DebugPlugin_l344 = (DebugPlugin_haltIt || DebugPlugin_stepIt);
  assign when_Pipeline_l124 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_1 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_2 = ((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack));
  assign when_Pipeline_l124_3 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_4 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_5 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_6 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_7 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_8 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_9 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_10 = (! execute_arbitration_isStuck);
  assign _zz_decode_SRC1_CTRL = _zz_decode_SRC1_CTRL_1;
  assign when_Pipeline_l124_11 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_12 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_13 = (! memory_arbitration_isStuck);
  assign _zz_decode_SRC2_CTRL = _zz_decode_SRC2_CTRL_1;
  assign when_Pipeline_l124_14 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_15 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_16 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_17 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_18 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_19 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_20 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_21 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_22 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ENV_CTRL_1 = decode_ENV_CTRL;
  assign _zz_execute_to_memory_ENV_CTRL_1 = execute_ENV_CTRL;
  assign _zz_memory_to_writeBack_ENV_CTRL_1 = memory_ENV_CTRL;
  assign _zz_decode_ENV_CTRL = _zz_decode_ENV_CTRL_1;
  assign when_Pipeline_l124_23 = (! execute_arbitration_isStuck);
  assign _zz_execute_ENV_CTRL = decode_to_execute_ENV_CTRL;
  assign when_Pipeline_l124_24 = (! memory_arbitration_isStuck);
  assign _zz_memory_ENV_CTRL = execute_to_memory_ENV_CTRL;
  assign when_Pipeline_l124_25 = (! writeBack_arbitration_isStuck);
  assign _zz_writeBack_ENV_CTRL = memory_to_writeBack_ENV_CTRL;
  assign _zz_decode_to_execute_ALU_CTRL_1 = decode_ALU_CTRL;
  assign _zz_decode_ALU_CTRL = _zz_decode_ALU_CTRL_1;
  assign when_Pipeline_l124_26 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_CTRL = decode_to_execute_ALU_CTRL;
  assign when_Pipeline_l124_27 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL_1 = decode_ALU_BITWISE_CTRL;
  assign _zz_decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL_1;
  assign when_Pipeline_l124_28 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_BITWISE_CTRL = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL_1 = decode_SHIFT_CTRL;
  assign _zz_execute_to_memory_SHIFT_CTRL_1 = execute_SHIFT_CTRL;
  assign _zz_decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL_1;
  assign when_Pipeline_l124_29 = (! execute_arbitration_isStuck);
  assign _zz_execute_SHIFT_CTRL = decode_to_execute_SHIFT_CTRL;
  assign when_Pipeline_l124_30 = (! memory_arbitration_isStuck);
  assign _zz_memory_SHIFT_CTRL = execute_to_memory_SHIFT_CTRL;
  assign when_Pipeline_l124_31 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_32 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_33 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_34 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_35 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_36 = (! memory_arbitration_isStuck);
  assign _zz_decode_to_execute_BRANCH_CTRL_1 = decode_BRANCH_CTRL;
  assign _zz_decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL_1;
  assign when_Pipeline_l124_37 = (! execute_arbitration_isStuck);
  assign _zz_execute_BRANCH_CTRL = decode_to_execute_BRANCH_CTRL;
  assign when_Pipeline_l124_38 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_39 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_40 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_41 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_42 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_43 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_44 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_45 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_46 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_47 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_48 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_49 = (! memory_arbitration_isStuck);
  assign decode_arbitration_isFlushed = ((|{writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}}) || (|{writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}}));
  assign execute_arbitration_isFlushed = ((|{writeBack_arbitration_flushNext,memory_arbitration_flushNext}) || (|{writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}}));
  assign memory_arbitration_isFlushed = ((|writeBack_arbitration_flushNext) || (|{writeBack_arbitration_flushIt,memory_arbitration_flushIt}));
  assign writeBack_arbitration_isFlushed = (1'b0 || (|writeBack_arbitration_flushIt));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  assign when_Pipeline_l151 = ((! execute_arbitration_isStuck) || execute_arbitration_removeIt);
  assign when_Pipeline_l154 = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign when_Pipeline_l151_1 = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  assign when_Pipeline_l154_1 = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign when_Pipeline_l151_2 = ((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt);
  assign when_Pipeline_l154_2 = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  always @(*) begin
    DebugPlugin_injectionPort_ready = 1'b0;
    case(IBusSimplePlugin_injector_port_state)
      3'b100 : begin
        DebugPlugin_injectionPort_ready = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign when_Fetcher_l373 = (IBusSimplePlugin_injector_port_state != 3'b000);
  assign when_Fetcher_l391 = (! decode_arbitration_isStuck);
  assign when_Fetcher_l411 = (IBusSimplePlugin_injector_port_state != 3'b000);
  assign when_CsrPlugin_l1669 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_1 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_2 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_3 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_4 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_5 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_6 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_7 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_8 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_9 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_10 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_11 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_12 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_13 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_14 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_15 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_16 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_17 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_18 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_19 = (! execute_arbitration_isStuck);
  assign when_CsrPlugin_l1669_20 = (! execute_arbitration_isStuck);
  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit = 32'h0;
    if(execute_CsrPlugin_csr_3857) begin
      _zz_CsrPlugin_csrMapping_readDataInit[3 : 0] = 4'b1011;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_1 = 32'h0;
    if(execute_CsrPlugin_csr_3858) begin
      _zz_CsrPlugin_csrMapping_readDataInit_1[4 : 0] = 5'h16;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_2 = 32'h0;
    if(execute_CsrPlugin_csr_3859) begin
      _zz_CsrPlugin_csrMapping_readDataInit_2[5 : 0] = 6'h21;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_3 = 32'h0;
    if(execute_CsrPlugin_csr_769) begin
      _zz_CsrPlugin_csrMapping_readDataInit_3[31 : 30] = CsrPlugin_misa_base;
      _zz_CsrPlugin_csrMapping_readDataInit_3[25 : 0] = CsrPlugin_misa_extensions;
    end
  end

  assign switch_CsrPlugin_l1031 = CsrPlugin_csrMapping_writeDataSignal[12 : 11];
  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_4 = 32'h0;
    if(execute_CsrPlugin_csr_768) begin
      _zz_CsrPlugin_csrMapping_readDataInit_4[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_CsrPlugin_csrMapping_readDataInit_4[3 : 3] = CsrPlugin_mstatus_MIE;
      _zz_CsrPlugin_csrMapping_readDataInit_4[12 : 11] = CsrPlugin_mstatus_MPP;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_5 = 32'h0;
    if(execute_CsrPlugin_csr_836) begin
      _zz_CsrPlugin_csrMapping_readDataInit_5[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_CsrPlugin_csrMapping_readDataInit_5[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_CsrPlugin_csrMapping_readDataInit_5[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_6 = 32'h0;
    if(execute_CsrPlugin_csr_772) begin
      _zz_CsrPlugin_csrMapping_readDataInit_6[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_CsrPlugin_csrMapping_readDataInit_6[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_CsrPlugin_csrMapping_readDataInit_6[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_7 = 32'h0;
    if(execute_CsrPlugin_csr_773) begin
      _zz_CsrPlugin_csrMapping_readDataInit_7[31 : 2] = CsrPlugin_mtvec_base;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_8 = 32'h0;
    if(execute_CsrPlugin_csr_833) begin
      _zz_CsrPlugin_csrMapping_readDataInit_8[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_9 = 32'h0;
    if(execute_CsrPlugin_csr_832) begin
      _zz_CsrPlugin_csrMapping_readDataInit_9[31 : 0] = CsrPlugin_mscratch;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_10 = 32'h0;
    if(execute_CsrPlugin_csr_834) begin
      _zz_CsrPlugin_csrMapping_readDataInit_10[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_CsrPlugin_csrMapping_readDataInit_10[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_11 = 32'h0;
    if(execute_CsrPlugin_csr_835) begin
      _zz_CsrPlugin_csrMapping_readDataInit_11[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_12 = 32'h0;
    if(execute_CsrPlugin_csr_2816) begin
      _zz_CsrPlugin_csrMapping_readDataInit_12[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_13 = 32'h0;
    if(execute_CsrPlugin_csr_2944) begin
      _zz_CsrPlugin_csrMapping_readDataInit_13[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_14 = 32'h0;
    if(execute_CsrPlugin_csr_2818) begin
      _zz_CsrPlugin_csrMapping_readDataInit_14[31 : 0] = CsrPlugin_minstret[31 : 0];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_15 = 32'h0;
    if(execute_CsrPlugin_csr_2946) begin
      _zz_CsrPlugin_csrMapping_readDataInit_15[31 : 0] = CsrPlugin_minstret[63 : 32];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_16 = 32'h0;
    if(execute_CsrPlugin_csr_3072) begin
      _zz_CsrPlugin_csrMapping_readDataInit_16[31 : 0] = CsrPlugin_mcycle[31 : 0];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_17 = 32'h0;
    if(execute_CsrPlugin_csr_3200) begin
      _zz_CsrPlugin_csrMapping_readDataInit_17[31 : 0] = CsrPlugin_mcycle[63 : 32];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_18 = 32'h0;
    if(execute_CsrPlugin_csr_3074) begin
      _zz_CsrPlugin_csrMapping_readDataInit_18[31 : 0] = CsrPlugin_minstret[31 : 0];
    end
  end

  always @(*) begin
    _zz_CsrPlugin_csrMapping_readDataInit_19 = 32'h0;
    if(execute_CsrPlugin_csr_3202) begin
      _zz_CsrPlugin_csrMapping_readDataInit_19[31 : 0] = CsrPlugin_minstret[63 : 32];
    end
  end

  assign CsrPlugin_csrMapping_readDataInit = (((((_zz_CsrPlugin_csrMapping_readDataInit | _zz_CsrPlugin_csrMapping_readDataInit_1) | (_zz_CsrPlugin_csrMapping_readDataInit_2 | _zz_CsrPlugin_csrMapping_readDataInit_20)) | ((_zz_CsrPlugin_csrMapping_readDataInit_3 | _zz_CsrPlugin_csrMapping_readDataInit_4) | (_zz_CsrPlugin_csrMapping_readDataInit_5 | _zz_CsrPlugin_csrMapping_readDataInit_6))) | (((_zz_CsrPlugin_csrMapping_readDataInit_7 | _zz_CsrPlugin_csrMapping_readDataInit_8) | (_zz_CsrPlugin_csrMapping_readDataInit_9 | _zz_CsrPlugin_csrMapping_readDataInit_10)) | ((_zz_CsrPlugin_csrMapping_readDataInit_11 | _zz_CsrPlugin_csrMapping_readDataInit_12) | (_zz_CsrPlugin_csrMapping_readDataInit_13 | _zz_CsrPlugin_csrMapping_readDataInit_14)))) | (((_zz_CsrPlugin_csrMapping_readDataInit_15 | _zz_CsrPlugin_csrMapping_readDataInit_16) | (_zz_CsrPlugin_csrMapping_readDataInit_17 | _zz_CsrPlugin_csrMapping_readDataInit_18)) | _zz_CsrPlugin_csrMapping_readDataInit_19));
  assign when_CsrPlugin_l1702 = ((execute_arbitration_isValid && execute_IS_CSR) && (({execute_CsrPlugin_csrAddress[11 : 2],2'b00} == 12'h3a0) || ({execute_CsrPlugin_csrAddress[11 : 4],4'b0000} == 12'h3b0)));
  assign _zz_when_CsrPlugin_l1709 = (execute_CsrPlugin_csrAddress & 12'hf60);
  assign when_CsrPlugin_l1709 = (((execute_arbitration_isValid && execute_IS_CSR) && (5'h03 <= execute_CsrPlugin_csrAddress[4 : 0])) && (((_zz_when_CsrPlugin_l1709 == 12'hb00) || (((_zz_when_CsrPlugin_l1709 == 12'hc00) && (! execute_CsrPlugin_writeInstruction)) && (CsrPlugin_privilege == 2'b11))) || ((execute_CsrPlugin_csrAddress & 12'hfe0) == 12'h320)));
  always @(*) begin
    when_CsrPlugin_l1719 = CsrPlugin_csrMapping_doForceFailCsr;
    if(when_CsrPlugin_l1717) begin
      when_CsrPlugin_l1719 = 1'b1;
    end
  end

  assign when_CsrPlugin_l1717 = (CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]);
  assign when_CsrPlugin_l1725 = ((! execute_arbitration_isValid) || (! execute_IS_CSR));
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      IBusSimplePlugin_fetchPc_pcReg <= 32'h80000000;
      IBusSimplePlugin_fetchPc_correctionReg <= 1'b0;
      IBusSimplePlugin_fetchPc_booted <= 1'b0;
      IBusSimplePlugin_fetchPc_inc <= 1'b0;
      IBusSimplePlugin_decodePc_pcReg <= 32'h80000000;
      _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid <= 1'b0;
      _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid <= 1'b0;
      IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
      IBusSimplePlugin_decompressor_throw2BytesReg <= 1'b0;
      _zz_IBusSimplePlugin_injector_decodeInput_valid <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusSimplePlugin_pending_value <= 3'b000;
      IBusSimplePlugin_cmdFork_cmdKeep <= 1'b0;
      IBusSimplePlugin_cmdFork_cmdFired <= 1'b0;
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= 3'b000;
      CsrPlugin_mtvec_base <= 30'h20000000;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_mcycle <= 64'h0;
      CsrPlugin_minstret <= 64'h0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_lastStageWasWfi <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      _zz_5 <= 1'b1;
      memory_MulDivIterativePlugin_mul_counter_value <= 6'h0;
      memory_MulDivIterativePlugin_div_counter_value <= 6'h0;
      HazardSimplePlugin_writeBackBuffer_valid <= 1'b0;
      DebugPlugin_resetIt <= 1'b0;
      DebugPlugin_haltIt <= 1'b0;
      DebugPlugin_stepIt <= 1'b0;
      DebugPlugin_godmode <= 1'b0;
      DebugPlugin_haltedByBreak <= 1'b0;
      DebugPlugin_debugUsed <= 1'b0;
      DebugPlugin_disableEbreak <= 1'b0;
      DebugPlugin_hardwareBreakpoints_0_valid <= 1'b0;
      DebugPlugin_hardwareBreakpoints_1_valid <= 1'b0;
      DebugPlugin_hardwareBreakpoints_2_valid <= 1'b0;
      _zz_6 <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      IBusSimplePlugin_injector_port_state <= 3'b000;
    end else begin
      if(IBusSimplePlugin_fetchPc_correction) begin
        IBusSimplePlugin_fetchPc_correctionReg <= 1'b1;
      end
      if(IBusSimplePlugin_fetchPc_output_fire) begin
        IBusSimplePlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusSimplePlugin_fetchPc_booted <= 1'b1;
      if(when_Fetcher_l133) begin
        IBusSimplePlugin_fetchPc_inc <= 1'b0;
      end
      if(IBusSimplePlugin_fetchPc_output_fire) begin
        IBusSimplePlugin_fetchPc_inc <= 1'b1;
      end
      if(when_Fetcher_l133_1) begin
        IBusSimplePlugin_fetchPc_inc <= 1'b0;
      end
      if(when_Fetcher_l160) begin
        IBusSimplePlugin_fetchPc_pcReg <= IBusSimplePlugin_fetchPc_pc;
      end
      if(when_Fetcher_l182) begin
        IBusSimplePlugin_decodePc_pcReg <= IBusSimplePlugin_decodePc_pcPlus;
      end
      if(when_Fetcher_l194) begin
        IBusSimplePlugin_decodePc_pcReg <= IBusSimplePlugin_jump_pcLoad_payload;
      end
      if(IBusSimplePlugin_iBusRsp_flush) begin
        _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid <= 1'b0;
      end
      if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
        _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid <= (IBusSimplePlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusSimplePlugin_iBusRsp_flush) begin
        _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid <= 1'b0;
      end
      if(IBusSimplePlugin_iBusRsp_stages_1_output_ready) begin
        _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_valid <= (IBusSimplePlugin_iBusRsp_stages_1_output_valid && (! IBusSimplePlugin_iBusRsp_flush));
      end
      if(IBusSimplePlugin_decompressor_output_fire) begin
        IBusSimplePlugin_decompressor_throw2BytesReg <= ((((! IBusSimplePlugin_decompressor_unaligned) && IBusSimplePlugin_decompressor_isInputLowRvc) && IBusSimplePlugin_decompressor_isInputHighRvc) || (IBusSimplePlugin_decompressor_bufferValid && IBusSimplePlugin_decompressor_isInputHighRvc));
      end
      if(when_Fetcher_l285) begin
        IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
      end
      if(when_Fetcher_l288) begin
        if(IBusSimplePlugin_decompressor_bufferFill) begin
          IBusSimplePlugin_decompressor_bufferValid <= 1'b1;
        end
      end
      if(when_Fetcher_l293) begin
        IBusSimplePlugin_decompressor_throw2BytesReg <= 1'b0;
        IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
      end
      if(decode_arbitration_removeIt) begin
        _zz_IBusSimplePlugin_injector_decodeInput_valid <= 1'b0;
      end
      if(IBusSimplePlugin_decompressor_output_ready) begin
        _zz_IBusSimplePlugin_injector_decodeInput_valid <= (IBusSimplePlugin_decompressor_output_valid && (! IBusSimplePlugin_externalFlush));
      end
      if(when_Fetcher_l331) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if(when_Fetcher_l331_1) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= IBusSimplePlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(when_Fetcher_l331_2) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= IBusSimplePlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(when_Fetcher_l331_3) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= IBusSimplePlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      IBusSimplePlugin_pending_value <= IBusSimplePlugin_pending_next;
      if(IBusSimplePlugin_cmdFork_enterTheMarket) begin
        IBusSimplePlugin_cmdFork_cmdKeep <= 1'b1;
      end
      if(IBusSimplePlugin_cmd_ready) begin
        IBusSimplePlugin_cmdFork_cmdKeep <= 1'b0;
      end
      if(IBusSimplePlugin_cmd_fire) begin
        IBusSimplePlugin_cmdFork_cmdFired <= 1'b1;
      end
      if(IBusSimplePlugin_iBusRsp_stages_1_input_ready) begin
        IBusSimplePlugin_cmdFork_cmdFired <= 1'b0;
      end
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter - _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter);
      if(IBusSimplePlugin_iBusRsp_flush) begin
        IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= IBusSimplePlugin_pending_next;
      end
      CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
      if(writeBack_arbitration_isFiring) begin
        CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
      end
      if(when_CsrPlugin_l1259) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if(when_CsrPlugin_l1259_1) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if(when_CsrPlugin_l1259_2) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if(when_CsrPlugin_l1259_3) begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(when_CsrPlugin_l1296) begin
        if(when_CsrPlugin_l1302) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(when_CsrPlugin_l1302_1) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(when_CsrPlugin_l1302_2) begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      CsrPlugin_lastStageWasWfi <= (writeBack_arbitration_isFiring && (writeBack_ENV_CTRL == EnvCtrlEnum_WFI));
      if(CsrPlugin_pipelineLiberator_active) begin
        if(when_CsrPlugin_l1335) begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if(when_CsrPlugin_l1335_1) begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if(when_CsrPlugin_l1335_2) begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(when_CsrPlugin_l1340) begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump) begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(when_CsrPlugin_l1390) begin
        if(when_CsrPlugin_l1398) begin
          case(CsrPlugin_targetPrivilege)
            2'b11 : begin
              CsrPlugin_mstatus_MIE <= 1'b0;
              CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
              CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
            end
            default : begin
            end
          endcase
        end
      end
      if(when_CsrPlugin_l1456) begin
        case(switch_CsrPlugin_l1460)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= ((|{_zz_when_CsrPlugin_l1302_2,{_zz_when_CsrPlugin_l1302_1,_zz_when_CsrPlugin_l1302}}) || CsrPlugin_thirdPartyWake);
      _zz_5 <= 1'b0;
      memory_MulDivIterativePlugin_mul_counter_value <= memory_MulDivIterativePlugin_mul_counter_valueNext;
      memory_MulDivIterativePlugin_div_counter_value <= memory_MulDivIterativePlugin_div_counter_valueNext;
      HazardSimplePlugin_writeBackBuffer_valid <= HazardSimplePlugin_writeBackWrites_valid;
      if(when_DebugPlugin_l238) begin
        DebugPlugin_godmode <= 1'b1;
      end
      if(debug_bus_cmd_valid) begin
        DebugPlugin_debugUsed <= 1'b1;
      end
      if(debug_bus_cmd_valid) begin
        case(switch_DebugPlugin_l280)
          6'h0 : begin
            if(debug_bus_cmd_payload_wr) begin
              DebugPlugin_stepIt <= debug_bus_cmd_payload_data[4];
              if(when_DebugPlugin_l284) begin
                DebugPlugin_resetIt <= 1'b1;
              end
              if(when_DebugPlugin_l284_1) begin
                DebugPlugin_resetIt <= 1'b0;
              end
              if(when_DebugPlugin_l285) begin
                DebugPlugin_haltIt <= 1'b1;
              end
              if(when_DebugPlugin_l285_1) begin
                DebugPlugin_haltIt <= 1'b0;
              end
              if(when_DebugPlugin_l286) begin
                DebugPlugin_haltedByBreak <= 1'b0;
              end
              if(when_DebugPlugin_l287) begin
                DebugPlugin_godmode <= 1'b0;
              end
              if(when_DebugPlugin_l288) begin
                DebugPlugin_disableEbreak <= 1'b1;
              end
              if(when_DebugPlugin_l288_1) begin
                DebugPlugin_disableEbreak <= 1'b0;
              end
            end
          end
          6'h10 : begin
            if(debug_bus_cmd_payload_wr) begin
              DebugPlugin_hardwareBreakpoints_0_valid <= debug_bus_cmd_payload_data[0];
            end
          end
          6'h11 : begin
            if(debug_bus_cmd_payload_wr) begin
              DebugPlugin_hardwareBreakpoints_1_valid <= debug_bus_cmd_payload_data[0];
            end
          end
          6'h12 : begin
            if(debug_bus_cmd_payload_wr) begin
              DebugPlugin_hardwareBreakpoints_2_valid <= debug_bus_cmd_payload_data[0];
            end
          end
          default : begin
          end
        endcase
      end
      if(when_DebugPlugin_l308) begin
        if(when_DebugPlugin_l311) begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(when_DebugPlugin_l324) begin
        if(decode_arbitration_isValid) begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
      _zz_6 <= (DebugPlugin_stepIt && decode_arbitration_isFiring);
      if(when_Pipeline_l151) begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154) begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(when_Pipeline_l151_1) begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_1) begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(when_Pipeline_l151_2) begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_2) begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      case(IBusSimplePlugin_injector_port_state)
        3'b000 : begin
          if(DebugPlugin_injectionPort_valid) begin
            IBusSimplePlugin_injector_port_state <= 3'b001;
          end
        end
        3'b001 : begin
          IBusSimplePlugin_injector_port_state <= 3'b010;
        end
        3'b010 : begin
          IBusSimplePlugin_injector_port_state <= 3'b011;
        end
        3'b011 : begin
          if(when_Fetcher_l391) begin
            IBusSimplePlugin_injector_port_state <= 3'b100;
          end
        end
        3'b100 : begin
          IBusSimplePlugin_injector_port_state <= 3'b000;
        end
        default : begin
        end
      endcase
      if(execute_CsrPlugin_csr_768) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mstatus_MPIE <= CsrPlugin_csrMapping_writeDataSignal[7];
          CsrPlugin_mstatus_MIE <= CsrPlugin_csrMapping_writeDataSignal[3];
          case(switch_CsrPlugin_l1031)
            2'b11 : begin
              CsrPlugin_mstatus_MPP <= 2'b11;
            end
            default : begin
            end
          endcase
        end
      end
      if(execute_CsrPlugin_csr_772) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mie_MEIE <= CsrPlugin_csrMapping_writeDataSignal[11];
          CsrPlugin_mie_MTIE <= CsrPlugin_csrMapping_writeDataSignal[7];
          CsrPlugin_mie_MSIE <= CsrPlugin_csrMapping_writeDataSignal[3];
        end
      end
      if(execute_CsrPlugin_csr_773) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mtvec_base <= CsrPlugin_csrMapping_writeDataSignal[31 : 2];
        end
      end
      if(execute_CsrPlugin_csr_2816) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mcycle[31 : 0] <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
        end
      end
      if(execute_CsrPlugin_csr_2944) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_mcycle[63 : 32] <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
        end
      end
      if(execute_CsrPlugin_csr_2818) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_minstret[31 : 0] <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
        end
      end
      if(execute_CsrPlugin_csr_2946) begin
        if(execute_CsrPlugin_writeEnable) begin
          CsrPlugin_minstret[63 : 32] <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
        end
      end
    end
  end

  always @(posedge clk) begin
    if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
      _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload <= IBusSimplePlugin_iBusRsp_stages_0_output_payload;
    end
    if(IBusSimplePlugin_iBusRsp_stages_1_output_ready) begin
      _zz_IBusSimplePlugin_iBusRsp_stages_1_output_m2sPipe_payload <= IBusSimplePlugin_iBusRsp_stages_1_output_payload;
    end
    if(IBusSimplePlugin_decompressor_input_valid) begin
      IBusSimplePlugin_decompressor_bufferValidLatch <= IBusSimplePlugin_decompressor_bufferValid;
    end
    if(IBusSimplePlugin_decompressor_input_valid) begin
      IBusSimplePlugin_decompressor_throw2BytesLatch <= IBusSimplePlugin_decompressor_throw2Bytes;
    end
    if(when_Fetcher_l288) begin
      IBusSimplePlugin_decompressor_bufferData <= IBusSimplePlugin_decompressor_input_payload_rsp_inst[31 : 16];
    end
    if(IBusSimplePlugin_decompressor_output_ready) begin
      _zz_IBusSimplePlugin_injector_decodeInput_payload_pc <= IBusSimplePlugin_decompressor_output_payload_pc;
      _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_error <= IBusSimplePlugin_decompressor_output_payload_rsp_error;
      _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst <= IBusSimplePlugin_decompressor_output_payload_rsp_inst;
      _zz_IBusSimplePlugin_injector_decodeInput_payload_isRvc <= IBusSimplePlugin_decompressor_output_payload_isRvc;
    end
    if(IBusSimplePlugin_injector_decodeInput_ready) begin
      IBusSimplePlugin_injector_formal_rawInDecode <= IBusSimplePlugin_decompressor_raw;
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    if(decodeExceptionPort_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= decodeExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= decodeExceptionPort_payload_badAddr;
    end
    if(CsrPlugin_selfException_valid) begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= CsrPlugin_selfException_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= CsrPlugin_selfException_payload_badAddr;
    end
    if(when_CsrPlugin_l1296) begin
      if(when_CsrPlugin_l1302) begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(when_CsrPlugin_l1302_1) begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(when_CsrPlugin_l1302_2) begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(when_CsrPlugin_l1390) begin
      if(when_CsrPlugin_l1398) begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
            CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
            CsrPlugin_mepc <= writeBack_PC;
            if(CsrPlugin_hadException) begin
              CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
            end
          end
          default : begin
          end
        endcase
      end
    end
    if(when_MulDivIterativePlugin_l96) begin
      if(when_MulDivIterativePlugin_l100) begin
        memory_MulDivIterativePlugin_rs2 <= (memory_MulDivIterativePlugin_rs2 >>> 1);
        memory_MulDivIterativePlugin_accumulator <= ({_zz_memory_MulDivIterativePlugin_accumulator,memory_MulDivIterativePlugin_accumulator[31 : 0]} >>> 1'd1);
      end
    end
    if(when_MulDivIterativePlugin_l126) begin
      memory_MulDivIterativePlugin_div_done <= 1'b1;
    end
    if(when_MulDivIterativePlugin_l126_1) begin
      memory_MulDivIterativePlugin_div_done <= 1'b0;
    end
    if(when_MulDivIterativePlugin_l128) begin
      if(when_MulDivIterativePlugin_l132) begin
        memory_MulDivIterativePlugin_rs1[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outNumerator;
        memory_MulDivIterativePlugin_accumulator[31 : 0] <= memory_MulDivIterativePlugin_div_stage_0_outRemainder;
        if(when_MulDivIterativePlugin_l151) begin
          memory_MulDivIterativePlugin_div_result <= _zz_memory_MulDivIterativePlugin_div_result_1[31:0];
        end
      end
    end
    if(when_MulDivIterativePlugin_l162) begin
      memory_MulDivIterativePlugin_accumulator <= 65'h0;
      memory_MulDivIterativePlugin_rs1 <= ((_zz_memory_MulDivIterativePlugin_rs1 ? (~ _zz_memory_MulDivIterativePlugin_rs1_1) : _zz_memory_MulDivIterativePlugin_rs1_1) + _zz_memory_MulDivIterativePlugin_rs1_2);
      memory_MulDivIterativePlugin_rs2 <= ((_zz_memory_MulDivIterativePlugin_rs2 ? (~ execute_RS2) : execute_RS2) + _zz_memory_MulDivIterativePlugin_rs2_1);
      memory_MulDivIterativePlugin_div_needRevert <= ((_zz_memory_MulDivIterativePlugin_rs1 ^ (_zz_memory_MulDivIterativePlugin_rs2 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    HazardSimplePlugin_writeBackBuffer_payload_address <= HazardSimplePlugin_writeBackWrites_payload_address;
    HazardSimplePlugin_writeBackBuffer_payload_data <= HazardSimplePlugin_writeBackWrites_payload_data;
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready) begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipBusy <= ((|{writeBack_arbitration_isValid,{memory_arbitration_isValid,{execute_arbitration_isValid,decode_arbitration_isValid}}}) || IBusSimplePlugin_incomingInstruction);
    if(writeBack_arbitration_isValid) begin
      DebugPlugin_busReadDataReg <= _zz_decode_RS2;
    end
    _zz_when_DebugPlugin_l257 <= debug_bus_cmd_payload_address[2];
    if(debug_bus_cmd_valid) begin
      case(switch_DebugPlugin_l280)
        6'h10 : begin
          if(debug_bus_cmd_payload_wr) begin
            DebugPlugin_hardwareBreakpoints_0_pc <= debug_bus_cmd_payload_data[31 : 1];
          end
        end
        6'h11 : begin
          if(debug_bus_cmd_payload_wr) begin
            DebugPlugin_hardwareBreakpoints_1_pc <= debug_bus_cmd_payload_data[31 : 1];
          end
        end
        6'h12 : begin
          if(debug_bus_cmd_payload_wr) begin
            DebugPlugin_hardwareBreakpoints_2_pc <= debug_bus_cmd_payload_data[31 : 1];
          end
        end
        default : begin
        end
      endcase
    end
    if(when_DebugPlugin_l308) begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
    if(when_Pipeline_l124) begin
      decode_to_execute_PC <= _zz_decode_to_execute_PC;
    end
    if(when_Pipeline_l124_1) begin
      execute_to_memory_PC <= execute_PC;
    end
    if(when_Pipeline_l124_2) begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if(when_Pipeline_l124_3) begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if(when_Pipeline_l124_4) begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if(when_Pipeline_l124_5) begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if(when_Pipeline_l124_6) begin
      decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_7) begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_8) begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_memory_to_writeBack_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_9) begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if(when_Pipeline_l124_10) begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if(when_Pipeline_l124_11) begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if(when_Pipeline_l124_12) begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_13) begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_14) begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_15) begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_16) begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_17) begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if(when_Pipeline_l124_18) begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_19) begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_20) begin
      decode_to_execute_MEMORY_STORE <= decode_MEMORY_STORE;
    end
    if(when_Pipeline_l124_21) begin
      execute_to_memory_MEMORY_STORE <= execute_MEMORY_STORE;
    end
    if(when_Pipeline_l124_22) begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if(when_Pipeline_l124_23) begin
      decode_to_execute_ENV_CTRL <= _zz_decode_to_execute_ENV_CTRL;
    end
    if(when_Pipeline_l124_24) begin
      execute_to_memory_ENV_CTRL <= _zz_execute_to_memory_ENV_CTRL;
    end
    if(when_Pipeline_l124_25) begin
      memory_to_writeBack_ENV_CTRL <= _zz_memory_to_writeBack_ENV_CTRL;
    end
    if(when_Pipeline_l124_26) begin
      decode_to_execute_ALU_CTRL <= _zz_decode_to_execute_ALU_CTRL;
    end
    if(when_Pipeline_l124_27) begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if(when_Pipeline_l124_28) begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_decode_to_execute_ALU_BITWISE_CTRL;
    end
    if(when_Pipeline_l124_29) begin
      decode_to_execute_SHIFT_CTRL <= _zz_decode_to_execute_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_30) begin
      execute_to_memory_SHIFT_CTRL <= _zz_execute_to_memory_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_31) begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if(when_Pipeline_l124_32) begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if(when_Pipeline_l124_33) begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if(when_Pipeline_l124_34) begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if(when_Pipeline_l124_35) begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if(when_Pipeline_l124_36) begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if(when_Pipeline_l124_37) begin
      decode_to_execute_BRANCH_CTRL <= _zz_decode_to_execute_BRANCH_CTRL;
    end
    if(when_Pipeline_l124_38) begin
      decode_to_execute_RS1 <= _zz_decode_to_execute_RS1;
    end
    if(when_Pipeline_l124_39) begin
      decode_to_execute_RS2 <= _zz_decode_to_execute_RS2;
    end
    if(when_Pipeline_l124_40) begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if(when_Pipeline_l124_41) begin
      decode_to_execute_SRC1 <= decode_SRC1;
    end
    if(when_Pipeline_l124_42) begin
      decode_to_execute_SRC2 <= decode_SRC2;
    end
    if(when_Pipeline_l124_43) begin
      decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
    end
    if(when_Pipeline_l124_44) begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if(when_Pipeline_l124_45) begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_decode_RS2_1;
    end
    if(when_Pipeline_l124_46) begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_decode_RS2_2;
    end
    if(when_Pipeline_l124_47) begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if(when_Pipeline_l124_48) begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if(when_Pipeline_l124_49) begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if(when_Fetcher_l411) begin
      _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst <= DebugPlugin_injectionPort_payload;
    end
    if(when_CsrPlugin_l1669) begin
      execute_CsrPlugin_csr_3857 <= (decode_INSTRUCTION[31 : 20] == 12'hf11);
    end
    if(when_CsrPlugin_l1669_1) begin
      execute_CsrPlugin_csr_3858 <= (decode_INSTRUCTION[31 : 20] == 12'hf12);
    end
    if(when_CsrPlugin_l1669_2) begin
      execute_CsrPlugin_csr_3859 <= (decode_INSTRUCTION[31 : 20] == 12'hf13);
    end
    if(when_CsrPlugin_l1669_3) begin
      execute_CsrPlugin_csr_3860 <= (decode_INSTRUCTION[31 : 20] == 12'hf14);
    end
    if(when_CsrPlugin_l1669_4) begin
      execute_CsrPlugin_csr_769 <= (decode_INSTRUCTION[31 : 20] == 12'h301);
    end
    if(when_CsrPlugin_l1669_5) begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if(when_CsrPlugin_l1669_6) begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if(when_CsrPlugin_l1669_7) begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if(when_CsrPlugin_l1669_8) begin
      execute_CsrPlugin_csr_773 <= (decode_INSTRUCTION[31 : 20] == 12'h305);
    end
    if(when_CsrPlugin_l1669_9) begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if(when_CsrPlugin_l1669_10) begin
      execute_CsrPlugin_csr_832 <= (decode_INSTRUCTION[31 : 20] == 12'h340);
    end
    if(when_CsrPlugin_l1669_11) begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if(when_CsrPlugin_l1669_12) begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if(when_CsrPlugin_l1669_13) begin
      execute_CsrPlugin_csr_2816 <= (decode_INSTRUCTION[31 : 20] == 12'hb00);
    end
    if(when_CsrPlugin_l1669_14) begin
      execute_CsrPlugin_csr_2944 <= (decode_INSTRUCTION[31 : 20] == 12'hb80);
    end
    if(when_CsrPlugin_l1669_15) begin
      execute_CsrPlugin_csr_2818 <= (decode_INSTRUCTION[31 : 20] == 12'hb02);
    end
    if(when_CsrPlugin_l1669_16) begin
      execute_CsrPlugin_csr_2946 <= (decode_INSTRUCTION[31 : 20] == 12'hb82);
    end
    if(when_CsrPlugin_l1669_17) begin
      execute_CsrPlugin_csr_3072 <= (decode_INSTRUCTION[31 : 20] == 12'hc00);
    end
    if(when_CsrPlugin_l1669_18) begin
      execute_CsrPlugin_csr_3200 <= (decode_INSTRUCTION[31 : 20] == 12'hc80);
    end
    if(when_CsrPlugin_l1669_19) begin
      execute_CsrPlugin_csr_3074 <= (decode_INSTRUCTION[31 : 20] == 12'hc02);
    end
    if(when_CsrPlugin_l1669_20) begin
      execute_CsrPlugin_csr_3202 <= (decode_INSTRUCTION[31 : 20] == 12'hc82);
    end
    if(execute_CsrPlugin_csr_836) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mip_MSIP <= CsrPlugin_csrMapping_writeDataSignal[3];
      end
    end
    if(execute_CsrPlugin_csr_833) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mepc <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_832) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mscratch <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
      end
    end
    if(execute_CsrPlugin_csr_834) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mcause_interrupt <= CsrPlugin_csrMapping_writeDataSignal[31];
        CsrPlugin_mcause_exceptionCode <= CsrPlugin_csrMapping_writeDataSignal[3 : 0];
      end
    end
    if(execute_CsrPlugin_csr_835) begin
      if(execute_CsrPlugin_writeEnable) begin
        CsrPlugin_mtval <= CsrPlugin_csrMapping_writeDataSignal[31 : 0];
      end
    end
  end


endmodule

//StreamFifoLowLatency replaced by StreamFifoLowLatency_4

module StreamArbiter (
  input  wire          io_inputs_0_valid,
  output wire          io_inputs_0_ready,
  input  wire [19:0]   io_inputs_0_payload_addr,
  input  wire [3:0]    io_inputs_0_payload_id,
  input  wire [7:0]    io_inputs_0_payload_len,
  input  wire [2:0]    io_inputs_0_payload_size,
  input  wire [1:0]    io_inputs_0_payload_burst,
  input  wire          io_inputs_0_payload_write,
  output wire          io_output_valid,
  input  wire          io_output_ready,
  output wire [19:0]   io_output_payload_addr,
  output wire [3:0]    io_output_payload_id,
  output wire [7:0]    io_output_payload_len,
  output wire [2:0]    io_output_payload_size,
  output wire [1:0]    io_output_payload_burst,
  output wire          io_output_payload_write,
  output wire [0:0]    io_chosenOH,
  input  wire          clk,
  input  wire          reset_n
);

  wire       [1:0]    _zz__zz_maskProposal_0_2;
  wire       [1:0]    _zz__zz_maskProposal_0_2_1;
  wire       [0:0]    _zz__zz_maskProposal_0_2_2;
  wire       [0:0]    _zz_maskProposal_0_3;
  reg                 locked;
  wire                maskProposal_0;
  reg                 maskLocked_0;
  wire                maskRouted_0;
  wire       [0:0]    _zz_maskProposal_0;
  wire       [1:0]    _zz_maskProposal_0_1;
  wire       [1:0]    _zz_maskProposal_0_2;
  wire                io_output_fire;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = maskLocked_0;
  assign _zz__zz_maskProposal_0_2_1 = {1'd0, _zz__zz_maskProposal_0_2_2};
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[1 : 1] | _zz_maskProposal_0_2[0 : 0]);
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign _zz_maskProposal_0 = io_inputs_0_valid;
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = (io_inputs_0_valid && maskRouted_0);
  assign io_output_payload_addr = io_inputs_0_payload_addr;
  assign io_output_payload_id = io_inputs_0_payload_id;
  assign io_output_payload_len = io_inputs_0_payload_len;
  assign io_output_payload_size = io_inputs_0_payload_size;
  assign io_output_payload_burst = io_inputs_0_payload_burst;
  assign io_output_payload_write = io_inputs_0_payload_write;
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_chosenOH = maskRouted_0;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule

//StreamFifoLowLatency_1 replaced by StreamFifoLowLatency_4

//StreamArbiter_1 replaced by StreamArbiter_4

//StreamFifoLowLatency_2 replaced by StreamFifoLowLatency_4

//StreamArbiter_2 replaced by StreamArbiter_4

//StreamFifoLowLatency_3 replaced by StreamFifoLowLatency_4

//StreamArbiter_3 replaced by StreamArbiter_4

module StreamFifoLowLatency_4 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  input  wire          io_flush,
  output wire [2:0]    io_occupancy,
  output wire [2:0]    io_availability,
  input  wire          clk,
  input  wire          reset_n
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire       [2:0]    fifo_io_occupancy;
  wire       [2:0]    fifo_io_availability;

  StreamFifo_6 fifo (
    .io_push_valid   (io_push_valid            ), //i
    .io_push_ready   (fifo_io_push_ready       ), //o
    .io_pop_valid    (fifo_io_pop_valid        ), //o
    .io_pop_ready    (io_pop_ready             ), //i
    .io_flush        (io_flush                 ), //i
    .io_occupancy    (fifo_io_occupancy[2:0]   ), //o
    .io_availability (fifo_io_availability[2:0]), //o
    .clk             (clk                      ), //i
    .reset_n         (reset_n                  )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

module StreamArbiter_4 (
  input  wire          io_inputs_0_valid,
  output wire          io_inputs_0_ready,
  input  wire [31:0]   io_inputs_0_payload_addr,
  input  wire [2:0]    io_inputs_0_payload_id,
  input  wire [3:0]    io_inputs_0_payload_region,
  input  wire [7:0]    io_inputs_0_payload_len,
  input  wire [2:0]    io_inputs_0_payload_size,
  input  wire [1:0]    io_inputs_0_payload_burst,
  input  wire [0:0]    io_inputs_0_payload_lock,
  input  wire [3:0]    io_inputs_0_payload_cache,
  input  wire [3:0]    io_inputs_0_payload_qos,
  input  wire [2:0]    io_inputs_0_payload_prot,
  input  wire          io_inputs_0_payload_write,
  input  wire          io_inputs_1_valid,
  output wire          io_inputs_1_ready,
  input  wire [31:0]   io_inputs_1_payload_addr,
  input  wire [2:0]    io_inputs_1_payload_id,
  input  wire [3:0]    io_inputs_1_payload_region,
  input  wire [7:0]    io_inputs_1_payload_len,
  input  wire [2:0]    io_inputs_1_payload_size,
  input  wire [1:0]    io_inputs_1_payload_burst,
  input  wire [0:0]    io_inputs_1_payload_lock,
  input  wire [3:0]    io_inputs_1_payload_cache,
  input  wire [3:0]    io_inputs_1_payload_qos,
  input  wire [2:0]    io_inputs_1_payload_prot,
  input  wire          io_inputs_1_payload_write,
  output wire          io_output_valid,
  input  wire          io_output_ready,
  output wire [31:0]   io_output_payload_addr,
  output wire [2:0]    io_output_payload_id,
  output wire [3:0]    io_output_payload_region,
  output wire [7:0]    io_output_payload_len,
  output wire [2:0]    io_output_payload_size,
  output wire [1:0]    io_output_payload_burst,
  output wire [0:0]    io_output_payload_lock,
  output wire [3:0]    io_output_payload_cache,
  output wire [3:0]    io_output_payload_qos,
  output wire [2:0]    io_output_payload_prot,
  output wire          io_output_payload_write,
  output wire [0:0]    io_chosen,
  output wire [1:0]    io_chosenOH,
  input  wire          clk,
  input  wire          reset_n
);

  wire       [3:0]    _zz__zz_maskProposal_0_2;
  wire       [3:0]    _zz__zz_maskProposal_0_2_1;
  wire       [1:0]    _zz__zz_maskProposal_0_2_2;
  reg                 locked;
  wire                maskProposal_0;
  wire                maskProposal_1;
  reg                 maskLocked_0;
  reg                 maskLocked_1;
  wire                maskRouted_0;
  wire                maskRouted_1;
  wire       [1:0]    _zz_maskProposal_0;
  wire       [3:0]    _zz_maskProposal_0_1;
  wire       [3:0]    _zz_maskProposal_0_2;
  wire       [1:0]    _zz_maskProposal_0_3;
  wire                io_output_fire;
  wire                _zz_io_chosen;

  assign _zz__zz_maskProposal_0_2 = (_zz_maskProposal_0_1 - _zz__zz_maskProposal_0_2_1);
  assign _zz__zz_maskProposal_0_2_2 = {maskLocked_0,maskLocked_1};
  assign _zz__zz_maskProposal_0_2_1 = {2'd0, _zz__zz_maskProposal_0_2_2};
  assign maskRouted_0 = (locked ? maskLocked_0 : maskProposal_0);
  assign maskRouted_1 = (locked ? maskLocked_1 : maskProposal_1);
  assign _zz_maskProposal_0 = {io_inputs_1_valid,io_inputs_0_valid};
  assign _zz_maskProposal_0_1 = {_zz_maskProposal_0,_zz_maskProposal_0};
  assign _zz_maskProposal_0_2 = (_zz_maskProposal_0_1 & (~ _zz__zz_maskProposal_0_2));
  assign _zz_maskProposal_0_3 = (_zz_maskProposal_0_2[3 : 2] | _zz_maskProposal_0_2[1 : 0]);
  assign maskProposal_0 = _zz_maskProposal_0_3[0];
  assign maskProposal_1 = _zz_maskProposal_0_3[1];
  assign io_output_fire = (io_output_valid && io_output_ready);
  assign io_output_valid = ((io_inputs_0_valid && maskRouted_0) || (io_inputs_1_valid && maskRouted_1));
  assign io_output_payload_addr = (maskRouted_0 ? io_inputs_0_payload_addr : io_inputs_1_payload_addr);
  assign io_output_payload_id = (maskRouted_0 ? io_inputs_0_payload_id : io_inputs_1_payload_id);
  assign io_output_payload_region = (maskRouted_0 ? io_inputs_0_payload_region : io_inputs_1_payload_region);
  assign io_output_payload_len = (maskRouted_0 ? io_inputs_0_payload_len : io_inputs_1_payload_len);
  assign io_output_payload_size = (maskRouted_0 ? io_inputs_0_payload_size : io_inputs_1_payload_size);
  assign io_output_payload_burst = (maskRouted_0 ? io_inputs_0_payload_burst : io_inputs_1_payload_burst);
  assign io_output_payload_lock = (maskRouted_0 ? io_inputs_0_payload_lock : io_inputs_1_payload_lock);
  assign io_output_payload_cache = (maskRouted_0 ? io_inputs_0_payload_cache : io_inputs_1_payload_cache);
  assign io_output_payload_qos = (maskRouted_0 ? io_inputs_0_payload_qos : io_inputs_1_payload_qos);
  assign io_output_payload_prot = (maskRouted_0 ? io_inputs_0_payload_prot : io_inputs_1_payload_prot);
  assign io_output_payload_write = (maskRouted_0 ? io_inputs_0_payload_write : io_inputs_1_payload_write);
  assign io_inputs_0_ready = (maskRouted_0 && io_output_ready);
  assign io_inputs_1_ready = (maskRouted_1 && io_output_ready);
  assign io_chosenOH = {maskRouted_1,maskRouted_0};
  assign _zz_io_chosen = io_chosenOH[1];
  assign io_chosen = _zz_io_chosen;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      locked <= 1'b0;
      maskLocked_0 <= 1'b0;
      maskLocked_1 <= 1'b1;
    end else begin
      if(io_output_valid) begin
        maskLocked_0 <= maskRouted_0;
        maskLocked_1 <= maskRouted_1;
      end
      if(io_output_valid) begin
        locked <= 1'b1;
      end
      if(io_output_fire) begin
        locked <= 1'b0;
      end
    end
  end


endmodule

module Axi4SharedErrorSlave (
  input  wire          io_axi_arw_valid,
  output wire          io_axi_arw_ready,
  input  wire [31:0]   io_axi_arw_payload_addr,
  input  wire [2:0]    io_axi_arw_payload_size,
  input  wire [3:0]    io_axi_arw_payload_cache,
  input  wire [2:0]    io_axi_arw_payload_prot,
  input  wire          io_axi_arw_payload_write,
  input  wire          io_axi_w_valid,
  output wire          io_axi_w_ready,
  input  wire [31:0]   io_axi_w_payload_data,
  input  wire [3:0]    io_axi_w_payload_strb,
  input  wire          io_axi_w_payload_last,
  output wire          io_axi_b_valid,
  input  wire          io_axi_b_ready,
  output wire [1:0]    io_axi_b_payload_resp,
  output wire          io_axi_r_valid,
  input  wire          io_axi_r_ready,
  output wire [31:0]   io_axi_r_payload_data,
  output wire [1:0]    io_axi_r_payload_resp,
  output wire          io_axi_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 consumeData;
  reg                 sendReadRsp;
  reg                 sendWriteRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;
  wire                io_axi_arw_fire;
  wire                io_axi_w_fire;
  wire                when_Axi4ErrorSlave_l92;
  wire                io_axi_b_fire;

  assign remainingZero = (remaining == 8'h0);
  assign io_axi_arw_ready = (! ((consumeData || sendWriteRsp) || sendReadRsp));
  assign io_axi_arw_fire = (io_axi_arw_valid && io_axi_arw_ready);
  assign io_axi_w_ready = consumeData;
  assign io_axi_w_fire = (io_axi_w_valid && io_axi_w_ready);
  assign when_Axi4ErrorSlave_l92 = (io_axi_w_fire && io_axi_w_payload_last);
  assign io_axi_b_valid = sendWriteRsp;
  assign io_axi_b_payload_resp = 2'b11;
  assign io_axi_b_fire = (io_axi_b_valid && io_axi_b_ready);
  assign io_axi_r_valid = sendReadRsp;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      consumeData <= 1'b0;
      sendReadRsp <= 1'b0;
      sendWriteRsp <= 1'b0;
    end else begin
      if(io_axi_arw_fire) begin
        consumeData <= io_axi_arw_payload_write;
        sendReadRsp <= (! io_axi_arw_payload_write);
      end
      if(when_Axi4ErrorSlave_l92) begin
        consumeData <= 1'b0;
        sendWriteRsp <= 1'b1;
      end
      if(io_axi_b_fire) begin
        sendWriteRsp <= 1'b0;
      end
      if(sendReadRsp) begin
        if(io_axi_r_ready) begin
          if(remainingZero) begin
            sendReadRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @(posedge clk) begin
    if(io_axi_arw_fire) begin
      remaining <= 8'h0;
    end
    if(sendReadRsp) begin
      if(io_axi_r_ready) begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

module Axi4ReadOnlyErrorSlave (
  input  wire          io_axi_ar_valid,
  output wire          io_axi_ar_ready,
  input  wire [31:0]   io_axi_ar_payload_addr,
  input  wire [3:0]    io_axi_ar_payload_cache,
  input  wire [2:0]    io_axi_ar_payload_prot,
  output wire          io_axi_r_valid,
  input  wire          io_axi_r_ready,
  output wire [31:0]   io_axi_r_payload_data,
  output wire [1:0]    io_axi_r_payload_resp,
  output wire          io_axi_r_payload_last,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 sendRsp;
  reg        [7:0]    remaining;
  wire                remainingZero;
  wire                io_axi_ar_fire;

  assign remainingZero = (remaining == 8'h0);
  assign io_axi_ar_ready = (! sendRsp);
  assign io_axi_ar_fire = (io_axi_ar_valid && io_axi_ar_ready);
  assign io_axi_r_valid = sendRsp;
  assign io_axi_r_payload_resp = 2'b11;
  assign io_axi_r_payload_last = remainingZero;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      sendRsp <= 1'b0;
    end else begin
      if(io_axi_ar_fire) begin
        sendRsp <= 1'b1;
      end
      if(sendRsp) begin
        if(io_axi_r_ready) begin
          if(remainingZero) begin
            sendRsp <= 1'b0;
          end
        end
      end
    end
  end

  always @(posedge clk) begin
    if(io_axi_ar_fire) begin
      remaining <= 8'h0;
    end
    if(sendRsp) begin
      if(io_axi_r_ready) begin
        remaining <= (remaining - 8'h01);
      end
    end
  end


endmodule

//StreamFifo_1 replaced by StreamFifo

module StreamFifo (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload,
  input  wire          io_flush,
  output wire [4:0]    io_occupancy,
  output wire [4:0]    io_availability,
  input  wire          clk,
  input  wire          reset_n
);

  reg        [7:0]    logic_ram_spinal_port1;
  reg                 _zz_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [4:0]    logic_ptr_push;
  reg        [4:0]    logic_ptr_pop;
  wire       [4:0]    logic_ptr_occupancy;
  wire       [4:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1248;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [3:0]    logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [3:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [3:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [3:0]    logic_pop_addressGen_rData;
  wire                when_Stream_l375;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [3:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [7:0]    logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [7:0]    logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [4:0]    logic_pop_sync_popReg;
  reg [7:0] logic_ram [0:15];

  always @(posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= logic_push_onRam_write_payload_data;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1248 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 5'h10) == 5'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[3:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[3:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l375) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l375 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (5'h10 - logic_ptr_occupancy);
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      logic_ptr_push <= 5'h0;
      logic_ptr_pop <= 5'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 5'h0;
    end else begin
      if(when_Stream_l1248) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 5'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 5'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 5'h0;
        logic_ptr_pop <= 5'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 5'h0;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module UartCtrl (
  input  wire [2:0]    io_config_frame_dataLength,
  input  wire [0:0]    io_config_frame_stop,
  input  wire [1:0]    io_config_frame_parity,
  input  wire [19:0]   io_config_clockDivider,
  input  wire          io_write_valid,
  output reg           io_write_ready,
  input  wire [7:0]    io_write_payload,
  output wire          io_read_valid,
  input  wire          io_read_ready,
  output wire [7:0]    io_read_payload,
  output wire          io_uart_txd,
  input  wire          io_uart_rxd,
  output wire          io_readError,
  input  wire          io_writeBreak,
  output wire          io_readBreak,
  input  wire          clk,
  input  wire          reset_n
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;

  wire                tx_io_write_ready;
  wire                tx_io_txd;
  wire                rx_io_read_valid;
  wire       [7:0]    rx_io_read_payload;
  wire                rx_io_rts;
  wire                rx_io_error;
  wire                rx_io_break;
  reg        [19:0]   clockDivider_counter;
  wire                clockDivider_tick;
  reg                 clockDivider_tickReg;
  reg                 io_write_thrown_valid;
  wire                io_write_thrown_ready;
  wire       [7:0]    io_write_thrown_payload;
  `ifndef SYNTHESIS
  reg [23:0] io_config_frame_stop_string;
  reg [31:0] io_config_frame_parity_string;
  `endif


  UartCtrlTx tx (
    .io_configFrame_dataLength (io_config_frame_dataLength[2:0]), //i
    .io_configFrame_stop       (io_config_frame_stop           ), //i
    .io_configFrame_parity     (io_config_frame_parity[1:0]    ), //i
    .io_samplingTick           (clockDivider_tickReg           ), //i
    .io_write_valid            (io_write_thrown_valid          ), //i
    .io_write_ready            (tx_io_write_ready              ), //o
    .io_write_payload          (io_write_thrown_payload[7:0]   ), //i
    .io_cts                    (1'b0                           ), //i
    .io_txd                    (tx_io_txd                      ), //o
    .io_break                  (io_writeBreak                  ), //i
    .clk                       (clk                            ), //i
    .reset_n                   (reset_n                        )  //i
  );
  UartCtrlRx rx (
    .io_configFrame_dataLength (io_config_frame_dataLength[2:0]), //i
    .io_configFrame_stop       (io_config_frame_stop           ), //i
    .io_configFrame_parity     (io_config_frame_parity[1:0]    ), //i
    .io_samplingTick           (clockDivider_tickReg           ), //i
    .io_read_valid             (rx_io_read_valid               ), //o
    .io_read_ready             (io_read_ready                  ), //i
    .io_read_payload           (rx_io_read_payload[7:0]        ), //o
    .io_rxd                    (io_uart_rxd                    ), //i
    .io_rts                    (rx_io_rts                      ), //o
    .io_error                  (rx_io_error                    ), //o
    .io_break                  (rx_io_break                    ), //o
    .clk                       (clk                            ), //i
    .reset_n                   (reset_n                        )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_config_frame_stop)
      UartStopType_ONE : io_config_frame_stop_string = "ONE";
      UartStopType_TWO : io_config_frame_stop_string = "TWO";
      default : io_config_frame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_config_frame_parity)
      UartParityType_NONE : io_config_frame_parity_string = "NONE";
      UartParityType_EVEN : io_config_frame_parity_string = "EVEN";
      UartParityType_ODD : io_config_frame_parity_string = "ODD ";
      default : io_config_frame_parity_string = "????";
    endcase
  end
  `endif

  assign clockDivider_tick = (clockDivider_counter == 20'h0);
  always @(*) begin
    io_write_thrown_valid = io_write_valid;
    if(rx_io_break) begin
      io_write_thrown_valid = 1'b0;
    end
  end

  always @(*) begin
    io_write_ready = io_write_thrown_ready;
    if(rx_io_break) begin
      io_write_ready = 1'b1;
    end
  end

  assign io_write_thrown_payload = io_write_payload;
  assign io_write_thrown_ready = tx_io_write_ready;
  assign io_read_valid = rx_io_read_valid;
  assign io_read_payload = rx_io_read_payload;
  assign io_uart_txd = tx_io_txd;
  assign io_readError = rx_io_error;
  assign io_readBreak = rx_io_break;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      clockDivider_counter <= 20'h0;
      clockDivider_tickReg <= 1'b0;
    end else begin
      clockDivider_tickReg <= clockDivider_tick;
      clockDivider_counter <= (clockDivider_counter - 20'h00001);
      if(clockDivider_tick) begin
        clockDivider_counter <= io_config_clockDivider;
      end
    end
  end


endmodule

module FlowCCUnsafeByToggle (
  input  wire          io_input_valid,
  input  wire          io_input_payload_last,
  input  wire [0:0]    io_input_payload_fragment,
  output wire          io_output_valid,
  output wire          io_output_payload_last,
  output wire [0:0]    io_output_payload_fragment,
  input  wire          io_jtag_tck,
  input  wire          clk,
  input  wire          reset_n
);

  wire                inputArea_target_buffercc_io_dataOut;
  reg                 inputArea_target;
  reg                 inputArea_data_last;
  reg        [0:0]    inputArea_data_fragment;
  wire                outputArea_target;
  reg                 outputArea_hit;
  wire                outputArea_flow_valid;
  wire                outputArea_flow_payload_last;
  wire       [0:0]    outputArea_flow_payload_fragment;
  reg                 outputArea_flow_m2sPipe_valid;
  (* async_reg = "true" *) reg                 outputArea_flow_m2sPipe_payload_last;
  (* async_reg = "true" *) reg        [0:0]    outputArea_flow_m2sPipe_payload_fragment;

  (* keep_hierarchy = "TRUE" *) BufferCC inputArea_target_buffercc (
    .io_dataIn  (inputArea_target                    ), //i
    .io_dataOut (inputArea_target_buffercc_io_dataOut), //o
    .clk        (clk                                 ), //i
    .reset_n    (reset_n                             )  //i
  );
  initial begin
  `ifndef SYNTHESIS
    inputArea_target = $urandom;
    outputArea_hit = $urandom;
  `endif
  end

  assign outputArea_target = inputArea_target_buffercc_io_dataOut;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_m2sPipe_valid;
  assign io_output_payload_last = outputArea_flow_m2sPipe_payload_last;
  assign io_output_payload_fragment = outputArea_flow_m2sPipe_payload_fragment;
  always @(posedge io_jtag_tck) begin
    if(io_input_valid) begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @(posedge clk) begin
    outputArea_hit <= outputArea_target;
    if(outputArea_flow_valid) begin
      outputArea_flow_m2sPipe_payload_last <= outputArea_flow_payload_last;
      outputArea_flow_m2sPipe_payload_fragment <= outputArea_flow_payload_fragment;
    end
  end

  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      outputArea_flow_m2sPipe_valid <= 1'b0;
    end else begin
      outputArea_flow_m2sPipe_valid <= outputArea_flow_valid;
    end
  end


endmodule

module StreamFifoLowLatency_5 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_error,
  input  wire [31:0]   io_push_payload_inst,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire          io_pop_payload_error,
  output wire [31:0]   io_pop_payload_inst,
  input  wire          io_flush,
  output wire [1:0]    io_occupancy,
  output wire [1:0]    io_availability,
  input  wire          clk,
  input  wire          reset_n
);

  wire                fifo_io_push_ready;
  wire                fifo_io_pop_valid;
  wire                fifo_io_pop_payload_error;
  wire       [31:0]   fifo_io_pop_payload_inst;
  wire       [1:0]    fifo_io_occupancy;
  wire       [1:0]    fifo_io_availability;

  StreamFifo_7 fifo (
    .io_push_valid         (io_push_valid                 ), //i
    .io_push_ready         (fifo_io_push_ready            ), //o
    .io_push_payload_error (io_push_payload_error         ), //i
    .io_push_payload_inst  (io_push_payload_inst[31:0]    ), //i
    .io_pop_valid          (fifo_io_pop_valid             ), //o
    .io_pop_ready          (io_pop_ready                  ), //i
    .io_pop_payload_error  (fifo_io_pop_payload_error     ), //o
    .io_pop_payload_inst   (fifo_io_pop_payload_inst[31:0]), //o
    .io_flush              (io_flush                      ), //i
    .io_occupancy          (fifo_io_occupancy[1:0]        ), //o
    .io_availability       (fifo_io_availability[1:0]     ), //o
    .clk                   (clk                           ), //i
    .reset_n               (reset_n                       )  //i
  );
  assign io_push_ready = fifo_io_push_ready;
  assign io_pop_valid = fifo_io_pop_valid;
  assign io_pop_payload_error = fifo_io_pop_payload_error;
  assign io_pop_payload_inst = fifo_io_pop_payload_inst;
  assign io_occupancy = fifo_io_occupancy;
  assign io_availability = fifo_io_availability;

endmodule

//StreamFifo_2 replaced by StreamFifo_6

//StreamFifo_3 replaced by StreamFifo_6

//StreamFifo_4 replaced by StreamFifo_6

//StreamFifo_5 replaced by StreamFifo_6

module StreamFifo_6 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  output reg           io_pop_valid,
  input  wire          io_pop_ready,
  input  wire          io_flush,
  output wire [2:0]    io_occupancy,
  output wire [2:0]    io_availability,
  input  wire          clk,
  input  wire          reset_n
);

  reg                 logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [2:0]    logic_ptr_push;
  reg        [2:0]    logic_ptr_pop;
  wire       [2:0]    logic_ptr_occupancy;
  wire       [2:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1248;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [1:0]    logic_push_onRam_write_payload_address;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [1:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;

  assign when_Stream_l1248 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 3'b100) == 3'b000);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  always @(*) begin
    logic_ptr_doPush = io_push_fire;
    if(logic_ptr_empty) begin
      if(io_pop_ready) begin
        logic_ptr_doPush = 1'b0;
      end
    end
  end

  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[1:0];
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[1:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  always @(*) begin
    io_pop_valid = logic_pop_addressGen_translated_valid;
    if(logic_ptr_empty) begin
      io_pop_valid = io_push_valid;
    end
  end

  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (3'b100 - logic_ptr_occupancy);
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      logic_ptr_push <= 3'b000;
      logic_ptr_pop <= 3'b000;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1248) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 3'b001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 3'b001);
      end
      if(io_flush) begin
        logic_ptr_push <= 3'b000;
        logic_ptr_pop <= 3'b000;
      end
    end
  end


endmodule

module UartCtrlRx (
  input  wire [2:0]    io_configFrame_dataLength,
  input  wire [0:0]    io_configFrame_stop,
  input  wire [1:0]    io_configFrame_parity,
  input  wire          io_samplingTick,
  output wire          io_read_valid,
  input  wire          io_read_ready,
  output wire [7:0]    io_read_payload,
  input  wire          io_rxd,
  output wire          io_rts,
  output reg           io_error,
  output wire          io_break,
  input  wire          clk,
  input  wire          reset_n
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;
  localparam UartCtrlRxState_IDLE = 3'd0;
  localparam UartCtrlRxState_START = 3'd1;
  localparam UartCtrlRxState_DATA = 3'd2;
  localparam UartCtrlRxState_PARITY = 3'd3;
  localparam UartCtrlRxState_STOP = 3'd4;

  wire                io_rxd_buffercc_io_dataOut;
  wire       [2:0]    _zz_when_UartCtrlRx_l139;
  wire       [0:0]    _zz_when_UartCtrlRx_l139_1;
  reg                 _zz_io_rts;
  wire                sampler_synchroniser;
  wire                sampler_samples_0;
  reg                 sampler_samples_1;
  reg                 sampler_samples_2;
  reg                 sampler_value;
  reg                 sampler_tick;
  reg        [2:0]    bitTimer_counter;
  reg                 bitTimer_tick;
  wire                when_UartCtrlRx_l43;
  reg        [2:0]    bitCounter_value;
  reg        [6:0]    break_counter;
  wire                break_valid;
  wire                when_UartCtrlRx_l69;
  reg        [2:0]    stateMachine_state;
  reg                 stateMachine_parity;
  reg        [7:0]    stateMachine_shifter;
  reg                 stateMachine_validReg;
  wire                when_UartCtrlRx_l93;
  wire                when_UartCtrlRx_l103;
  wire                when_UartCtrlRx_l111;
  wire                when_UartCtrlRx_l113;
  wire                when_UartCtrlRx_l125;
  wire                when_UartCtrlRx_l136;
  wire                when_UartCtrlRx_l139;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  `endif


  assign _zz_when_UartCtrlRx_l139_1 = ((io_configFrame_stop == UartStopType_ONE) ? 1'b0 : 1'b1);
  assign _zz_when_UartCtrlRx_l139 = {2'd0, _zz_when_UartCtrlRx_l139_1};
  (* keep_hierarchy = "TRUE" *) BufferCC_1 io_rxd_buffercc (
    .io_dataIn  (io_rxd                    ), //i
    .io_dataOut (io_rxd_buffercc_io_dataOut), //o
    .clk        (clk                       ), //i
    .reset_n    (reset_n                   )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      UartStopType_ONE : io_configFrame_stop_string = "ONE";
      UartStopType_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      UartParityType_NONE : io_configFrame_parity_string = "NONE";
      UartParityType_EVEN : io_configFrame_parity_string = "EVEN";
      UartParityType_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      UartCtrlRxState_IDLE : stateMachine_state_string = "IDLE  ";
      UartCtrlRxState_START : stateMachine_state_string = "START ";
      UartCtrlRxState_DATA : stateMachine_state_string = "DATA  ";
      UartCtrlRxState_PARITY : stateMachine_state_string = "PARITY";
      UartCtrlRxState_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    io_error = 1'b0;
    case(stateMachine_state)
      UartCtrlRxState_IDLE : begin
      end
      UartCtrlRxState_START : begin
      end
      UartCtrlRxState_DATA : begin
      end
      UartCtrlRxState_PARITY : begin
        if(bitTimer_tick) begin
          if(!when_UartCtrlRx_l125) begin
            io_error = 1'b1;
          end
        end
      end
      default : begin
        if(bitTimer_tick) begin
          if(when_UartCtrlRx_l136) begin
            io_error = 1'b1;
          end
        end
      end
    endcase
  end

  assign io_rts = _zz_io_rts;
  assign sampler_synchroniser = io_rxd_buffercc_io_dataOut;
  assign sampler_samples_0 = sampler_synchroniser;
  always @(*) begin
    bitTimer_tick = 1'b0;
    if(sampler_tick) begin
      if(when_UartCtrlRx_l43) begin
        bitTimer_tick = 1'b1;
      end
    end
  end

  assign when_UartCtrlRx_l43 = (bitTimer_counter == 3'b000);
  assign break_valid = (break_counter == 7'h41);
  assign when_UartCtrlRx_l69 = (io_samplingTick && (! break_valid));
  assign io_break = break_valid;
  assign io_read_valid = stateMachine_validReg;
  assign when_UartCtrlRx_l93 = ((sampler_tick && (! sampler_value)) && (! break_valid));
  assign when_UartCtrlRx_l103 = (sampler_value == 1'b1);
  assign when_UartCtrlRx_l111 = (bitCounter_value == io_configFrame_dataLength);
  assign when_UartCtrlRx_l113 = (io_configFrame_parity == UartParityType_NONE);
  assign when_UartCtrlRx_l125 = (stateMachine_parity == sampler_value);
  assign when_UartCtrlRx_l136 = (! sampler_value);
  assign when_UartCtrlRx_l139 = (bitCounter_value == _zz_when_UartCtrlRx_l139);
  assign io_read_payload = stateMachine_shifter;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      _zz_io_rts <= 1'b0;
      sampler_samples_1 <= 1'b1;
      sampler_samples_2 <= 1'b1;
      sampler_value <= 1'b1;
      sampler_tick <= 1'b0;
      break_counter <= 7'h0;
      stateMachine_state <= UartCtrlRxState_IDLE;
      stateMachine_validReg <= 1'b0;
    end else begin
      _zz_io_rts <= (! io_read_ready);
      if(io_samplingTick) begin
        sampler_samples_1 <= sampler_samples_0;
      end
      if(io_samplingTick) begin
        sampler_samples_2 <= sampler_samples_1;
      end
      sampler_value <= (((1'b0 || ((1'b1 && sampler_samples_0) && sampler_samples_1)) || ((1'b1 && sampler_samples_0) && sampler_samples_2)) || ((1'b1 && sampler_samples_1) && sampler_samples_2));
      sampler_tick <= io_samplingTick;
      if(sampler_value) begin
        break_counter <= 7'h0;
      end else begin
        if(when_UartCtrlRx_l69) begin
          break_counter <= (break_counter + 7'h01);
        end
      end
      stateMachine_validReg <= 1'b0;
      case(stateMachine_state)
        UartCtrlRxState_IDLE : begin
          if(when_UartCtrlRx_l93) begin
            stateMachine_state <= UartCtrlRxState_START;
          end
        end
        UartCtrlRxState_START : begin
          if(bitTimer_tick) begin
            stateMachine_state <= UartCtrlRxState_DATA;
            if(when_UartCtrlRx_l103) begin
              stateMachine_state <= UartCtrlRxState_IDLE;
            end
          end
        end
        UartCtrlRxState_DATA : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l111) begin
              if(when_UartCtrlRx_l113) begin
                stateMachine_state <= UartCtrlRxState_STOP;
                stateMachine_validReg <= 1'b1;
              end else begin
                stateMachine_state <= UartCtrlRxState_PARITY;
              end
            end
          end
        end
        UartCtrlRxState_PARITY : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l125) begin
              stateMachine_state <= UartCtrlRxState_STOP;
              stateMachine_validReg <= 1'b1;
            end else begin
              stateMachine_state <= UartCtrlRxState_IDLE;
            end
          end
        end
        default : begin
          if(bitTimer_tick) begin
            if(when_UartCtrlRx_l136) begin
              stateMachine_state <= UartCtrlRxState_IDLE;
            end else begin
              if(when_UartCtrlRx_l139) begin
                stateMachine_state <= UartCtrlRxState_IDLE;
              end
            end
          end
        end
      endcase
    end
  end

  always @(posedge clk) begin
    if(sampler_tick) begin
      bitTimer_counter <= (bitTimer_counter - 3'b001);
      if(when_UartCtrlRx_l43) begin
        bitTimer_counter <= 3'b100;
      end
    end
    if(bitTimer_tick) begin
      bitCounter_value <= (bitCounter_value + 3'b001);
    end
    if(bitTimer_tick) begin
      stateMachine_parity <= (stateMachine_parity ^ sampler_value);
    end
    case(stateMachine_state)
      UartCtrlRxState_IDLE : begin
        if(when_UartCtrlRx_l93) begin
          bitTimer_counter <= 3'b001;
        end
      end
      UartCtrlRxState_START : begin
        if(bitTimer_tick) begin
          bitCounter_value <= 3'b000;
          stateMachine_parity <= (io_configFrame_parity == UartParityType_ODD);
        end
      end
      UartCtrlRxState_DATA : begin
        if(bitTimer_tick) begin
          stateMachine_shifter[bitCounter_value] <= sampler_value;
          if(when_UartCtrlRx_l111) begin
            bitCounter_value <= 3'b000;
          end
        end
      end
      UartCtrlRxState_PARITY : begin
        if(bitTimer_tick) begin
          bitCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module UartCtrlTx (
  input  wire [2:0]    io_configFrame_dataLength,
  input  wire [0:0]    io_configFrame_stop,
  input  wire [1:0]    io_configFrame_parity,
  input  wire          io_samplingTick,
  input  wire          io_write_valid,
  output reg           io_write_ready,
  input  wire [7:0]    io_write_payload,
  input  wire          io_cts,
  output wire          io_txd,
  input  wire          io_break,
  input  wire          clk,
  input  wire          reset_n
);
  localparam UartStopType_ONE = 1'd0;
  localparam UartStopType_TWO = 1'd1;
  localparam UartParityType_NONE = 2'd0;
  localparam UartParityType_EVEN = 2'd1;
  localparam UartParityType_ODD = 2'd2;
  localparam UartCtrlTxState_IDLE = 3'd0;
  localparam UartCtrlTxState_START = 3'd1;
  localparam UartCtrlTxState_DATA = 3'd2;
  localparam UartCtrlTxState_PARITY = 3'd3;
  localparam UartCtrlTxState_STOP = 3'd4;

  wire       [2:0]    _zz_clockDivider_counter_valueNext;
  wire       [0:0]    _zz_clockDivider_counter_valueNext_1;
  wire       [2:0]    _zz_when_UartCtrlTx_l93;
  wire       [0:0]    _zz_when_UartCtrlTx_l93_1;
  reg                 clockDivider_counter_willIncrement;
  wire                clockDivider_counter_willClear;
  reg        [2:0]    clockDivider_counter_valueNext;
  reg        [2:0]    clockDivider_counter_value;
  wire                clockDivider_counter_willOverflowIfInc;
  wire                clockDivider_counter_willOverflow;
  reg        [2:0]    tickCounter_value;
  reg        [2:0]    stateMachine_state;
  reg                 stateMachine_parity;
  reg                 stateMachine_txd;
  wire                when_UartCtrlTx_l58;
  wire                when_UartCtrlTx_l73;
  wire                when_UartCtrlTx_l76;
  wire                when_UartCtrlTx_l93;
  wire       [2:0]    _zz_stateMachine_state;
  reg                 _zz_io_txd;
  `ifndef SYNTHESIS
  reg [23:0] io_configFrame_stop_string;
  reg [31:0] io_configFrame_parity_string;
  reg [47:0] stateMachine_state_string;
  reg [47:0] _zz_stateMachine_state_string;
  `endif


  assign _zz_clockDivider_counter_valueNext_1 = clockDivider_counter_willIncrement;
  assign _zz_clockDivider_counter_valueNext = {2'd0, _zz_clockDivider_counter_valueNext_1};
  assign _zz_when_UartCtrlTx_l93_1 = ((io_configFrame_stop == UartStopType_ONE) ? 1'b0 : 1'b1);
  assign _zz_when_UartCtrlTx_l93 = {2'd0, _zz_when_UartCtrlTx_l93_1};
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_configFrame_stop)
      UartStopType_ONE : io_configFrame_stop_string = "ONE";
      UartStopType_TWO : io_configFrame_stop_string = "TWO";
      default : io_configFrame_stop_string = "???";
    endcase
  end
  always @(*) begin
    case(io_configFrame_parity)
      UartParityType_NONE : io_configFrame_parity_string = "NONE";
      UartParityType_EVEN : io_configFrame_parity_string = "EVEN";
      UartParityType_ODD : io_configFrame_parity_string = "ODD ";
      default : io_configFrame_parity_string = "????";
    endcase
  end
  always @(*) begin
    case(stateMachine_state)
      UartCtrlTxState_IDLE : stateMachine_state_string = "IDLE  ";
      UartCtrlTxState_START : stateMachine_state_string = "START ";
      UartCtrlTxState_DATA : stateMachine_state_string = "DATA  ";
      UartCtrlTxState_PARITY : stateMachine_state_string = "PARITY";
      UartCtrlTxState_STOP : stateMachine_state_string = "STOP  ";
      default : stateMachine_state_string = "??????";
    endcase
  end
  always @(*) begin
    case(_zz_stateMachine_state)
      UartCtrlTxState_IDLE : _zz_stateMachine_state_string = "IDLE  ";
      UartCtrlTxState_START : _zz_stateMachine_state_string = "START ";
      UartCtrlTxState_DATA : _zz_stateMachine_state_string = "DATA  ";
      UartCtrlTxState_PARITY : _zz_stateMachine_state_string = "PARITY";
      UartCtrlTxState_STOP : _zz_stateMachine_state_string = "STOP  ";
      default : _zz_stateMachine_state_string = "??????";
    endcase
  end
  `endif

  always @(*) begin
    clockDivider_counter_willIncrement = 1'b0;
    if(io_samplingTick) begin
      clockDivider_counter_willIncrement = 1'b1;
    end
  end

  assign clockDivider_counter_willClear = 1'b0;
  assign clockDivider_counter_willOverflowIfInc = (clockDivider_counter_value == 3'b100);
  assign clockDivider_counter_willOverflow = (clockDivider_counter_willOverflowIfInc && clockDivider_counter_willIncrement);
  always @(*) begin
    if(clockDivider_counter_willOverflow) begin
      clockDivider_counter_valueNext = 3'b000;
    end else begin
      clockDivider_counter_valueNext = (clockDivider_counter_value + _zz_clockDivider_counter_valueNext);
    end
    if(clockDivider_counter_willClear) begin
      clockDivider_counter_valueNext = 3'b000;
    end
  end

  always @(*) begin
    stateMachine_txd = 1'b1;
    case(stateMachine_state)
      UartCtrlTxState_IDLE : begin
      end
      UartCtrlTxState_START : begin
        stateMachine_txd = 1'b0;
      end
      UartCtrlTxState_DATA : begin
        stateMachine_txd = io_write_payload[tickCounter_value];
      end
      UartCtrlTxState_PARITY : begin
        stateMachine_txd = stateMachine_parity;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_write_ready = io_break;
    case(stateMachine_state)
      UartCtrlTxState_IDLE : begin
      end
      UartCtrlTxState_START : begin
      end
      UartCtrlTxState_DATA : begin
        if(clockDivider_counter_willOverflow) begin
          if(when_UartCtrlTx_l73) begin
            io_write_ready = 1'b1;
          end
        end
      end
      UartCtrlTxState_PARITY : begin
      end
      default : begin
      end
    endcase
  end

  assign when_UartCtrlTx_l58 = ((io_write_valid && (! io_cts)) && clockDivider_counter_willOverflow);
  assign when_UartCtrlTx_l73 = (tickCounter_value == io_configFrame_dataLength);
  assign when_UartCtrlTx_l76 = (io_configFrame_parity == UartParityType_NONE);
  assign when_UartCtrlTx_l93 = (tickCounter_value == _zz_when_UartCtrlTx_l93);
  assign _zz_stateMachine_state = (io_write_valid ? UartCtrlTxState_START : UartCtrlTxState_IDLE);
  assign io_txd = _zz_io_txd;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      clockDivider_counter_value <= 3'b000;
      stateMachine_state <= UartCtrlTxState_IDLE;
      _zz_io_txd <= 1'b1;
    end else begin
      clockDivider_counter_value <= clockDivider_counter_valueNext;
      case(stateMachine_state)
        UartCtrlTxState_IDLE : begin
          if(when_UartCtrlTx_l58) begin
            stateMachine_state <= UartCtrlTxState_START;
          end
        end
        UartCtrlTxState_START : begin
          if(clockDivider_counter_willOverflow) begin
            stateMachine_state <= UartCtrlTxState_DATA;
          end
        end
        UartCtrlTxState_DATA : begin
          if(clockDivider_counter_willOverflow) begin
            if(when_UartCtrlTx_l73) begin
              if(when_UartCtrlTx_l76) begin
                stateMachine_state <= UartCtrlTxState_STOP;
              end else begin
                stateMachine_state <= UartCtrlTxState_PARITY;
              end
            end
          end
        end
        UartCtrlTxState_PARITY : begin
          if(clockDivider_counter_willOverflow) begin
            stateMachine_state <= UartCtrlTxState_STOP;
          end
        end
        default : begin
          if(clockDivider_counter_willOverflow) begin
            if(when_UartCtrlTx_l93) begin
              stateMachine_state <= _zz_stateMachine_state;
            end
          end
        end
      endcase
      _zz_io_txd <= (stateMachine_txd && (! io_break));
    end
  end

  always @(posedge clk) begin
    if(clockDivider_counter_willOverflow) begin
      tickCounter_value <= (tickCounter_value + 3'b001);
    end
    if(clockDivider_counter_willOverflow) begin
      stateMachine_parity <= (stateMachine_parity ^ stateMachine_txd);
    end
    case(stateMachine_state)
      UartCtrlTxState_IDLE : begin
      end
      UartCtrlTxState_START : begin
        if(clockDivider_counter_willOverflow) begin
          stateMachine_parity <= (io_configFrame_parity == UartParityType_ODD);
          tickCounter_value <= 3'b000;
        end
      end
      UartCtrlTxState_DATA : begin
        if(clockDivider_counter_willOverflow) begin
          if(when_UartCtrlTx_l73) begin
            tickCounter_value <= 3'b000;
          end
        end
      end
      UartCtrlTxState_PARITY : begin
        if(clockDivider_counter_willOverflow) begin
          tickCounter_value <= 3'b000;
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module BufferCC (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk,
  input  wire          reset_n
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  initial begin
  `ifndef SYNTHESIS
    buffers_0 = $urandom;
    buffers_1 = $urandom;
  `endif
  end

  assign io_dataOut = buffers_1;
  always @(posedge clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end


endmodule

module StreamFifo_7 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire          io_push_payload_error,
  input  wire [31:0]   io_push_payload_inst,
  output reg           io_pop_valid,
  input  wire          io_pop_ready,
  output reg           io_pop_payload_error,
  output reg  [31:0]   io_pop_payload_inst,
  input  wire          io_flush,
  output wire [1:0]    io_occupancy,
  output wire [1:0]    io_availability,
  input  wire          clk,
  input  wire          reset_n
);

  wire       [32:0]   logic_ram_spinal_port1;
  wire       [32:0]   _zz_logic_ram_port;
  reg                 _zz_1;
  reg                 logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [1:0]    logic_ptr_push;
  reg        [1:0]    logic_ptr_pop;
  wire       [1:0]    logic_ptr_occupancy;
  wire       [1:0]    logic_ptr_popOnIo;
  wire                when_Stream_l1248;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [0:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data_error;
  wire       [31:0]   logic_push_onRam_write_payload_data_inst;
  wire                logic_pop_addressGen_valid;
  wire                logic_pop_addressGen_ready;
  wire       [0:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_async_readed_error;
  wire       [31:0]   logic_pop_async_readed_inst;
  wire       [32:0]   _zz_logic_pop_async_readed_error;
  wire                logic_pop_addressGen_translated_valid;
  wire                logic_pop_addressGen_translated_ready;
  wire                logic_pop_addressGen_translated_payload_error;
  wire       [31:0]   logic_pop_addressGen_translated_payload_inst;
  (* ram_style = "distributed" *) reg [32:0] logic_ram [0:1];

  assign _zz_logic_ram_port = {logic_push_onRam_write_payload_data_inst,logic_push_onRam_write_payload_data_error};
  always @(posedge clk) begin
    if(_zz_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= _zz_logic_ram_port;
    end
  end

  assign logic_ram_spinal_port1 = logic_ram[logic_pop_addressGen_payload];
  always @(*) begin
    _zz_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign when_Stream_l1248 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 2'b10) == 2'b00);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  always @(*) begin
    logic_ptr_doPush = io_push_fire;
    if(logic_ptr_empty) begin
      if(io_pop_ready) begin
        logic_ptr_doPush = 1'b0;
      end
    end
  end

  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[0:0];
  assign logic_push_onRam_write_payload_data_error = io_push_payload_error;
  assign logic_push_onRam_write_payload_data_inst = io_push_payload_inst;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[0:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  assign _zz_logic_pop_async_readed_error = logic_ram_spinal_port1;
  assign logic_pop_async_readed_error = _zz_logic_pop_async_readed_error[0];
  assign logic_pop_async_readed_inst = _zz_logic_pop_async_readed_error[32 : 1];
  assign logic_pop_addressGen_translated_valid = logic_pop_addressGen_valid;
  assign logic_pop_addressGen_ready = logic_pop_addressGen_translated_ready;
  assign logic_pop_addressGen_translated_payload_error = logic_pop_async_readed_error;
  assign logic_pop_addressGen_translated_payload_inst = logic_pop_async_readed_inst;
  always @(*) begin
    io_pop_valid = logic_pop_addressGen_translated_valid;
    if(logic_ptr_empty) begin
      io_pop_valid = io_push_valid;
    end
  end

  assign logic_pop_addressGen_translated_ready = io_pop_ready;
  always @(*) begin
    io_pop_payload_error = logic_pop_addressGen_translated_payload_error;
    if(logic_ptr_empty) begin
      io_pop_payload_error = io_push_payload_error;
    end
  end

  always @(*) begin
    io_pop_payload_inst = logic_pop_addressGen_translated_payload_inst;
    if(logic_ptr_empty) begin
      io_pop_payload_inst = io_push_payload_inst;
    end
  end

  assign logic_ptr_popOnIo = logic_ptr_pop;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (2'b10 - logic_ptr_occupancy);
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      logic_ptr_push <= 2'b00;
      logic_ptr_pop <= 2'b00;
      logic_ptr_wentUp <= 1'b0;
    end else begin
      if(when_Stream_l1248) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 2'b01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 2'b01);
      end
      if(io_flush) begin
        logic_ptr_push <= 2'b00;
        logic_ptr_pop <= 2'b00;
      end
    end
  end


endmodule

module BufferCC_1 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk,
  input  wire          reset_n
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
      buffers_0 <= 1'b0;
      buffers_1 <= 1'b0;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
