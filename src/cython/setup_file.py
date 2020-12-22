from setuptools import find_packages, setup
from distutils.core import setup
from Cython.Build import cythonize
import pyximport
import numpy as np

pyximport.install(setup_args={"script_args": ["--compiler=mingw32"]}, reload_support=True)
setup(ext_modules=cythonize("smoothing_convolution.pyx"), include_dirs=[np.get_include()])
