import numpy as np

# set the random seed
np.random.seed(137)

matrix1 = np.random.rand(4096, 4096).astype(np.float32)
matrix2 = np.random.rand(4096, 4096).astype(np.float32)
matrix3 = np.zeros((4096, 4096), dtype=np.float32)

np.save("matrix1.npy", matrix1)
np.save("matrix2.npy", matrix2)
np.save("matrix3.npy", matrix3)
