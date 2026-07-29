# Animal Stripe Formation: A Physical Mechanism Report

## 📌 Overview
This project is an interactive, web-based academic report exploring the physical and mathematical mechanisms behind the formation of animal stripes (e.g., zebras). It explains how nature utilizes fundamental physics—specifically Reaction-Diffusion systems and surface curvature—to determine the orientation and patterns of animal coats without relying on complex genetic pre-positioning.

## 🚀 Features & Core Concepts
The presentation is divided into several sections, breaking down complex physical concepts into understandable visual mechanics:

*   **Turing Instability:** Explains how the ratio of diffusion coefficients ($D_v/D_u$) determines the characteristic spatial scale (spacing and period) of the stripes.
*   **Diffusion Anisotropy:** Demonstrates how directional differences in diffusion rates break isotropy, allowing stripes to align rather than forming random labyrinthine patterns.
*   **Curvature-Dependent Diffusion:** Introduces the core breakthrough hypothesis. It shows how the geometric curvature of the animal's body acts as a natural track for chemical diffusion.
*   **Sigmoid Coupling Mechanism:** Visualizes the mathematical relationship (Negative Coupling) where high curvature (e.g., limbs) slows down diffusion, naturally forcing stripes to wrap horizontally, while the trunk forms vertical stripes.

## 🛠️ Technologies Used
*   **Frontend:** HTML5, CSS3, JavaScript (for tab navigation and interactive UI).
*   **Data Visualization:** MATLAB (used to generate the high-resolution Sigmoid coupling curve).
*   **Math Rendering:** MathJax/LaTeX (for rendering differential equations and mathematical symbols).

## 📂 Project Structure
```text
.
├── index.html               # Main presentation webpage
├── sigmoid_coupling.png     # MATLAB-generated Sigmoid curve plot
├── figure5.png              # 3D simulation figure (from the paper)
├── g1g2.png                 # G1/G2 geometric mechanism illustration
└── README.md                # Project documentation
