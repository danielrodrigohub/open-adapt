package t4;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import m5.g0;
import n3.s0;
import u6.v;

/* JADX INFO: compiled from: Representation.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s0 f15489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v<t4.b> f15490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<e> f15492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<e> f15493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<e> f15494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i f15495g;

    /* JADX INFO: compiled from: Representation.java */
    public static class a extends j implements s4.d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final k.a f15496h;

        public a(long j10, s0 s0Var, List<t4.b> list, k.a aVar, List<e> list2, List<e> list3, List<e> list4) {
            super(s0Var, list, aVar, list2, list3, list4);
            this.f15496h = aVar;
        }

        @Override // t4.j
        public final String a() {
            return null;
        }

        @Override // t4.j
        public final s4.d b() {
            return this;
        }

        @Override // s4.d
        public final long c(long j10) {
            return this.f15496h.g(j10);
        }

        @Override // s4.d
        public final long d(long j10, long j11) {
            return this.f15496h.f(j10, j11);
        }

        @Override // s4.d
        public final long e(long j10, long j11) {
            return this.f15496h.e(j10, j11);
        }

        @Override // s4.d
        public final long f(long j10, long j11) {
            return this.f15496h.c(j10, j11);
        }

        @Override // s4.d
        public final long g(long j10, long j11) {
            k.a aVar = this.f15496h;
            if (aVar.f15505f != null) {
                return -9223372036854775807L;
            }
            long jB = aVar.b(j10, j11) + aVar.c(j10, j11);
            return (aVar.e(jB, j10) + aVar.g(jB)) - aVar.f15508i;
        }

        @Override // s4.d
        public final i h(long j10) {
            return this.f15496h.h(this, j10);
        }

        @Override // s4.d
        public final boolean i() {
            return this.f15496h.i();
        }

        @Override // s4.d
        public final long j() {
            return this.f15496h.f15503d;
        }

        @Override // s4.d
        public final long k(long j10) {
            return this.f15496h.d(j10);
        }

        @Override // s4.d
        public final long l(long j10, long j11) {
            return this.f15496h.b(j10, j11);
        }

        @Override // t4.j
        public final i m() {
            return null;
        }
    }

    /* JADX INFO: compiled from: Representation.java */
    public static class b extends j {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f15497h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final i f15498i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final g3.b f15499j;

        public b(long j10, s0 s0Var, List list, k.e eVar, List list2, List list3, List list4) {
            super(s0Var, list, eVar, list2, list3, list4);
            Uri.parse(((t4.b) list.get(0)).f15438a);
            long j11 = eVar.f15516e;
            i iVar = j11 <= 0 ? null : new i(null, eVar.f15515d, j11);
            this.f15498i = iVar;
            this.f15497h = null;
            this.f15499j = iVar == null ? new g3.b(new i(null, 0L, -1L)) : null;
        }

        @Override // t4.j
        public final String a() {
            return this.f15497h;
        }

        @Override // t4.j
        public final s4.d b() {
            return this.f15499j;
        }

        @Override // t4.j
        public final i m() {
            return this.f15498i;
        }
    }

    public j(s0 s0Var, List list, k kVar, List list2, List list3, List list4) {
        m5.a.a(!list.isEmpty());
        this.f15489a = s0Var;
        this.f15490b = v.s(list);
        this.f15492d = Collections.unmodifiableList(list2);
        this.f15493e = list3;
        this.f15494f = list4;
        this.f15495g = kVar.a(this);
        this.f15491c = g0.R(kVar.f15502c, 1000000L, kVar.f15501b);
    }

    public abstract String a();

    public abstract s4.d b();

    public abstract i m();
}
