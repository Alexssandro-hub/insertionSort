int main() {

int i, j, v;
int A[10] = {6, 3, 7, 2, 0, 9, 1, 8, 4, 5};

for (i = 1; i < 10; ++i) {
v = A[i];
for (j = i - 1; j >= 0 && A[j] >= v; --j) {
A[j+1] = A[j];
}

A[j+ 1] = v;
}
return 0;
}