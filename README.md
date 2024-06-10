# Author: Ashish Chokhani

# Circuit Performance Prediction Using Regression-Based ML Models

--- 
## Project Overview

This project focuses on generating datasets essential for training regression-based machine learning models. These models are designed to estimate the leakage power and propagation delay of electronic circuits under varying conditions. This dataset generation and subsequent model training form a foundational step for this Project.

## Objectives

The primary objectives of this project are:
1. To generate datasets that reflect real-world circuit behavior under varying Process, Voltage, and Temperature (PVT) conditions.
2. To utilize these datasets for training regression-based machine learning models to predict static leakage power and propagation delay.

## Methodology

### Dataset Generation

1. **PVT Combination Generation**:
   - **Process Parameters**: Derived from the 45nm-HP PTM file, varied with ±3σ variation.
   - **Voltage**: Nominal voltage at 1V with variations of ±10%.
   - **Temperature**: Ranges from -55 to 125 Celsius using a uniform distribution.

2. **Circuit Simulation**:
   - **Simulation Platform**: NGSPICE.
   - **Gates Simulated**: NOR2, NAND2, and NOT gates.
   - **Metrics Measured**: Static leakage power (via DC analysis) and propagation delay (via transient analysis).

3. **Data Collection**:
   - Generated 10,000 samples with unique PVT combinations.
   - Measured static leakage power and propagation delay for each sample.

### Data Analysis

1. **Visualization Techniques**:
   - 3D Surface Plots
   - Dual Axis Plots
   - Correlation Plots
   - Principal Component Analysis (PCA)
   - Gaussian Mixture Model (GMM) clustering

2. **Insights**:
   - Determined relationships between PVT conditions and circuit performance.
   - Identified optimal clusters for each gate type using BIC scores.

### Machine Learning Framework

1. **Model Selection**:
   - Lasso Regression
   - Support Vector Machine (SVM)
   - K Nearest Neighbor (KNN)
   - Random Forest Regressor (RFR)
   - Adaptive Boosting (ADA)
   - XGBoost (XGB)

2. **Feature Selection**:
   - Nested 10-fold cross-validation to avoid data leakage.
   - Selected top models based on RMSE scores.

3. **Model Optimization and Ensemble**:
   - Hyperparameter optimization using 10-fold Grid Search.
   - Built a weighted ensemble regressor using top models from each cluster.
   - Evaluated model performance using R2 score.

### Results

- Achieved an R2 score of 0.9316.
- Identified optimal number of GMM clusters for various gate types (e.g., INVERTER: 4, XOR: 5).

## Installation

To run this project, ensure you have the following dependencies installed:

- Python 3.x
- NGSPICE
- NumPy
- Pandas
- Scikit-learn
- Matplotlib
- Seaborn
- SciPy
- Jupyter Notebook (optional, for running and modifying notebooks)

## Usage

1. **Dataset Generation**:
   - Use the provided SPICE netlists to run simulations in NGSPICE.
   - Collect the resulting leakage power and delay metrics.

2. **Data Analysis**:
   - Visualize the data using the mentioned plotting techniques.
   - Perform PCA and GMM clustering to gain insights.

3. **Model Training**:
   - Train the regression models using the generated dataset.
   - Use the nested 10-fold cross-validation for feature selection and model evaluation.

4. **Model Evaluation**:
   - Optimize models using Grid Search.
   - Build and evaluate the ensemble regressor.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or new features.

## License

This project is licensed under the IIITH

## Acknowledgements

- Dr. Zia Abbas for guidance and support.

---

For more detailed information, refer to the full [report](https://github.com/Ashish-Chokhani/Regression-ML-for-Circuit-Performance-Prediction/blob/main/Docs/DVD%20Project%20Report.pdf)


