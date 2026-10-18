package p;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p.f.b;
import p.f.c;
import p.f.e;

/* JADX INFO: compiled from: ArrayMap.java */
/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public f<K, V> f12570o;

    /* JADX INFO: renamed from: p.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArrayMap.java */
    public class C0226a extends f<K, V> {
        public C0226a() {
        }

        @Override // p.f
        public final void a() {
            a.this.clear();
        }

        @Override // p.f
        public final Object b(int i10, int i11) {
            return a.this.f12613i[(i10 << 1) + i11];
        }

        @Override // p.f
        public final Map<K, V> c() {
            return a.this;
        }

        @Override // p.f
        public final int d() {
            return a.this.f12614j;
        }

        @Override // p.f
        public final int e(Object obj) {
            return a.this.e(obj);
        }

        @Override // p.f
        public final int f(Object obj) {
            return a.this.g(obj);
        }

        @Override // p.f
        public final void g(K k10, V v10) {
            a.this.put(k10, v10);
        }

        @Override // p.f
        public final void h(int i10) {
            a.this.k(i10);
        }

        @Override // p.f
        public final V i(int i10, V v10) {
            return a.this.l(i10, v10);
        }
    }

    public a() {
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        f<K, V> fVarN = n();
        if (fVarN.f12593a == null) {
            fVarN.f12593a = fVarN.new b();
        }
        return fVarN.f12593a;
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        f<K, V> fVarN = n();
        if (fVarN.f12594b == null) {
            fVarN.f12594b = fVarN.new c();
        }
        return fVarN.f12594b;
    }

    public final f<K, V> n() {
        if (this.f12570o == null) {
            this.f12570o = new C0226a();
        }
        return this.f12570o;
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        b(map.size() + this.f12614j);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        f<K, V> fVarN = n();
        if (fVarN.f12595c == null) {
            fVarN.f12595c = fVarN.new e();
        }
        return fVarN.f12595c;
    }

    public a(int i10) {
        super(i10);
    }

    public a(g gVar) {
        if (gVar != null) {
            j(gVar);
        }
    }
}
