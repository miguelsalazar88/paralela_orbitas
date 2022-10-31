from distutils.core import setup, Extension
from Cython.Build import cythonize

exts = (cythonize("planetCy.pyx"))

setup(ext_modules = exts)