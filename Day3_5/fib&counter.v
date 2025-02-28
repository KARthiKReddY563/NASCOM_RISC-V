\m5_TLV_version 1d: tl-x.org
\m5
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   $num[7:0] = $reset ? 1'b1 : >>1$num + >>2$num;
   
   
   $upcnt[3:0] = $reset ? 1'b0 : >>1$upcnt + 1'b1;
   $downcnt[3:0] = $reset ? 15 : >>1$downcnt - 1'b1;
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
