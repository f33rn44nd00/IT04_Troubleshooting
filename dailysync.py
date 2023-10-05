# #!/usr/bin/env python3
# from multiprocessing import Pool
# import multiprocessing
# import os
# import subprocess
# src = "/data/prod/"
# dest = "/data/prod_backup/"
# subprocess.call(["rsync", "-arq", src, dest])

# for (root, dirs, files) in os.walk("/data/prod"):
#     for name in dirs:
#         print(os.path.join(root, name))


from multiprocessing import Pool
import multiprocessing
import subprocess
import os

home_path = os.path.expanduser('~')
src = home_path + "/data/prod/"
dest = home_path + "/data/prod_backup/"

if __name__ == "__main__":
    pool = Pool(multiprocessing.cpu_count())
    pool.apply(subprocess.call, args=(["rsync", "-ar", src, dest],))