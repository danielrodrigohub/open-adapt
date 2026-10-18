package a4;

import java.io.IOException;
import m5.w;

/* JADX INFO: compiled from: Sniffer.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f331a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0, types: [s3.i] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static boolean a(s3.i iVar, boolean z10, boolean z11) throws IOException {
        ?? r10;
        boolean z12;
        ?? r11;
        boolean z13;
        ?? r12;
        boolean z14;
        long jA = iVar.a();
        long j10 = -1;
        long j11 = 4096;
        if (jA != -1 && jA <= 4096) {
            j11 = jA;
        }
        int i10 = (int) j11;
        w wVar = new w(64);
        ?? r13 = 0;
        int i11 = 0;
        boolean z15 = false;
        while (true) {
            if (i11 < i10) {
                wVar.A(8);
                if (iVar.p(wVar.f10475a, r13, 8, true)) {
                    long jU = wVar.u();
                    int iE = wVar.e();
                    int i12 = 16;
                    if (jU == 1) {
                        iVar.s(wVar.f10475a, 8, 8);
                        wVar.C(16);
                        jU = wVar.m();
                    } else {
                        if (jU == 0) {
                            long jA2 = iVar.a();
                            if (jA2 != j10) {
                                jU = (jA2 - iVar.q()) + ((long) 8);
                            }
                        }
                        i12 = 8;
                    }
                    long j12 = i12;
                    if (jU < j12) {
                        return r13;
                    }
                    i11 += i12;
                    if (iE == 1836019574) {
                        i10 += (int) jU;
                        if (jA != -1 && i10 > jA) {
                            i10 = (int) jA;
                        }
                        r12 = r13;
                    } else if (iE == 1836019558 || iE == 1836475768) {
                        r11 = r13;
                        z12 = true;
                        z13 = true;
                    } else {
                        jA = jA;
                        if ((((long) i11) + jU) - j12 >= i10) {
                            r10 = 0;
                            z12 = true;
                            z13 = r10 == true ? 1 : 0;
                            r11 = r10;
                        } else {
                            int i13 = (int) (jU - j12);
                            i11 += i13;
                            if (iE != 1718909296) {
                                r12 = 0;
                                r12 = 0;
                                if (i13 != 0) {
                                    iVar.t(i13);
                                }
                            } else {
                                if (i13 < 8) {
                                    return false;
                                }
                                wVar.A(i13);
                                iVar.s(wVar.f10475a, 0, i13);
                                int i14 = i13 / 4;
                                for (int i15 = 0; i15 < i14; i15++) {
                                    if (i15 != 1) {
                                        int iE2 = wVar.e();
                                        if ((iE2 >>> 8) == 3368816 || (iE2 == 1751476579 && z11)) {
                                            z14 = true;
                                            break;
                                        }
                                        int[] iArr = f331a;
                                        int i16 = 0;
                                        while (true) {
                                            if (i16 >= 29) {
                                                z14 = false;
                                                break;
                                            }
                                            if (iArr[i16] == iE2) {
                                                z14 = true;
                                                break;
                                            }
                                            i16++;
                                        }
                                        if (z14) {
                                            z15 = true;
                                            break;
                                        }
                                    } else {
                                        wVar.E(4);
                                    }
                                }
                                r12 = 0;
                                if (!z15) {
                                    return false;
                                }
                            }
                        }
                    }
                    r13 = r12;
                    jA = jA;
                    j10 = -1;
                    z15 = z15;
                }
                return (z15 || z10 != z13) ? r11 : z12;
            }
            r10 = r13;
            z12 = true;
            z13 = r10 == true ? 1 : 0;
            r11 = r10;
            if (z15) {
            }
        }
    }
}
