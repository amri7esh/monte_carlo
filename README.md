# Monte Carlo Simulations Repository
Monte Carlo Methods to Financial Problems

## Overview
This repository contains a collection of Monte Carlo simulation techniques applied in the field of financial mathematics and statistical analysis. It includes simulations for generating financial returns and estimating order statistics from a Cauchy distribution, highlighting different methodologies and computational strategies.

## Contents
- [Modeling Financial Returns](#modeling-financial-returns)
- [Cauchy Distribution Order Statistics](#cauchy-distribution-order-statistics)
- [Normal Random Variables Generation Using Box-Muller Method](#cauchy-distribution-order-statistics)

## Code 1: Modeling Financial Returns
### Simulating Financial Returns
- **Description**: This script simulates financial returns using different probability distributions, namely the Cauchy and logistic distributions. It demonstrates the process of parameterization, simulation, and graphical analysis of financial returns.
- **Methodology**: The simulation involves generating returns, adjusting parameters to fit certain statistical properties, and analyzing the behavior of these returns over time.
- **Usage**: Execute `modeling_financial_returns.m` in MATLAB. The script includes parameter setting, generating returns, and plotting the cumulative and averaged returns.

## Code 2: Cauchy Distribution Order Statistics
### Estimating Order Statistics
This section presents two Monte Carlo methods for estimating order statistics from a Cauchy distribution, focusing on computational efficiency and statistical theory application.

#### Uniform to Cauchy Sampling
- **Description**: Generates samples from a uniform distribution, transforms them to a Cauchy distribution, and then sorts them to find specific order statistics.
- **Methodology**: Involves direct application of distribution transformations and sorting.

#### Beta Distribution Sampling
- **Description**: Uses the Beta distribution to directly sample specific order statistics for a Cauchy distribution.
- **Methodology**: Leverages the statistical properties of the Beta distribution.

**Usage**: Execute `CauchyOrderStatsSamplingComparison.m` in MATLAB for a comparison with the traditional method.


## Code 3: Normal Random Variables Generation Using Box-Muller Method

### Box-Muller Transformation with Custom Uniform RNG
- **Description**: This script generates pairs of independent, normally distributed random variables using the Box-Muller transformation. It contrasts typical uniform random number generation with a custom linear congruential generator defined by $x_{n+1} = (383x_{n} + 263)$ mod 10000. This method highlights the versatility of Monte Carlo methods in generating samples from a desired distribution, given a source of uniform random numbers.
- **Methodology**: A custom linear congruential generator is used to produce uniform random numbers, which are then transformed into normal random variables using the Box-Muller algorithm. The script generates 5,000 pairs of normal random variables and visualizes them to assess their independence.
- **Usage**: Run the script `GenerateNormalRNG_BoxMuller.m` in MATLAB. The figures produced include a scatter plot of the generated pairs and histograms for each variable, allowing for visual inspection of the normality and independence of the samples.
- **Validation**: The script includes timing of the generation process to evaluate the performance of using a custom RNG with the Box-Muller method. The histograms and scatter plot provide a visual means to assess the quality and independence of the generated samples.

## General Instructions
- Clone the repository and navigate to the specific project folder. Each folder contains MATLAB scripts with descriptive comments.

## Contributing
We welcome contributions. Please follow the existing style and add clear comments. For major changes, open an issue first to discuss your proposed changes.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
