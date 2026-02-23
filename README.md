# 🚦 Traffic Light Controller using Verilog (FSM Based)

## 📌 Project Overview

This project implements a **Traffic Light Controller** using **Finite State Machine (FSM)** logic written in Verilog HDL.
The design simulates real traffic signal behavior for multiple roads with timed transitions between **Green, Yellow, and Red** lights.

It is designed for:

* FPGA implementation
* Digital design learning
* VLSI / Embedded systems practice

---

## ⚙️ Features

* FSM-based state control
* Configurable timing using counters
* Separate signals for multiple roads:

  * Main Road 1
  * Main Turning
  * Main Road 2
  * Side Road
* Fully synthesizable design
* Behavioral simulation supported

---

## 🧠 Working Principle

The controller works as a **sequential logic system**:

1. Current state stored in register (`p_state`)
2. Counter generates delay timing
3. When timer expires → state transitions
4. Output lights update according to state

State sequence:

```
S1 → S2 → S3 → S4 → S5 → S6 → repeat
```

Each state represents a traffic phase.

---

## ⏱ Timing Logic

Instead of real-time seconds, delays are implemented using clock cycles.

Example:

```
sec_7 = 7 clock cycles
sec_5 = 5 clock cycles
sec_3 = 3 clock cycles
sec_2 = 2 clock cycles
```

---

## 💡 Light Encoding

Each light uses 3-bit output:

```
001 → Green
010 → Yellow
100 → Red
```

---

## 📂 Project Structure

```
traffic-light-controller/
│
├── traffic_light_controller.v      # Main design module
├── traffic_light_controller_tb.v   # Testbench
└── README.md
```

---

## ▶ Simulation Instructions (Vivado)

1. Add design file → **Design Sources**
2. Add testbench → **Simulation Sources**
3. Set testbench as **Top**
4. Run Behavioral Simulation
5. Add signals to waveform
6. Run for desired time

---

## 🔧 Synthesis Instructions

1. Set **design module** as Top
2. Run Synthesis
3. Run Implementation
4. Generate Bitstream

---

## 🎯 Learning Outcomes

This project demonstrates:

* FSM design
* Sequential logic
* Timing control using counters
* Verilog coding style
* Simulation vs synthesis concepts

---

## 📘 Applications

* Traffic signal systems
* Industrial controllers
* Embedded automation
* Digital control systems

---

## 🏁 Conclusion

This project shows how real-world control systems can be modeled using hardware description languages.
It is ideal for beginners learning **Verilog, FPGA design, and digital logic systems**.

---

## 👨‍💻 Author

**Aryan Srivastava**

---


