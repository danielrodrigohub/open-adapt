package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: AdapterHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements z.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC0032a f2600d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i0.e<b> f2597a = new i0.f(30);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList<b> f2598b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<b> f2599c = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2602f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final z f2601e = new z(this);

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdapterHelper.java */
    public interface InterfaceC0032a {
    }

    /* JADX INFO: compiled from: AdapterHelper.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2603a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2604b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f2605c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2606d;

        public b(int i10, int i11, int i12, Object obj) {
            this.f2603a = i10;
            this.f2604b = i11;
            this.f2606d = i12;
            this.f2605c = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i10 = this.f2603a;
            if (i10 != bVar.f2603a) {
                return false;
            }
            if (i10 == 8 && Math.abs(this.f2606d - this.f2604b) == 1 && this.f2606d == bVar.f2604b && this.f2604b == bVar.f2606d) {
                return true;
            }
            if (this.f2606d != bVar.f2606d || this.f2604b != bVar.f2604b) {
                return false;
            }
            Object obj2 = this.f2605c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f2605c)) {
                    return false;
                }
            } else if (bVar.f2605c != null) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (((this.f2603a * 31) + this.f2604b) * 31) + this.f2606d;
        }

        public final String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Integer.toHexString(System.identityHashCode(this)));
            sb2.append("[");
            int i10 = this.f2603a;
            if (i10 == 1) {
                str = "add";
            } else if (i10 == 2) {
                str = "rm";
            } else if (i10 != 4) {
                str = i10 != 8 ? "??" : "mv";
            } else {
                str = "up";
            }
            sb2.append(str);
            sb2.append(",s:");
            sb2.append(this.f2604b);
            sb2.append("c:");
            sb2.append(this.f2606d);
            sb2.append(",p:");
            sb2.append(this.f2605c);
            sb2.append("]");
            return sb2.toString();
        }
    }

    public a(InterfaceC0032a interfaceC0032a) {
        this.f2600d = interfaceC0032a;
    }

    public final boolean a(int i10) {
        int size = this.f2599c.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = this.f2599c.get(i11);
            int i12 = bVar.f2603a;
            if (i12 == 8) {
                if (f(bVar.f2606d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = bVar.f2604b;
                int i14 = bVar.f2606d + i13;
                while (i13 < i14) {
                    if (f(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        int size = this.f2599c.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((g0) this.f2600d).a(this.f2599c.get(i10));
        }
        l(this.f2599c);
        this.f2602f = 0;
    }

    public final void c() {
        b();
        int size = this.f2598b.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = this.f2598b.get(i10);
            int i11 = bVar.f2603a;
            if (i11 == 1) {
                ((g0) this.f2600d).a(bVar);
                ((g0) this.f2600d).d(bVar.f2604b, bVar.f2606d);
            } else if (i11 == 2) {
                ((g0) this.f2600d).a(bVar);
                InterfaceC0032a interfaceC0032a = this.f2600d;
                int i12 = bVar.f2604b;
                int i13 = bVar.f2606d;
                g0 g0Var = (g0) interfaceC0032a;
                g0Var.f2629a.T(i12, i13, true);
                RecyclerView recyclerView = g0Var.f2629a;
                recyclerView.f2426r0 = true;
                recyclerView.f2420o0.f2545c += i13;
            } else if (i11 == 4) {
                ((g0) this.f2600d).a(bVar);
                ((g0) this.f2600d).c(bVar.f2604b, bVar.f2606d, bVar.f2605c);
            } else if (i11 == 8) {
                ((g0) this.f2600d).a(bVar);
                ((g0) this.f2600d).e(bVar.f2604b, bVar.f2606d);
            }
        }
        l(this.f2598b);
        this.f2602f = 0;
    }

    public final void d(b bVar) {
        int i10;
        int i11 = bVar.f2603a;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iM = m(bVar.f2604b, i11);
        int i12 = bVar.f2604b;
        int i13 = bVar.f2603a;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < bVar.f2606d; i15++) {
            int iM2 = m((i10 * i15) + bVar.f2604b, bVar.f2603a);
            int i16 = bVar.f2603a;
            if (i16 == 2 ? iM2 == iM : i16 == 4 && iM2 == iM + 1) {
                i14++;
            } else {
                b bVarH = h(i16, iM, i14, bVar.f2605c);
                e(bVarH, i12);
                bVarH.f2605c = null;
                this.f2597a.a(bVarH);
                if (bVar.f2603a == 4) {
                    i12 += i14;
                }
                i14 = 1;
                iM = iM2;
            }
        }
        Object obj = bVar.f2605c;
        bVar.f2605c = null;
        this.f2597a.a(bVar);
        if (i14 > 0) {
            b bVarH2 = h(bVar.f2603a, iM, i14, obj);
            e(bVarH2, i12);
            bVarH2.f2605c = null;
            this.f2597a.a(bVarH2);
        }
    }

    public final void e(b bVar, int i10) {
        ((g0) this.f2600d).a(bVar);
        int i11 = bVar.f2603a;
        if (i11 != 2) {
            if (i11 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            ((g0) this.f2600d).c(i10, bVar.f2606d, bVar.f2605c);
            return;
        }
        InterfaceC0032a interfaceC0032a = this.f2600d;
        int i12 = bVar.f2606d;
        g0 g0Var = (g0) interfaceC0032a;
        g0Var.f2629a.T(i10, i12, true);
        RecyclerView recyclerView = g0Var.f2629a;
        recyclerView.f2426r0 = true;
        recyclerView.f2420o0.f2545c += i12;
    }

    public final int f(int i10, int i11) {
        int size = this.f2599c.size();
        while (i11 < size) {
            b bVar = this.f2599c.get(i11);
            int i12 = bVar.f2603a;
            if (i12 == 8) {
                int i13 = bVar.f2604b;
                if (i13 == i10) {
                    i10 = bVar.f2606d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (bVar.f2606d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = bVar.f2604b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = bVar.f2606d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += bVar.f2606d;
                }
            }
            i11++;
        }
        return i10;
    }

    public final boolean g() {
        return this.f2598b.size() > 0;
    }

    public final b h(int i10, int i11, int i12, Object obj) {
        b bVarB = this.f2597a.b();
        if (bVarB == null) {
            return new b(i10, i11, i12, obj);
        }
        bVarB.f2603a = i10;
        bVarB.f2604b = i11;
        bVarB.f2606d = i12;
        bVarB.f2605c = obj;
        return bVarB;
    }

    public final void i(b bVar) {
        this.f2599c.add(bVar);
        int i10 = bVar.f2603a;
        if (i10 == 1) {
            ((g0) this.f2600d).d(bVar.f2604b, bVar.f2606d);
            return;
        }
        if (i10 == 2) {
            g0 g0Var = (g0) this.f2600d;
            g0Var.f2629a.T(bVar.f2604b, bVar.f2606d, false);
            g0Var.f2629a.f2426r0 = true;
            return;
        }
        if (i10 == 4) {
            ((g0) this.f2600d).c(bVar.f2604b, bVar.f2606d, bVar.f2605c);
        } else if (i10 == 8) {
            ((g0) this.f2600d).e(bVar.f2604b, bVar.f2606d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0199  */
    /* JADX WARN: Code duplicated, block: B:103:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:104:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:182:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x013f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x01b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x006b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0070  */
    /* JADX WARN: Code duplicated, block: B:32:0x0075  */
    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    /* JADX WARN: Code duplicated, block: B:37:0x0094  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:75:0x0141  */
    /* JADX WARN: Code duplicated, block: B:76:0x0143  */
    /* JADX WARN: Code duplicated, block: B:78:0x0149  */
    /* JADX WARN: Code duplicated, block: B:81:0x0154  */
    /* JADX WARN: Code duplicated, block: B:84:0x015f  */
    /* JADX WARN: Code duplicated, block: B:87:0x016a  */
    /* JADX WARN: Code duplicated, block: B:88:0x0170  */
    /* JADX WARN: Code duplicated, block: B:89:0x0172  */
    /* JADX WARN: Code duplicated, block: B:91:0x0178  */
    /* JADX WARN: Code duplicated, block: B:94:0x0183  */
    /* JADX WARN: Code duplicated, block: B:97:0x018e  */
    public final void j() {
        boolean z10;
        byte b10;
        b bVarH;
        int i10;
        int i11;
        int i12;
        b bVarH2;
        boolean z11;
        boolean z12;
        b bVarH3;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        z zVar = this.f2601e;
        ArrayList<b> arrayList = this.f2598b;
        Objects.requireNonNull(zVar);
        while (true) {
            int size = arrayList.size() - 1;
            boolean z13 = false;
            while (true) {
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (arrayList.get(size).f2603a == 8) {
                    if (z13) {
                        break;
                    }
                } else {
                    z13 = true;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i21 = size + 1;
            b bVar = arrayList.get(size);
            b bVar2 = arrayList.get(i21);
            int i22 = bVar2.f2603a;
            if (i22 == 1) {
                int i23 = bVar.f2606d;
                int i24 = bVar2.f2604b;
                int i25 = i23 < i24 ? -1 : 0;
                int i26 = bVar.f2604b;
                if (i26 < i24) {
                    i25++;
                }
                if (i24 <= i26) {
                    bVar.f2604b = i26 + bVar2.f2606d;
                }
                int i27 = bVar2.f2604b;
                if (i27 <= i23) {
                    bVar.f2606d = i23 + bVar2.f2606d;
                }
                bVar2.f2604b = i27 + i25;
                arrayList.set(size, bVar2);
                arrayList.set(i21, bVar);
            } else if (i22 == 2) {
                int i28 = bVar.f2604b;
                int i29 = bVar.f2606d;
                if (i28 < i29) {
                    if (bVar2.f2604b == i28 && bVar2.f2606d == i29 - i28) {
                        z12 = true;
                        z11 = false;
                    } else {
                        z12 = false;
                        z11 = z12;
                    }
                } else if (bVar2.f2604b == i29 + 1 && bVar2.f2606d == i28 - i29) {
                    z12 = true;
                    z11 = z12;
                } else {
                    z11 = true;
                    z12 = false;
                }
                int i30 = bVar2.f2604b;
                if (i29 < i30) {
                    bVar2.f2604b = i30 - 1;
                } else {
                    int i31 = bVar2.f2606d;
                    if (i29 < i30 + i31) {
                        bVar2.f2606d = i31 - 1;
                        bVar.f2603a = 2;
                        bVar.f2606d = 1;
                        if (bVar2.f2606d == 0) {
                            arrayList.remove(i21);
                            a aVar = (a) zVar.f2842a;
                            Objects.requireNonNull(aVar);
                            bVar2.f2605c = null;
                            aVar.f2597a.a(bVar2);
                        }
                    }
                }
                int i32 = bVar.f2604b;
                int i33 = bVar2.f2604b;
                if (i32 <= i33) {
                    bVar2.f2604b = i33 + 1;
                } else {
                    int i34 = i33 + bVar2.f2606d;
                    if (i32 < i34) {
                        bVarH3 = ((a) zVar.f2842a).h(2, i32 + 1, i34 - i32, null);
                        bVar2.f2606d = bVar.f2604b - bVar2.f2604b;
                    }
                    if (z12) {
                        arrayList.set(size, bVar2);
                        arrayList.remove(i21);
                        a aVar2 = (a) zVar.f2842a;
                        Objects.requireNonNull(aVar2);
                        bVar.f2605c = null;
                        aVar2.f2597a.a(bVar);
                    } else {
                        if (z11) {
                            if (bVarH3 != null) {
                                i19 = bVar.f2604b;
                                if (i19 > bVarH3.f2604b) {
                                    bVar.f2604b = i19 - bVarH3.f2606d;
                                }
                                i20 = bVar.f2606d;
                                if (i20 > bVarH3.f2604b) {
                                    bVar.f2606d = i20 - bVarH3.f2606d;
                                }
                            }
                            i17 = bVar.f2604b;
                            if (i17 > bVar2.f2604b) {
                                bVar.f2604b = i17 - bVar2.f2606d;
                            }
                            i18 = bVar.f2606d;
                            if (i18 > bVar2.f2604b) {
                                bVar.f2606d = i18 - bVar2.f2606d;
                            }
                        } else {
                            if (bVarH3 != null) {
                                i15 = bVar.f2604b;
                                if (i15 >= bVarH3.f2604b) {
                                    bVar.f2604b = i15 - bVarH3.f2606d;
                                }
                                i16 = bVar.f2606d;
                                if (i16 >= bVarH3.f2604b) {
                                    bVar.f2606d = i16 - bVarH3.f2606d;
                                }
                            }
                            i13 = bVar.f2604b;
                            if (i13 >= bVar2.f2604b) {
                                bVar.f2604b = i13 - bVar2.f2606d;
                            }
                            i14 = bVar.f2606d;
                            if (i14 >= bVar2.f2604b) {
                                bVar.f2606d = i14 - bVar2.f2606d;
                            }
                        }
                        arrayList.set(size, bVar2);
                        if (bVar.f2604b != bVar.f2606d) {
                            arrayList.set(i21, bVar);
                        } else {
                            arrayList.remove(i21);
                        }
                        if (bVarH3 != null) {
                            arrayList.add(size, bVarH3);
                        }
                    }
                }
                bVarH3 = null;
                if (z12) {
                    arrayList.set(size, bVar2);
                    arrayList.remove(i21);
                    a aVar3 = (a) zVar.f2842a;
                    Objects.requireNonNull(aVar3);
                    bVar.f2605c = null;
                    aVar3.f2597a.a(bVar);
                } else {
                    if (z11) {
                        if (bVarH3 != null) {
                            i19 = bVar.f2604b;
                            if (i19 > bVarH3.f2604b) {
                                bVar.f2604b = i19 - bVarH3.f2606d;
                            }
                            i20 = bVar.f2606d;
                            if (i20 > bVarH3.f2604b) {
                                bVar.f2606d = i20 - bVarH3.f2606d;
                            }
                        }
                        i17 = bVar.f2604b;
                        if (i17 > bVar2.f2604b) {
                            bVar.f2604b = i17 - bVar2.f2606d;
                        }
                        i18 = bVar.f2606d;
                        if (i18 > bVar2.f2604b) {
                            bVar.f2606d = i18 - bVar2.f2606d;
                        }
                    } else {
                        if (bVarH3 != null) {
                            i15 = bVar.f2604b;
                            if (i15 >= bVarH3.f2604b) {
                                bVar.f2604b = i15 - bVarH3.f2606d;
                            }
                            i16 = bVar.f2606d;
                            if (i16 >= bVarH3.f2604b) {
                                bVar.f2606d = i16 - bVarH3.f2606d;
                            }
                        }
                        i13 = bVar.f2604b;
                        if (i13 >= bVar2.f2604b) {
                            bVar.f2604b = i13 - bVar2.f2606d;
                        }
                        i14 = bVar.f2606d;
                        if (i14 >= bVar2.f2604b) {
                            bVar.f2606d = i14 - bVar2.f2606d;
                        }
                    }
                    arrayList.set(size, bVar2);
                    if (bVar.f2604b != bVar.f2606d) {
                        arrayList.set(i21, bVar);
                    } else {
                        arrayList.remove(i21);
                    }
                    if (bVarH3 != null) {
                        arrayList.add(size, bVarH3);
                    }
                }
            } else if (i22 == 4) {
                int i35 = bVar.f2606d;
                int i36 = bVar2.f2604b;
                if (i35 < i36) {
                    bVar2.f2604b = i36 - 1;
                } else {
                    int i37 = bVar2.f2606d;
                    if (i35 < i36 + i37) {
                        bVar2.f2606d = i37 - 1;
                        bVarH = ((a) zVar.f2842a).h(4, bVar.f2604b, 1, bVar2.f2605c);
                    }
                    i10 = bVar.f2604b;
                    i11 = bVar2.f2604b;
                    if (i10 <= i11) {
                        bVar2.f2604b = i11 + 1;
                    } else {
                        i12 = i11 + bVar2.f2606d;
                        if (i10 < i12) {
                            int i38 = i12 - i10;
                            bVarH2 = ((a) zVar.f2842a).h(4, i10 + 1, i38, bVar2.f2605c);
                            bVar2.f2606d -= i38;
                        }
                        arrayList.set(i21, bVar);
                        if (bVar2.f2606d > 0) {
                            arrayList.set(size, bVar2);
                        } else {
                            arrayList.remove(size);
                            a aVar4 = (a) zVar.f2842a;
                            Objects.requireNonNull(aVar4);
                            bVar2.f2605c = null;
                            aVar4.f2597a.a(bVar2);
                        }
                        if (bVarH != null) {
                            arrayList.add(size, bVarH);
                        }
                        if (bVarH2 != null) {
                            arrayList.add(size, bVarH2);
                        }
                    }
                    bVarH2 = null;
                    arrayList.set(i21, bVar);
                    if (bVar2.f2606d > 0) {
                        arrayList.set(size, bVar2);
                    } else {
                        arrayList.remove(size);
                        a aVar5 = (a) zVar.f2842a;
                        Objects.requireNonNull(aVar5);
                        bVar2.f2605c = null;
                        aVar5.f2597a.a(bVar2);
                    }
                    if (bVarH != null) {
                        arrayList.add(size, bVarH);
                    }
                    if (bVarH2 != null) {
                        arrayList.add(size, bVarH2);
                    }
                }
                bVarH = null;
                i10 = bVar.f2604b;
                i11 = bVar2.f2604b;
                if (i10 <= i11) {
                    bVar2.f2604b = i11 + 1;
                } else {
                    i12 = i11 + bVar2.f2606d;
                    if (i10 < i12) {
                        int i39 = i12 - i10;
                        bVarH2 = ((a) zVar.f2842a).h(4, i10 + 1, i39, bVar2.f2605c);
                        bVar2.f2606d -= i39;
                    }
                    arrayList.set(i21, bVar);
                    if (bVar2.f2606d > 0) {
                        arrayList.set(size, bVar2);
                    } else {
                        arrayList.remove(size);
                        a aVar6 = (a) zVar.f2842a;
                        Objects.requireNonNull(aVar6);
                        bVar2.f2605c = null;
                        aVar6.f2597a.a(bVar2);
                    }
                    if (bVarH != null) {
                        arrayList.add(size, bVarH);
                    }
                    if (bVarH2 != null) {
                        arrayList.add(size, bVarH2);
                    }
                }
                bVarH2 = null;
                arrayList.set(i21, bVar);
                if (bVar2.f2606d > 0) {
                    arrayList.set(size, bVar2);
                } else {
                    arrayList.remove(size);
                    a aVar7 = (a) zVar.f2842a;
                    Objects.requireNonNull(aVar7);
                    bVar2.f2605c = null;
                    aVar7.f2597a.a(bVar2);
                }
                if (bVarH != null) {
                    arrayList.add(size, bVarH);
                }
                if (bVarH2 != null) {
                    arrayList.add(size, bVarH2);
                }
            }
        }
        int size2 = this.f2598b.size();
        for (int i40 = 0; i40 < size2; i40++) {
            b bVarH4 = this.f2598b.get(i40);
            int i41 = bVarH4.f2603a;
            if (i41 == 1) {
                i(bVarH4);
            } else if (i41 == 2) {
                int i42 = bVarH4.f2604b;
                int i43 = bVarH4.f2606d + i42;
                int i44 = i42;
                byte b11 = -1;
                int i45 = 0;
                while (i44 < i43) {
                    if (((g0) this.f2600d).b(i44) != null || a(i44)) {
                        if (b11 == 0) {
                            d(h(2, i42, i45, null));
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        b10 = 1;
                    } else {
                        if (b11 == 1) {
                            i(h(2, i42, i45, null));
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        b10 = 0;
                    }
                    if (z10) {
                        i44 -= i45;
                        i43 -= i45;
                        i45 = 1;
                    } else {
                        i45++;
                    }
                    i44++;
                    b11 = b10;
                }
                if (i45 != bVarH4.f2606d) {
                    bVarH4.f2605c = null;
                    this.f2597a.a(bVarH4);
                    bVarH4 = h(2, i42, i45, null);
                }
                if (b11 == 0) {
                    d(bVarH4);
                } else {
                    i(bVarH4);
                }
            } else if (i41 == 4) {
                int i46 = bVarH4.f2604b;
                int i47 = bVarH4.f2606d + i46;
                byte b12 = -1;
                int i48 = i46;
                int i49 = 0;
                while (i46 < i47) {
                    if (((g0) this.f2600d).b(i46) != null || a(i46)) {
                        if (b12 == 0) {
                            d(h(4, i48, i49, bVarH4.f2605c));
                            i48 = i46;
                            i49 = 0;
                        }
                        b12 = 1;
                    } else {
                        if (b12 == 1) {
                            i(h(4, i48, i49, bVarH4.f2605c));
                            i48 = i46;
                            i49 = 0;
                        }
                        b12 = 0;
                    }
                    i49++;
                    i46++;
                }
                if (i49 != bVarH4.f2606d) {
                    Object obj = bVarH4.f2605c;
                    bVarH4.f2605c = null;
                    this.f2597a.a(bVarH4);
                    bVarH4 = h(4, i48, i49, obj);
                }
                if (b12 == 0) {
                    d(bVarH4);
                } else {
                    i(bVarH4);
                }
            } else if (i41 == 8) {
                i(bVarH4);
            }
        }
        this.f2598b.clear();
    }

    public final void k(b bVar) {
        bVar.f2605c = null;
        this.f2597a.a(bVar);
    }

    public final void l(List<b> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            k(list.get(i10));
        }
        list.clear();
    }

    public final int m(int i10, int i11) {
        int i12;
        int i13;
        for (int size = this.f2599c.size() - 1; size >= 0; size--) {
            b bVar = this.f2599c.get(size);
            int i14 = bVar.f2603a;
            if (i14 == 8) {
                int i15 = bVar.f2604b;
                int i16 = bVar.f2606d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            bVar.f2604b = i15 + 1;
                            bVar.f2606d = i16 + 1;
                        } else if (i11 == 2) {
                            bVar.f2604b = i15 - 1;
                            bVar.f2606d = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        bVar.f2606d = i16 + 1;
                    } else if (i11 == 2) {
                        bVar.f2606d = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        bVar.f2604b = i15 + 1;
                    } else if (i11 == 2) {
                        bVar.f2604b = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = bVar.f2604b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= bVar.f2606d;
                    } else if (i14 == 2) {
                        i10 += bVar.f2606d;
                    }
                } else if (i11 == 1) {
                    bVar.f2604b = i17 + 1;
                } else if (i11 == 2) {
                    bVar.f2604b = i17 - 1;
                }
            }
        }
        for (int size2 = this.f2599c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f2599c.get(size2);
            if (bVar2.f2603a == 8) {
                int i18 = bVar2.f2606d;
                if (i18 == bVar2.f2604b || i18 < 0) {
                    this.f2599c.remove(size2);
                    k(bVar2);
                }
            } else if (bVar2.f2606d <= 0) {
                this.f2599c.remove(size2);
                k(bVar2);
            }
        }
        return i10;
    }
}
