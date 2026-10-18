package yd;

import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matcher f19190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f19191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<String> f19192c;

    /* JADX INFO: compiled from: Regex.kt */
    public static final class a extends gd.c<String> {
        public a() {
        }

        @Override // gd.a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof String) {
                return super.contains((String) obj);
            }
            return false;
        }

        @Override // gd.c, java.util.List
        public final Object get(int i10) {
            String strGroup = f.this.f19190a.group(i10);
            return strGroup == null ? "" : strGroup;
        }

        @Override // gd.c, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof String) {
                return super.indexOf((String) obj);
            }
            return -1;
        }

        @Override // gd.a
        public final int k() {
            return f.this.f19190a.groupCount() + 1;
        }

        @Override // gd.c, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof String) {
                return super.lastIndexOf((String) obj);
            }
            return -1;
        }
    }

    /* JADX INFO: compiled from: Regex.kt */
    public static final class b extends gd.a<c> implements d {

        /* JADX INFO: compiled from: Regex.kt */
        public static final class a extends rd.o implements qd.l<Integer, c> {
            public a() {
                super(1);
            }

            @Override // qd.l
            public final c invoke(Integer num) {
                return b.this.get(num.intValue());
            }
        }

        public b() {
        }

        @Override // gd.a, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj == null ? true : obj instanceof c) {
                return super.contains((c) obj);
            }
            return false;
        }

        @Override // yd.d
        public final c get(int i10) {
            Matcher matcher = f.this.f19190a;
            vd.e eVarW = androidx.activity.k.w(matcher.start(i10), matcher.end(i10));
            if (eVarW.k().intValue() < 0) {
                return null;
            }
            String strGroup = f.this.f19190a.group(i10);
            p4.h.i(strGroup, "matchResult.group(index)");
            return new c(strGroup, eVarW);
        }

        @Override // gd.a, java.util.Collection
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<c> iterator() {
            return new xd.l.a((xd.l) xd.g.m(new gd.m(new vd.e(0, size() - 1)), new a()));
        }

        @Override // gd.a
        public final int k() {
            return f.this.f19190a.groupCount() + 1;
        }
    }

    public f(Matcher matcher, CharSequence charSequence) {
        p4.h.j(charSequence, "input");
        this.f19190a = matcher;
        this.f19191b = new b();
    }

    @Override // yd.e
    public final List<String> a() {
        if (this.f19192c == null) {
            this.f19192c = new a();
        }
        List<String> list = this.f19192c;
        p4.h.g(list);
        return list;
    }

    @Override // yd.e
    public final d b() {
        return this.f19191b;
    }

    @Override // yd.e
    public final vd.e c() {
        Matcher matcher = this.f19190a;
        return androidx.activity.k.w(matcher.start(), matcher.end());
    }
}
