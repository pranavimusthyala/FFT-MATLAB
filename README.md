# FFT-MATLAB
This MATLAB program calculates the Fast Fourier Transform using the Decimation-In-Time (DIT) and Decimation-In-Frequency (DIF).
# FFT MATLAB

This repository contains simple MATLAB implementations of Fast Fourier Transform (FFT) algorithms.

## 📌 About the Project

Fast Fourier Transform (FFT) is an efficient algorithm used to calculate the Discrete Fourier Transform (DFT) of a signal.

This repository contains two commonly studied FFT approaches:

* **DIT-FFT** – Decimation-In-Time FFT
* **DIF-FFT** – Decimation-In-Frequency FFT

## 📂 Repository Structure

```text
FFT-MATLAB/
│
├── ghdif.m
├── ghdit2.m
└── README.md
```

## 🔹 DIT-FFT

DIT stands for **Decimation-In-Time**.

In DIT-FFT, the input sequence is divided into smaller sequences. Butterfly operations are then performed on these smaller sequences to calculate the FFT.

### Main idea

```text
Input sequence
      ↓
Divide in time
      ↓
Butterfly operations
      ↓
FFT output
```

### File

`ghdit2.m`

## 🔹 DIF-FFT

DIF stands for **Decimation-In-Frequency**.

In DIF-FFT, the FFT calculation is divided according to the frequency components. Butterfly operations are performed to obtain the frequency-domain output.

### Main idea

```text
Input sequence
      ↓
Butterfly operations
      ↓
Divide in frequency
      ↓
FFT output
```

### File

`ghdif.m`

## 🔄 DIT vs DIF

| Feature    | DIT-FFT                   | DIF-FFT                   |
| ---------- | ------------------------- | ------------------------- |
| Full form  | Decimation-In-Time        | Decimation-In-Frequency   |
| Division   | Input/time sequence       | Frequency components      |
| Butterfly  | Used                      | Used                      |
| Purpose    | Calculate FFT efficiently | Calculate FFT efficiently |
| Common use | DSP applications          | DSP applications          |

## 🧮 FFT Formula

The DFT is given by:

$$
X(k)=\sum_{n=0}^{N-1}x(n)e^{-j2\pi kn/N}
$$

where:

* `x(n)` = input signal
* `X(k)` = frequency-domain output
* `N` = number of samples
* `k` = frequency index
* `j` = imaginary unit

FFT provides an efficient way of calculating this transform.

## 💻 Software Required

* MATLAB
* No additional hardware is required.

## ▶️ How to Run

1. Download or clone this repository.
2. Open the project folder in MATLAB.
3. Open `ghdit2.m` or `ghdif.m`.
4. Run the selected MATLAB file.
5. The FFT result will be displayed in the Command Window.
6. The magnitude spectrum will be displayed as a graph.

## 📊 Output

The programs display:

* Input sequence
* FFT result
* Magnitude spectrum

## 🎯 Learning Objectives

This project helps in understanding:

* Discrete Fourier Transform
* Fast Fourier Transform
* Decimation-In-Time
* Decimation-In-Frequency
* Butterfly operations
* Twiddle factors
* Frequency-domain representation

## 👩‍💻 Author

**Pranavi Musthyala**

