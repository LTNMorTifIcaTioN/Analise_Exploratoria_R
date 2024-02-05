# ESTUDO DE CASO
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data")

df.columns = ('type', 'alcohol', 'malic acid', 'ash', 'alcalinity of ash', 'magnesium',
                  'total phenols', 'flavonoids', 'non-flavonoids phenols', 'proanthocyanins',
                  'color intensity', 'hue', 'OD280/OD315 of diluted wines', 'proline')

tab = df.loc[:,['alcalinity of ash','flavonoids','hue']]

# A função summary apresenta os valores estatísticos mais importantes: média, mediana e quartis.
print(tab.head())
print(tab.describe())

# E um histograma que apresente uma ideia da distribuição de cada variável é apresentado com a função hist.
tab.hist()
plt.show()