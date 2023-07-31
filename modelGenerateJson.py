import os
import json
from random import randint, random

from mlflow import (log_artifacts, log_metric, log_param, set_experiment,
                    start_run)

modelName=None
if __name__ == "__main__":
    set_experiment(os.getenv('modelName'))
    
    with start_run():
        # Log a parameter (key-value pair)
        log_param("param1", randint(0, 100))

        # Log a metric; metrics can be updated throughout the run
        log_metric("foo", random())
        log_metric("foo", random() + 1)
        log_metric("foo", random() + 2)

        # Log an artifact (output file)
        # Data to be written
        dictionary = {
            "name": "sathiyajith",
            "rollno": 56,
            "cgpa": 8.6,
            "phonenumber": "9976770500"
        }
        # Serializing json
        json_object = json.dumps(dictionary, indent=4)
        if not os.path.exists("outputs"):
            os.makedirs("outputs")
        with open("outputs/sample.json", "w") as f:
            f.write(json_object)
        log_artifacts("outputs")
