import sys

from policy_munge.munge_policy_handler import munge_policy_handler

try:
    munge_policy_handler({}, {})
except Exception as e:
    print(e, file=sys.stderr)
