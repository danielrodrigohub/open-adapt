package yd;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements xd.d<vd.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f19178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f19180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final qd.p<CharSequence, Integer, fd.e<Integer, Integer>> f19181d;

    /* JADX INFO: compiled from: Strings.kt */
    public static final class a implements Iterator<vd.e>, sd.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f19182h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f19183i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f19184j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public vd.e f19185k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f19186l;

        public a() {
            int i10 = b.this.f19179b;
            int length = b.this.f19178a.length();
            if (length >= 0) {
                if (i10 < 0) {
                    i10 = 0;
                } else if (i10 > length) {
                    i10 = length;
                }
                this.f19183i = i10;
                this.f19184j = i10;
                return;
            }
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + length + " is less than minimum 0.");
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0023  */
        /* JADX WARN: Code duplicated, block: B:12:0x0037  */
        /* JADX WARN: Code duplicated, block: B:14:0x004b  */
        /* JADX WARN: Code duplicated, block: B:15:0x005f  */
        /* JADX WARN: Code duplicated, block: B:17:0x007c  */
        /* JADX WARN: Code duplicated, block: B:9:0x001b  */
        public final void a() {
            fd.e<Integer, Integer> eVarInvoke;
            int i10 = this.f19184j;
            if (i10 < 0) {
                this.f19182h = 0;
                this.f19185k = null;
                return;
            }
            b bVar = b.this;
            int i11 = bVar.f19180c;
            if (i11 > 0) {
                int i12 = this.f19186l + 1;
                this.f19186l = i12;
                if (i12 >= i11) {
                    this.f19185k = new vd.e(this.f19183i, s.l0(b.this.f19178a));
                    this.f19184j = -1;
                } else if (i10 > bVar.f19178a.length()) {
                    this.f19185k = new vd.e(this.f19183i, s.l0(b.this.f19178a));
                    this.f19184j = -1;
                } else {
                    b bVar2 = b.this;
                    eVarInvoke = bVar2.f19181d.invoke(bVar2.f19178a, Integer.valueOf(this.f19184j));
                    if (eVarInvoke == null) {
                        this.f19185k = new vd.e(this.f19183i, s.l0(b.this.f19178a));
                        this.f19184j = -1;
                    } else {
                        int iIntValue = eVarInvoke.f7388h.intValue();
                        int iIntValue2 = eVarInvoke.f7389i.intValue();
                        this.f19185k = androidx.activity.k.w(this.f19183i, iIntValue);
                        int i13 = iIntValue + iIntValue2;
                        this.f19183i = i13;
                        this.f19184j = i13 + (iIntValue2 == 0 ? 1 : 0);
                    }
                }
            } else if (i10 > bVar.f19178a.length()) {
                this.f19185k = new vd.e(this.f19183i, s.l0(b.this.f19178a));
                this.f19184j = -1;
            } else {
                b bVar3 = b.this;
                eVarInvoke = bVar3.f19181d.invoke(bVar3.f19178a, Integer.valueOf(this.f19184j));
                if (eVarInvoke == null) {
                    this.f19185k = new vd.e(this.f19183i, s.l0(b.this.f19178a));
                    this.f19184j = -1;
                } else {
                    int iIntValue3 = eVarInvoke.f7388h.intValue();
                    int iIntValue4 = eVarInvoke.f7389i.intValue();
                    this.f19185k = androidx.activity.k.w(this.f19183i, iIntValue3);
                    int i14 = iIntValue3 + iIntValue4;
                    this.f19183i = i14;
                    this.f19184j = i14 + (iIntValue4 == 0 ? 1 : 0);
                }
            }
            this.f19182h = 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f19182h == -1) {
                a();
            }
            return this.f19182h == 1;
        }

        @Override // java.util.Iterator
        public final vd.e next() {
            if (this.f19182h == -1) {
                a();
            }
            if (this.f19182h == 0) {
                throw new NoSuchElementException();
            }
            vd.e eVar = this.f19185k;
            p4.h.h(eVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f19185k = null;
            this.f19182h = -1;
            return eVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(CharSequence charSequence, int i10, int i11, qd.p<? super CharSequence, ? super Integer, fd.e<Integer, Integer>> pVar) {
        p4.h.j(charSequence, "input");
        this.f19178a = charSequence;
        this.f19179b = i10;
        this.f19180c = i11;
        this.f19181d = pVar;
    }

    @Override // xd.d
    public final Iterator<vd.e> iterator() {
        return new a();
    }
}
