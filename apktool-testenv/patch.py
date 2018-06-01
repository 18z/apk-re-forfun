import r2pipe
import sys

r2 = r2pipe.open(sys.argv[1], ["-w"])

results = r2.cmd('iz~Hello').split(" ")
address = results[2]

print address
print r2.cmd("s {}".format(address))
print r2.cmd('px')
print r2.cmd("w h")
print r2.cmd('px')

r2.quit()
