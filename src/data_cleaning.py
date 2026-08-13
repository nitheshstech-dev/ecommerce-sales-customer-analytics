import pandas as pd

raw = pd.read_csv("data/sales_raw.csv")
raw["region"] = raw["region"].replace(r"^\s*$", pd.NA, regex=True).fillna("Unknown")
raw["discount"] = raw["discount"].fillna(raw["discount"].median())
raw.loc[raw["unit_price"] <= 0, "unit_price"] = pd.NA
raw["unit_price"] = raw["unit_price"].fillna(
    raw.groupby("category")["unit_price"].transform("median")
)
raw["revenue"] = raw["quantity"] * raw["unit_price"] * (1 - raw["discount"])
raw["profit"] = raw["revenue"] - raw["cost"]
raw["profit_margin"] = raw["profit"] / raw["revenue"]
raw.to_csv("data/sales_clean.csv", index=False)
print("Cleaned dataset written to data/sales_clean.csv")
