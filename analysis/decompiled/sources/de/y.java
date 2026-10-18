package de;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;

/* JADX INFO: compiled from: Options.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class y extends gd.c<g> implements RandomAccess {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f6279j = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g[] f6280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f6281i;

    /* JADX INFO: compiled from: Options.kt */
    public static final class a {
        public final void a(long j10, c cVar, int i10, List<? extends g> list, int i11, int i12, List<Integer> list2) throws IOException {
            int i13;
            int i14;
            int i15;
            int i16;
            int i17 = i10;
            if (!(i11 < i12)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            for (int i18 = i11; i18 < i12; i18++) {
                if (!(list.get(i18).j() >= i17)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
            g gVar = list.get(i11);
            g gVar2 = list.get(i12 - 1);
            if (i17 == gVar.j()) {
                int iIntValue = list2.get(i11).intValue();
                int i19 = i11 + 1;
                g gVar3 = list.get(i19);
                i13 = i19;
                i14 = iIntValue;
                gVar = gVar3;
            } else {
                i13 = i11;
                i14 = -1;
            }
            if (gVar.o(i17) == gVar2.o(i17)) {
                int iMin = Math.min(gVar.j(), gVar2.j());
                int i20 = 0;
                for (int i21 = i17; i21 < iMin && gVar.o(i21) == gVar2.o(i21); i21++) {
                    i20++;
                }
                long j11 = 4;
                long j12 = (cVar.f6199i / j11) + j10 + ((long) 2) + ((long) i20) + 1;
                cVar.B0(-i20);
                cVar.B0(i14);
                int i22 = i17 + i20;
                while (i17 < i22) {
                    cVar.B0(gVar.o(i17) & 255);
                    i17++;
                }
                if (i13 + 1 == i12) {
                    if (!(i22 == list.get(i13).j())) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    cVar.B0(list2.get(i13).intValue());
                    return;
                } else {
                    c cVar2 = new c();
                    cVar.B0(((int) ((cVar2.f6199i / j11) + j12)) * (-1));
                    a(j12, cVar2, i22, list, i13, i12, list2);
                    cVar.s(cVar2);
                    return;
                }
            }
            int i23 = 1;
            for (int i24 = i13 + 1; i24 < i12; i24++) {
                if (list.get(i24 - 1).o(i17) != list.get(i24).o(i17)) {
                    i23++;
                }
            }
            long j13 = 4;
            long j14 = ((long) (i23 * 2)) + (cVar.f6199i / j13) + j10 + ((long) 2);
            cVar.B0(i23);
            cVar.B0(i14);
            for (int i25 = i13; i25 < i12; i25++) {
                byte bO = list.get(i25).o(i17);
                if (i25 == i13 || bO != list.get(i25 - 1).o(i17)) {
                    cVar.B0(bO & 255);
                }
            }
            c cVar3 = new c();
            while (i13 < i12) {
                byte bO2 = list.get(i13).o(i17);
                int i26 = i13 + 1;
                int i27 = i26;
                while (true) {
                    if (i27 >= i12) {
                        i15 = i12;
                        break;
                    } else {
                        if (bO2 != list.get(i27).o(i17)) {
                            i15 = i27;
                            break;
                        }
                        i27++;
                    }
                }
                if (i26 == i15 && i17 + 1 == list.get(i13).j()) {
                    cVar.B0(list2.get(i13).intValue());
                    i16 = i15;
                } else {
                    cVar.B0(((int) ((cVar3.f6199i / j13) + j14)) * (-1));
                    i16 = i15;
                    a(j14, cVar3, i17 + 1, list, i13, i16, list2);
                }
                cVar3 = cVar3;
                i13 = i16;
                j13 = j13;
                j14 = j14;
            }
            cVar.s(cVar3);
        }

        public final y b(g... gVarArr) throws IOException {
            int i10;
            int i11 = 0;
            if (gVarArr.length == 0) {
                return new y(new g[0], new int[]{0, -1});
            }
            List<? extends g> listW = gd.i.w(gVarArr);
            gd.k.U(listW);
            ArrayList arrayList = new ArrayList(gVarArr.length);
            for (g gVar : gVarArr) {
                arrayList.add(-1);
            }
            Object[] array = arrayList.toArray(new Integer[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            Integer[] numArr = (Integer[]) array;
            List<Integer> listC = androidx.lifecycle.o.C(Arrays.copyOf(numArr, numArr.length));
            int length = gVarArr.length;
            int i12 = 0;
            int i13 = 0;
            while (i12 < length) {
                g gVar2 = gVarArr[i12];
                int i14 = i13 + 1;
                ArrayList arrayList2 = (ArrayList) listW;
                int size = arrayList2.size();
                int size2 = arrayList2.size();
                if (size < 0) {
                    throw new IllegalArgumentException("fromIndex (0) is greater than toIndex (" + size + ").");
                }
                if (size > size2) {
                    throw new IndexOutOfBoundsException("toIndex (" + size + ") is greater than size (" + size2 + ").");
                }
                int i15 = size - 1;
                int i16 = 0;
                while (true) {
                    if (i16 > i15) {
                        i10 = -(i16 + 1);
                        break;
                    }
                    i10 = (i16 + i15) >>> 1;
                    int iB = hd.a.b((Comparable) arrayList2.get(i10), gVar2);
                    if (iB >= 0) {
                        if (iB <= 0) {
                            break;
                        }
                        i15 = i10 - 1;
                    } else {
                        i16 = i10 + 1;
                    }
                }
                listC.set(i10, Integer.valueOf(i13));
                i12++;
                i13 = i14;
            }
            ArrayList arrayList3 = (ArrayList) listW;
            if (!(((g) arrayList3.get(0)).j() > 0)) {
                throw new IllegalArgumentException("the empty byte string is not a supported option".toString());
            }
            int i17 = 0;
            while (i17 < arrayList3.size()) {
                g gVar3 = (g) arrayList3.get(i17);
                int i18 = i17 + 1;
                int i19 = i18;
                while (i19 < arrayList3.size()) {
                    g gVar4 = (g) arrayList3.get(i19);
                    if (!gVar4.w(gVar3)) {
                        break;
                    }
                    if (!(gVar4.j() != gVar3.j())) {
                        throw new IllegalArgumentException(("duplicate option: " + gVar4).toString());
                    }
                    if (listC.get(i19).intValue() > listC.get(i17).intValue()) {
                        arrayList3.remove(i19);
                        listC.remove(i19);
                    } else {
                        i19++;
                    }
                }
                i17 = i18;
            }
            c cVar = new c();
            a(0L, cVar, 0, listW, 0, arrayList3.size(), listC);
            int[] iArr = new int[(int) (cVar.f6199i / ((long) 4))];
            while (!cVar.z()) {
                iArr[i11] = cVar.readInt();
                i11++;
            }
            Object[] objArrCopyOf = Arrays.copyOf(gVarArr, gVarArr.length);
            p4.h.i(objArrCopyOf, "copyOf(this, size)");
            return new y((g[]) objArrCopyOf, iArr);
        }
    }

    public y(g[] gVarArr, int[] iArr) {
        this.f6280h = gVarArr;
        this.f6281i = iArr;
    }

    @Override // gd.a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof g) {
            return super.contains((g) obj);
        }
        return false;
    }

    @Override // gd.c, java.util.List
    public final Object get(int i10) {
        return this.f6280h[i10];
    }

    @Override // gd.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof g) {
            return super.indexOf((g) obj);
        }
        return -1;
    }

    @Override // gd.a
    public final int k() {
        return this.f6280h.length;
    }

    @Override // gd.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof g) {
            return super.lastIndexOf((g) obj);
        }
        return -1;
    }
}
