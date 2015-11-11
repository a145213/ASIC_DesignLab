// $Id: $
// File name:   controller.sv
// Created:     9/22/2014
// Author:      Allen Chien
// Lab Section: 337-04
// Version:     1.0  Initial Design Entry
// Description: Control Unit

module controller (
  input wire clk,
  input wire n_reset,
  input wire dr,
  input wire overflow,
  output reg cnt_up,
  output wire modwait,
  output reg [1:0] op,
  output reg [3:0] src1,
  output reg [3:0] src2,
  output reg [3:0] dest,
  output reg err
);

typedef enum bit [3:0] {
  st_store, 
  st_idle, 
  st_eidle,
  st_sort1, 
  st_sort2,
  st_sort3,
  st_sort4,
  st_add1,
  st_add2,
  st_add3
} stateType;

stateType cur_state;
stateType nxt_state;
reg mod_wait;
reg nxt_modwait;
assign modwait = mod_wait;

always_ff @ (negedge n_reset, posedge clk)
begin : REG_LOGIC
  if (1'b0 == n_reset)
  begin
    cur_state <= st_idle;
    mod_wait <= 1'b0;
  end
  else
  begin
    cur_state <= nxt_state;
    mod_wait <= nxt_modwait;
  end
end

always_comb
begin : NXT_LOGIC
  cnt_up = 1'b0;
  src1 = 4'b0000;
  src2 = 4'b0000;
  dest = 4'b0000;
  err = 1'b0;
  op = 2'b00;
  nxt_state = cur_state;
  nxt_modwait = mod_wait;
  
  case(cur_state)
    st_store:
      begin
        cnt_up = 1'b0;
        src1 = 4'b1000;
        src2 = 4'b1000;
        dest = 4'b0111;
        err = 1'b0;
        op = 2'b10;
  
        if(dr == 1) begin
          nxt_state = st_sort1;
          nxt_modwait = 1'b1;
          end
        else begin  
          nxt_state = st_eidle;
          nxt_modwait = 1'b0;
        end
      end
      
    st_idle:
      begin
        cnt_up = 1'b0;
        src1 = 4'b1000;
        src2 = 4'b1000;
        dest = 4'b1000;
        err = 1'b0;
        op = 2'b00;
  
        if(dr == 1) begin
          nxt_state = st_store;
          nxt_modwait = 1'b1;
          end
      end 
    
    st_eidle:
      begin
        cnt_up = 1'b0;
        src1 = 4'b1000;
        src2 = 4'b1000;
        dest = 4'b1000;
        err = 1'b1;
        op = 2'b00;
  
        if(dr == 1) begin
          nxt_state = st_store;
          nxt_modwait = 1'b1;
          end
      end 
      
    st_sort1:
      begin
        cnt_up = 1'b1;
        src1 = 4'b0100;
        src2 = 4'b1000;
        dest = 4'b0011;
        err = 1'b0;
        op = 2'b01;
  
        nxt_state = st_sort2;
        nxt_modwait = 1'b1;
      end
    
    st_sort2:
      begin
        cnt_up = 1'b0;
        src1 = 4'b0101;
        src2 = 4'b1000;
        dest = 4'b0100;
        err = 1'b0;
        op = 2'b01;
  
        nxt_state = st_sort3;
        nxt_modwait = 1'b1;
      end 
      
    st_sort3:
      begin
        cnt_up = 1'b0;
        src1 = 4'b0110;
        src2 = 4'b1000;
        dest = 4'b0101;
        err = 1'b0;
        op = 2'b01;
  
        nxt_state = st_sort4;
        nxt_modwait = 1'b1;
      end
      
    st_sort4:
      begin
        cnt_up = 1'b0;
        src1 = 4'b0111;
        src2 = 4'b1000;
        dest = 4'b0110;
        err = 1'b0;
        op = 2'b01;
  
        nxt_state = st_add1;
        nxt_modwait = 1'b1;
      end
            
    st_add1:
      begin
        cnt_up = 1'b0;
        src1 = 4'b0011;
        src2 = 4'b0100;
        dest = 4'b0001;
        err = 1'b0;
        op = 2'b11;
  
        if (overflow == 0) begin
          nxt_state = st_add2;
          nxt_modwait = 1'b1;
          end
        else begin
          nxt_state = st_eidle;
          nxt_modwait = 1'b0;
        end
      end
      
    st_add2:
      begin
        cnt_up = 1'b0;
        src1 = 4'b0101;
        src2 = 4'b0110;
        dest = 4'b0010;
        err = 1'b0;
        op = 2'b11;
  
        if (overflow == 0) begin
          nxt_state = st_add3;
          nxt_modwait = 1'b1;
          end
        else begin
          nxt_state = st_eidle;
          nxt_modwait = 1'b0;
        end
      end
      
    st_add3:
      begin
        cnt_up = 1'b0;
        src1 = 4'b0001;
        src2 = 4'b0010;
        dest = 4'b0000;
        err = 1'b0;
        op = 2'b11;
  
        if (overflow == 0) begin
          nxt_state = st_idle;
          nxt_modwait = 1'b0;
          end
        else begin
          nxt_state = st_eidle;
          nxt_modwait = 1'b0;
        end
      end
      
    endcase
  end
  
endmodule

