# MachineLearning

Notebooks and small projects implementing classical ML workflows (mostly XGBoost and from-scratch baselines), separate from neural-network work in [NeuralNetworks](https://github.com/kevinmsong/NeuralNetworks).

## Projects

| Path | Summary |
|------|---------|
| `Alzheimers/` | Predict Alzheimer’s disease status from RNA expression (~25k genes; 5-fold CV; reported ~92% macro F1) on a small postmortem human/mouse brain sample |
| `RealEstatePrediction/` | Encoded XGBoost regression for 2021 estimated full cash values from 2016–2020 Tucson, AZ housing data (reported test RMSE ~$8,568 on 101,661 homes) |
| `AnthemMiniProject.ipynb` | XGBoost model for insurance policy renewal chance |
| `CostEffectiveMaintenance.ipynb` | Feature engineering + XGBoost classifier for cost-effective vs cost-ineffective truck maintenance (data originally hosted on MySQL) |
| `KNearestNeighbors.ipynb` | From-scratch 2D k-NN regression |
| `LinearRegression.ipynb` | From-scratch linear regression (no scikit-learn estimator) |
| `RetailDemandForecasting.ipynb` | Feature engineering and weekly demand forecasting on a 2011–2012 Walmart retail dataset |
| `SongAnalytica.ipynb` | XGBoost prototype relating U.S. presidential approval features to re-election chances ([approval-rating context](https://en.wikipedia.org/wiki/United_States_presidential_approval_rating)) |

## Setup

Most entries are Jupyter notebooks. Typical stack: Python 3, `pandas`, `numpy`, `scikit-learn`, `xgboost`, Jupyter.

```bash
pip install jupyter pandas numpy scikit-learn xgboost
jupyter notebook
```

Open the notebook or folder for the project you want to explore. Some projects expect external data files that may not be checked in.

## Notes

- Metrics quoted above are as reported in the original project writeups; re-running may differ if data or package versions change.
- For neural-network scratch work, see [NeuralNetworks](https://github.com/kevinmsong/NeuralNetworks).
