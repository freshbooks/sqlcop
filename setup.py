#!/usr/bin/env python
# -*- coding: utf-8 -*-


try:
    from setuptools import setup, find_packages
except ImportError:
    from distutils.core import setup, find_packages


readme = open('README.rst').read()

requirements = map(str.strip, open('requirements.txt').readlines())

VERSION = open('VERSION').read().strip()

setup(
    name='sqlcop',
    version=VERSION,
    description='A cli tool to check and guard against anti-patterns',
    long_description=readme + '\n\n',
    author='Kevin Qiu',
    author_email='kevin@freshbooks.com',
    url='https://github.com/freshbooks/sqlcop',
    packages=find_packages(exclude=['test*']),
    include_package_data=True,
    install_requires=requirements,
    license="BSD",
    zip_safe=False,
    keywords='sqlcop',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Natural Language :: English',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.6',
    ],
    test_suite='tests',
    entry_points={
        'console_scripts': [
            'sqlcop=sqlcop.cli:main',
        ]
    },
)
