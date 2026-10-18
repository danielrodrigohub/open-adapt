package t4;

import java.util.Locale;

/* JADX INFO: compiled from: UrlTemplate.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f15522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f15523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f15524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15525d;

    public m(String[] strArr, int[] iArr, String[] strArr2, int i10) {
        this.f15522a = strArr;
        this.f15523b = iArr;
        this.f15524c = strArr2;
        this.f15525d = i10;
    }

    public final String a(String str, long j10, int i10, long j11) {
        StringBuilder sb2 = new StringBuilder();
        int i11 = 0;
        while (true) {
            int i12 = this.f15525d;
            if (i11 >= i12) {
                sb2.append(this.f15522a[i12]);
                return sb2.toString();
            }
            sb2.append(this.f15522a[i11]);
            int[] iArr = this.f15523b;
            if (iArr[i11] == 1) {
                sb2.append(str);
            } else if (iArr[i11] == 2) {
                sb2.append(String.format(Locale.US, this.f15524c[i11], Long.valueOf(j10)));
            } else if (iArr[i11] == 3) {
                sb2.append(String.format(Locale.US, this.f15524c[i11], Integer.valueOf(i10)));
            } else if (iArr[i11] == 4) {
                sb2.append(String.format(Locale.US, this.f15524c[i11], Long.valueOf(j11)));
            }
            i11++;
        }
    }
}
