import sys
import pandas as pd
import numpy as np
from typing import Optional

from src.configuration.mongodb_connection import MongoDBClient
from src.constants import COLLECTION_NAME, DATABASE_NAME
from src.exception import MyException

class VehicleData:
    """
    A Class to export MongoDB records as a pandas DataFrame.
    """