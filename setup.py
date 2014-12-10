#!/usr/bin/env python
# -*- coding: utf-8 -*-


try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup


readme = open('README.rst').read()

requirements = [
    # TODO: put package requirements here
]

test_requirements = [
    # TODO: put package test requirements here
]

setup(
    name='sqlcop',
    version='1.0.0',
    description='A cli tool to check and guard against anti-patterns',
    long_description=readme + '\n\n',
    author='Kevin Qiu',
    author_email='kevin@freshbooks.com',
    url='https://github.2ndsiteinc.com/kevin/sqlcop',
    packages=[
        'sqlcop',
    ],
    package_dir={'sqlcop':
                 'sqlcop'},
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
        "Programming Language :: Python :: 2",
        'Programming Language :: Python :: 2.6',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
    ],
    test_suite='tests',
    tests_require=test_requirements,
    entry_points={
        'console_scripts': [
            'sqlcop=sqlcop.cli:main',
        ]
    },
)
