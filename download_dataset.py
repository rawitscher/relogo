# !wget "https://archive.ics.uci.edu/ml/machine-learning-databases/00364/ Dataset.zip"
# !wget "https://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI HAR Dataset.names"



# import copy
import os
from subprocess import call

print("")

print("Downloading...")
if not os.path.exists("dataset_uci.zip"):
    call(
        'wget "https://archive.ics.uci.edu/ml/machine-learning-databases/00364/UCI HAR Dataset.zip"',
        shell=True
    )
    print("Downloading done.\n")
else:
    print("Dataset already downloaded. Did not download twice.\n")


print("Extracting...")
extract_directory = os.path.abspath("UCI HAR Dataset")
if not os.path.exists(extract_directory):
    call(
        'unzip -nq "dataset_uci.zip"',
        shell=True
    )
    print("Extracting successfully done to {}.".format(extract_directory))
else:
    print("Dataset already extracted. Did not extract twice.\n")
