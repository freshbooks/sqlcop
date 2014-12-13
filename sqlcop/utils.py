import re


def camelize(name):
    return re.sub(r"(?:^|_)(.)", lambda m: m.group(1).upper(), name)
