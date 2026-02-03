# EE533_lab3 — Mini-IDS

Lab #3 – Mini Intrusion Detection Engine Design.
The lab focuses on building a small hardware-based intrusion detection system using Xilinx ISE schematics, IP cores, and Verilog.

✔ Schematic Components

busmerge.v – combines 48-bit and 64-bit inputs into a 112-bit bus

8-bit comparator (comp8) – Xilinx provided

comparator.sch – cascaded comparators for multi-byte matching

reg9B.sch – 9-byte register

wordmatch.sch – compares input data against a 7-byte pattern

dropfifo.sch – FIFO with match control

dual-port 9-byte memory IP – required for FIFO buffering

▶ Simulation

Imported ids_sim into ISE

Ran the provided testbench ids_tb.tbw

Verified match signals to confirm the mini-IDS logic works
