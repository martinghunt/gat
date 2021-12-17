from setuptools import setup, find_packages


setup(
    name="gat",
    version="0.0.1",
    description="gat: github actions testing",
    packages=find_packages(exclude=["tests"]),
    author="Martin Hunt",
    author_email="mhunt@ebi.ac.uk",
    url="https://github.com/martinghunt/gat",
    tests_require=["pytest"],
    entry_points={"console_scripts": ["gat = gat.__main__:main"]},
    #install_requires=install_requires,
    license="MIT",
    classifiers=[
        "Development Status :: 4 - Beta",
        "Topic :: Scientific/Engineering :: Bio-Informatics",
        "Programming Language :: Python :: 3 :: Only",
        "License :: OSI Approved :: MIT License",
    ],
)
