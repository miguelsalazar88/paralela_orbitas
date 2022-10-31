import sys
import planetPy
import planetCy
import time

time_span = int(sys.argv[1])
step_time = int(sys.argv[2])

planetaPy = planetPy.PyPlanet()
planetaCy = planetCy.CyPlanet()

ini_time = time.time()
planetPy.step_time(planetaPy, time_span, step_time)
fin_time = time.time()

time_python = fin_time - ini_time

ini_time = time.time()
planetCy.step_time(planetaCy, time_span, step_time)
fin_time = time.time()

time_cython = fin_time - ini_time

print(f'Cython es: {time_cython}')
print(f'Python es: {time_python}')


