package u6;

import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: RegularImmutableMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class q0<K, V> extends x<K, V> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final x<Object, Object> f15971n = new q0(null, new Object[0], 0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @CheckForNull
    public final transient Object f15972k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final transient Object[] f15973l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final transient int f15974m;

    /* JADX INFO: compiled from: RegularImmutableMap.java */
    public static class a<K, V> extends a0<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final transient x<K, V> f15975k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final transient Object[] f15976l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final transient int f15977m = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final transient int f15978n;

        /* JADX INFO: renamed from: u6.q0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: RegularImmutableMap.java */
        public class C0277a extends v<Map.Entry<K, V>> {
            public C0277a() {
            }

            @Override // java.util.List
            public final Object get(int i10) {
                t6.h.c(i10, a.this.f15978n);
                a aVar = a.this;
                int i11 = i10 * 2;
                Object obj = aVar.f15976l[aVar.f15977m + i11];
                Objects.requireNonNull(obj);
                a aVar2 = a.this;
                Object obj2 = aVar2.f15976l[i11 + (aVar2.f15977m ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // u6.t
            public final boolean o() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                return a.this.f15978n;
            }
        }

        public a(x xVar, Object[] objArr, int i10) {
            this.f15975k = xVar;
            this.f15976l = objArr;
            this.f15978n = i10;
        }

        @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f15975k.get(key));
        }

        @Override // u6.t
        public final int k(Object[] objArr, int i10) {
            return h().k(objArr, i10);
        }

        @Override // u6.t
        public final boolean o() {
            return true;
        }

        @Override // u6.a0, u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: p */
        public final y0<Map.Entry<K, V>> iterator() {
            return h().listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f15978n;
        }

        @Override // u6.a0
        public final v<Map.Entry<K, V>> t() {
            return new C0277a();
        }
    }

    /* JADX INFO: compiled from: RegularImmutableMap.java */
    public static final class b<K> extends a0<K> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final transient x<K, ?> f15980k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final transient v<K> f15981l;

        public b(x<K, ?> xVar, v<K> vVar) {
            this.f15980k = xVar;
            this.f15981l = vVar;
        }

        @Override // u6.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(@CheckForNull Object obj) {
            return this.f15980k.get(obj) != null;
        }

        @Override // u6.a0, u6.t
        public final v<K> h() {
            return this.f15981l;
        }

        @Override // u6.t
        public final int k(Object[] objArr, int i10) {
            return this.f15981l.k(objArr, i10);
        }

        @Override // u6.t
        public final boolean o() {
            return true;
        }

        @Override // u6.a0, u6.t, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: p */
        public final y0<K> iterator() {
            return this.f15981l.listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f15980k.size();
        }
    }

    /* JADX INFO: compiled from: RegularImmutableMap.java */
    public static final class c extends v<Object> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final transient Object[] f15982j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final transient int f15983k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final transient int f15984l;

        public c(Object[] objArr, int i10, int i11) {
            this.f15982j = objArr;
            this.f15983k = i10;
            this.f15984l = i11;
        }

        @Override // java.util.List
        public final Object get(int i10) {
            t6.h.c(i10, this.f15984l);
            Object obj = this.f15982j[(i10 * 2) + this.f15983k];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // u6.t
        public final boolean o() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f15984l;
        }
    }

    public q0(@CheckForNull Object obj, Object[] objArr, int i10) {
        this.f15972k = obj;
        this.f15973l = objArr;
        this.f15974m = i10;
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [short[], byte[]], vars: [r2v3 ??, r2v5 ??, r2v4 ??, r2v6 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertCasts(FixTypesVisitor.java:475)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        */
    public static <K, V> u6.q0<K, V> j(int r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u6.q0.j(int, java.lang.Object[]):u6.q0");
    }

    public static IllegalArgumentException k(Object obj, Object obj2, Object[] objArr, int i10) {
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(obj2);
        String strValueOf3 = String.valueOf(objArr[i10]);
        String strValueOf4 = String.valueOf(objArr[i10 ^ 1]);
        StringBuilder sb2 = new StringBuilder(strValueOf4.length() + strValueOf3.length() + strValueOf2.length() + strValueOf.length() + 39);
        sb2.append("Multiple entries with same key: ");
        sb2.append(strValueOf);
        sb2.append("=");
        sb2.append(strValueOf2);
        sb2.append(" and ");
        sb2.append(strValueOf3);
        sb2.append("=");
        sb2.append(strValueOf4);
        return new IllegalArgumentException(sb2.toString());
    }

    @Override // u6.x
    public final a0<Map.Entry<K, V>> b() {
        return new a(this, this.f15973l, this.f15974m);
    }

    @Override // u6.x
    public final a0<K> c() {
        return new b(this, new c(this.f15973l, 0, this.f15974m));
    }

    @Override // u6.x
    public final t<V> d() {
        return new c(this.f15973l, 1, this.f15974m);
    }

    @Override // u6.x
    public final void f() {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0020 A[EDGE_INSN: B:44:0x0020->B:10:0x0020 BREAK  A[LOOP:0: B:16:0x0039->B:22:0x004f], EDGE_INSN: B:46:0x0020->B:10:0x0020 BREAK  A[LOOP:1: B:26:0x0064->B:32:0x007b], EDGE_INSN: B:48:0x0020->B:10:0x0020 BREAK  A[LOOP:2: B:34:0x008a->B:43:0x00a0]] */
    @Override // u6.x, java.util.Map
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        V v10;
        Object obj2 = this.f15972k;
        Object[] objArr = this.f15973l;
        int i10 = this.f15974m;
        if (obj == null) {
            v10 = null;
        } else if (i10 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            if (obj3.equals(obj)) {
                v10 = (V) objArr[1];
                Objects.requireNonNull(v10);
            } else {
                v10 = null;
            }
        } else if (obj2 == null) {
            v10 = null;
        } else if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length - 1;
            int iA = s.a(obj.hashCode());
            while (true) {
                int i11 = iA & length;
                int i12 = bArr[i11] & 255;
                if (i12 == 255) {
                    break;
                }
                if (obj.equals(objArr[i12])) {
                    v10 = (V) objArr[i12 ^ 1];
                } else {
                    iA = i11 + 1;
                }
            }
            v10 = null;
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length - 1;
            int iA2 = s.a(obj.hashCode());
            while (true) {
                int i13 = iA2 & length2;
                int i14 = sArr[i13] & 65535;
                if (i14 == 65535) {
                    break;
                }
                if (obj.equals(objArr[i14])) {
                    v10 = (V) objArr[i14 ^ 1];
                } else {
                    iA2 = i13 + 1;
                }
            }
            v10 = null;
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length - 1;
            int iA3 = s.a(obj.hashCode());
            while (true) {
                int i15 = iA3 & length3;
                int i16 = iArr[i15];
                if (i16 == -1) {
                    break;
                }
                if (obj.equals(objArr[i16])) {
                    v10 = (V) objArr[i16 ^ 1];
                } else {
                    iA3 = i15 + 1;
                }
            }
            v10 = null;
        }
        if (v10 == null) {
            return null;
        }
        return v10;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f15974m;
    }
}
