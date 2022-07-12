import sys
import os
from lambda_handler import lambda_handler

try:
    lambda_handler({}, {})
except Exception as e:
    print(e, file=sys.stderr)
    sys.exit(1)
