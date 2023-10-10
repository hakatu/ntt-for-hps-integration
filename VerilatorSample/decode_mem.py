import sys
import numpy as np

# Read the memory file and populate the matrix
def loadMatrix(filename, row_size, col_size):
    matrix = np.zeros((row_size, col_size), dtype=np.uint32)
    with open(filename, 'r') as file:
        for line in file:
            if ':' in line:
                address, data = line.strip().split(':')
                address = int(address, 16)
                data = int(data[:-1], 16)
                
                # Calculate the row and column indices in the matrix
                row = address // col_size
                col = address % col_size
                
                # Fill the matrix with the data
                matrix[row, col] = np.array(data).astype(np.uint32)
    return matrix


# Create an empty 128x128 matrix
matrixA = loadMatrix("qts/matA.mif", 128, 128)
matrixB = loadMatrix("qts/matB.mif", 128, 1)
matrixC = loadMatrix("qts/matC.mif", 128, 1)

# Print the resulting matrix
matrixX = np.dot(matrixA, matrixB)
matrixY = np.add(matrixX, matrixC)

np.set_printoptions(formatter={'int':lambda x:hex(int(x))})
# print(matrixY)

sum = 0
for i in range(128):
    sum = sum + matrixY[i][0]

print(hex(sum))