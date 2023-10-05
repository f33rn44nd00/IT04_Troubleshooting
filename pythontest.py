import os
for root, subdir, file in os.walk(r'C:\Users\f33rn\OneDrive\Documentos\CURSOS\IT03 - Git and Github'):
    for name in file:
        print(name)