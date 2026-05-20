# goal-recognition-reproduce

# Reproducing Ramirez & Geffner (AAAI 2010): Probabilistic Plan Recognition

This repository contains a complete implementation of the goal recognition method from "Probabilistic Plan Recognition Using Off-the-Shelf Classical Planners" (AAAI 2010).

## Overview

The method recognizes agent goals from observed actions by:
1. Computing cheapest compliant plan (G+O) and non-compliant plan (G+~O) costs
2. Computing Δ = cost(G+O) - cost(G+~O)
3. Applying Bayesian inference: P(G|O) ∝ exp(β·Δ) · P(G)

## Requirements

- Python 3.8+
- Fast Downward planner (recommended) or any classical planner
- PDDL domains from IPC benchmarks

## Installation

### 1. Clone repository
```bash
git clone https://github.com/yourusername/goal-recognition-reproduce.git
cd goal-recognition-reproduce
