/* Generated by Yosys 0.9+2406 (git sha1 bd2ecc2d, gcc 11.0.0 -fPIC -Os) */

(* top =  1  *)
(* src = "test0.v:1.1-10.10" *)
module test0(a, b, c, clk);
  (* src = "test0.v:2.9-2.10" *)
  input a;
  (* src = "test0.v:3.10-3.11" *)
  output b;
  reg b;
  (* src = "test0.v:3.13-3.14" *)
  output c;
  (* src = "test0.v:4.9-4.12" *)
  input clk;
  (* src = "test0.v:6.3-9.6" *)
  always @(posedge clk)
      b <= a;
  assign c = b;
endmodule