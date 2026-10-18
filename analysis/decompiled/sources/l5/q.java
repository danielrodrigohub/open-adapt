package l5;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: DefaultDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f10113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<j0> f10114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f10115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public v f10116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c f10117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public g f10118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public j f10119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k0 f10120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i f10121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g0 f10122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public j f10123k;

    /* JADX INFO: compiled from: DefaultDataSource.java */
    public static final class a implements j.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f10124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final j.a f10125b;

        public a(Context context) {
            r.a aVar = new r.a();
            this.f10124a = context.getApplicationContext();
            this.f10125b = aVar;
        }

        @Override // l5.j.a
        public final j a() {
            return new q(this.f10124a, this.f10125b.a());
        }
    }

    public q(Context context, j jVar) {
        this.f10113a = context.getApplicationContext();
        Objects.requireNonNull(jVar);
        this.f10115c = jVar;
        this.f10114b = new ArrayList();
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        j jVar = this.f10123k;
        Objects.requireNonNull(jVar);
        return jVar.b(bArr, i10, i11);
    }

    @Override // l5.j
    public final void close() throws IOException {
        j jVar = this.f10123k;
        if (jVar != null) {
            try {
                jVar.close();
            } finally {
                this.f10123k = null;
            }
        }
    }

    @Override // l5.j
    public final Map<String, List<String>> h() {
        j jVar = this.f10123k;
        return jVar == null ? Collections.emptyMap() : jVar.h();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<l5.j0>] */
    @Override // l5.j
    public final void j(j0 j0Var) {
        Objects.requireNonNull(j0Var);
        this.f10115c.j(j0Var);
        this.f10114b.add(j0Var);
        v(this.f10116d, j0Var);
        v(this.f10117e, j0Var);
        v(this.f10118f, j0Var);
        v(this.f10119g, j0Var);
        v(this.f10120h, j0Var);
        v(this.f10121i, j0Var);
        v(this.f10122j, j0Var);
    }

    @Override // l5.j
    public final long l(m mVar) throws IOException {
        boolean z10 = true;
        m5.a.e(this.f10123k == null);
        String scheme = mVar.f10071a.getScheme();
        Uri uri = mVar.f10071a;
        int i10 = m5.g0.f10384a;
        String scheme2 = uri.getScheme();
        if (!TextUtils.isEmpty(scheme2) && !"file".equals(scheme2)) {
            z10 = false;
        }
        if (z10) {
            String path = mVar.f10071a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f10116d == null) {
                    v vVar = new v();
                    this.f10116d = vVar;
                    m(vVar);
                }
                this.f10123k = this.f10116d;
            } else {
                if (this.f10117e == null) {
                    c cVar = new c(this.f10113a);
                    this.f10117e = cVar;
                    m(cVar);
                }
                this.f10123k = this.f10117e;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f10117e == null) {
                c cVar2 = new c(this.f10113a);
                this.f10117e = cVar2;
                m(cVar2);
            }
            this.f10123k = this.f10117e;
        } else if ("content".equals(scheme)) {
            if (this.f10118f == null) {
                g gVar = new g(this.f10113a);
                this.f10118f = gVar;
                m(gVar);
            }
            this.f10123k = this.f10118f;
        } else if ("rtmp".equals(scheme)) {
            if (this.f10119g == null) {
                try {
                    j jVar = (j) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.f10119g = jVar;
                    m(jVar);
                } catch (ClassNotFoundException unused) {
                    m5.p.g("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating RTMP extension", e10);
                }
                if (this.f10119g == null) {
                    this.f10119g = this.f10115c;
                }
            }
            this.f10123k = this.f10119g;
        } else if ("udp".equals(scheme)) {
            if (this.f10120h == null) {
                k0 k0Var = new k0();
                this.f10120h = k0Var;
                m(k0Var);
            }
            this.f10123k = this.f10120h;
        } else if ("data".equals(scheme)) {
            if (this.f10121i == null) {
                i iVar = new i();
                this.f10121i = iVar;
                m(iVar);
            }
            this.f10123k = this.f10121i;
        } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
            if (this.f10122j == null) {
                g0 g0Var = new g0(this.f10113a);
                this.f10122j = g0Var;
                m(g0Var);
            }
            this.f10123k = this.f10122j;
        } else {
            this.f10123k = this.f10115c;
        }
        return this.f10123k.l(mVar);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<l5.j0>] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List<l5.j0>] */
    public final void m(j jVar) {
        for (int i10 = 0; i10 < this.f10114b.size(); i10++) {
            jVar.j((j0) this.f10114b.get(i10));
        }
    }

    @Override // l5.j
    public final Uri o() {
        j jVar = this.f10123k;
        if (jVar == null) {
            return null;
        }
        return jVar.o();
    }

    public final void v(j jVar, j0 j0Var) {
        if (jVar != null) {
            jVar.j(j0Var);
        }
    }
}
