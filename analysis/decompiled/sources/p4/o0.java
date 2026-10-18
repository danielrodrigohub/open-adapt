package p4;

import java.util.Arrays;
import java.util.Random;

/* JADX INFO: compiled from: ShuffleOrder.java */
/* JADX INFO: loaded from: classes.dex */
public interface o0 {

    /* JADX INFO: compiled from: ShuffleOrder.java */
    public static class a implements o0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Random f13141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f13142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f13143c;

        public a(Random random) {
            this(new int[0], random);
        }

        @Override // p4.o0
        public final int a() {
            return this.f13142b.length;
        }

        @Override // p4.o0
        public final int b(int i10) {
            int i11 = this.f13143c[i10] + 1;
            int[] iArr = this.f13142b;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
            return -1;
        }

        @Override // p4.o0
        public final int c() {
            int[] iArr = this.f13142b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // p4.o0
        public final o0 d(int i10) {
            int[] iArr = new int[i10];
            int[] iArr2 = new int[i10];
            int i11 = 0;
            int i12 = 0;
            while (i12 < i10) {
                iArr[i12] = this.f13141a.nextInt(this.f13142b.length + 1);
                int i13 = i12 + 1;
                int iNextInt = this.f13141a.nextInt(i13);
                iArr2[i12] = iArr2[iNextInt];
                iArr2[iNextInt] = i12 + 0;
                i12 = i13;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f13142b.length + i10];
            int i14 = 0;
            int i15 = 0;
            while (true) {
                int[] iArr4 = this.f13142b;
                if (i11 >= iArr4.length + i10) {
                    return new a(iArr3, new Random(this.f13141a.nextLong()));
                }
                if (i14 >= i10 || i15 != iArr[i14]) {
                    int i16 = i15 + 1;
                    iArr3[i11] = iArr4[i15];
                    if (iArr3[i11] >= 0) {
                        iArr3[i11] = iArr3[i11] + i10;
                    }
                    i15 = i16;
                } else {
                    iArr3[i11] = iArr2[i14];
                    i14++;
                }
                i11++;
            }
        }

        @Override // p4.o0
        public final o0 e(int i10) {
            int i11 = i10 + 0;
            int[] iArr = new int[this.f13142b.length - i11];
            int i12 = 0;
            int i13 = 0;
            while (true) {
                int[] iArr2 = this.f13142b;
                if (i12 >= iArr2.length) {
                    return new a(iArr, new Random(this.f13141a.nextLong()));
                }
                if (iArr2[i12] < 0 || iArr2[i12] >= i10) {
                    iArr[i12 - i13] = iArr2[i12] >= 0 ? iArr2[i12] - i11 : iArr2[i12];
                } else {
                    i13++;
                }
                i12++;
            }
        }

        @Override // p4.o0
        public final int f(int i10) {
            int i11 = this.f13143c[i10] - 1;
            if (i11 >= 0) {
                return this.f13142b[i11];
            }
            return -1;
        }

        @Override // p4.o0
        public final int g() {
            int[] iArr = this.f13142b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // p4.o0
        public final o0 h() {
            return new a(new Random(this.f13141a.nextLong()));
        }

        public a(int[] iArr, Random random) {
            this.f13142b = iArr;
            this.f13141a = random;
            this.f13143c = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f13143c[iArr[i10]] = i10;
            }
        }
    }

    int a();

    int b(int i10);

    int c();

    o0 d(int i10);

    o0 e(int i10);

    int f(int i10);

    int g();

    o0 h();
}
