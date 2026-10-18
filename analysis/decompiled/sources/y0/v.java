package y0;

import android.net.Uri;
import android.widget.TextView;
import androidx.fragment.app.r0;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.nike.adapt.ui.lighting.LightingActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n3.b2;
import n3.i1;
import n3.k0;
import n3.l1;
import n3.o0;
import n3.p1;
import n3.q1;
import okhttp3.internal.http.HttpStatusCodesKt;
import u6.p0;
import u6.q0;
import u6.y0;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f18282j;

    public /* synthetic */ v(Object obj, Object obj2, int i10) {
        this.f18280h = i10;
        this.f18281i = obj;
        this.f18282j = obj2;
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.ArrayList, java.util.List<n3.k0$d>] */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.ArrayList, java.util.List<n3.k0$d>] */
    @Override // java.lang.Runnable
    public final void run() {
        long j10;
        boolean z10;
        long jS0;
        List listA;
        boolean z11 = true;
        long j11 = -9223372036854775807L;
        switch (this.f18280h) {
            case 0:
                d0.d dVar = ((w) this.f18281i).f18283h;
                new ArrayList(0);
                dVar.a();
                return;
            case 1:
                k0 k0Var = (k0) this.f18281i;
                o0.d dVar2 = (o0.d) this.f18282j;
                int i10 = k0Var.H - dVar2.f11586c;
                k0Var.H = i10;
                if (dVar2.f11587d) {
                    k0Var.I = dVar2.f11588e;
                    k0Var.J = true;
                }
                if (dVar2.f11589f) {
                    k0Var.K = dVar2.f11590g;
                }
                if (i10 == 0) {
                    b2 b2Var = dVar2.f11585b.f11516a;
                    if (!k0Var.f11479j0.f11516a.s() && b2Var.s()) {
                        k0Var.f11481k0 = -1;
                        k0Var.f11483l0 = 0L;
                    }
                    if (!b2Var.s()) {
                        List listAsList = Arrays.asList(((q1) b2Var).f11644q);
                        m5.a.e(listAsList.size() == k0Var.f11486o.size());
                        for (int i11 = 0; i11 < listAsList.size(); i11++) {
                            ((k0.d) k0Var.f11486o.get(i11)).f11504b = (b2) listAsList.get(i11);
                        }
                    }
                    if (k0Var.J) {
                        if (dVar2.f11585b.f11517b.equals(k0Var.f11479j0.f11517b) && dVar2.f11585b.f11519d == k0Var.f11479j0.f11533r) {
                            z11 = false;
                        }
                        if (z11) {
                            if (b2Var.s() || dVar2.f11585b.f11517b.a()) {
                                jS0 = dVar2.f11585b.f11519d;
                            } else {
                                l1 l1Var = dVar2.f11585b;
                                jS0 = k0Var.s0(b2Var, l1Var.f11517b, l1Var.f11519d);
                            }
                            j11 = jS0;
                        }
                        z10 = z11;
                        j10 = j11;
                    } else {
                        j10 = -9223372036854775807L;
                        z10 = false;
                    }
                    k0Var.J = false;
                    k0Var.F0(dVar2.f11585b, 1, k0Var.K, false, z10, k0Var.I, j10, -1);
                    return;
                }
                return;
            case 2:
                o0 o0Var = (o0) this.f18281i;
                p1 p1Var = (p1) this.f18282j;
                Objects.requireNonNull(o0Var);
                try {
                    o0Var.b(p1Var);
                    return;
                } catch (n3.q e10) {
                    m5.p.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
                    throw new RuntimeException(e10);
                }
            case 3:
                r0.i(this.f18281i);
                throw null;
            case 4:
                com.google.android.exoplayer2.source.rtsp.d.b bVar = (com.google.android.exoplayer2.source.rtsp.d.b) this.f18281i;
                List list = (List) this.f18282j;
                com.google.android.exoplayer2.source.rtsp.d.Y(com.google.android.exoplayer2.source.rtsp.d.this, list);
                Pattern pattern = com.google.android.exoplayer2.source.rtsp.h.f4756b;
                if (!pattern.matcher((CharSequence) list.get(0)).matches()) {
                    com.google.android.exoplayer2.source.rtsp.d.c cVar = com.google.android.exoplayer2.source.rtsp.d.this.f4682o;
                    Matcher matcher = com.google.android.exoplayer2.source.rtsp.h.f4755a.matcher((CharSequence) list.get(0));
                    m5.a.a(matcher.matches());
                    String strGroup = matcher.group(1);
                    Objects.requireNonNull(strGroup);
                    com.google.android.exoplayer2.source.rtsp.h.d(strGroup);
                    String strGroup2 = matcher.group(2);
                    Objects.requireNonNull(strGroup2);
                    Uri.parse(strGroup2);
                    int iIndexOf = list.indexOf("");
                    m5.a.a(iIndexOf > 0);
                    List<String> listSubList = list.subList(1, iIndexOf);
                    com.google.android.exoplayer2.source.rtsp.e.a aVar = new com.google.android.exoplayer2.source.rtsp.e.a();
                    aVar.b(listSubList);
                    com.google.android.exoplayer2.source.rtsp.e eVar = new com.google.android.exoplayer2.source.rtsp.e(aVar);
                    new t6.e(com.google.android.exoplayer2.source.rtsp.h.f4762h).b(list.subList(iIndexOf + 1, list.size()));
                    String strB = eVar.b("CSeq");
                    Objects.requireNonNull(strB);
                    int i12 = Integer.parseInt(strB);
                    com.google.android.exoplayer2.source.rtsp.d dVar3 = com.google.android.exoplayer2.source.rtsp.d.this;
                    com.google.android.exoplayer2.source.rtsp.e eVar2 = new com.google.android.exoplayer2.source.rtsp.e(new com.google.android.exoplayer2.source.rtsp.e.a(dVar3.f4677j, dVar3.f4686s, i12));
                    Pattern pattern2 = com.google.android.exoplayer2.source.rtsp.h.f4755a;
                    m5.a.a(eVar2.b("CSeq") != null);
                    u6.v.a aVar2 = new u6.v.a();
                    aVar2.c(m5.g0.m("%s %s %s", "RTSP/1.0", Integer.valueOf(HttpStatusCodesKt.HTTP_BAD_METHOD), "Method Not Allowed"));
                    u6.w<String, String> wVar = eVar2.f4702a;
                    y0<String> it = wVar.f().iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        u6.v<String> vVarG = wVar.g(next);
                        for (int i13 = 0; i13 < vVarG.size(); i13++) {
                            aVar2.c(m5.g0.m("%s: %s", next, vVarG.get(i13)));
                        }
                    }
                    aVar2.c("");
                    aVar2.c("");
                    u6.v vVarE = aVar2.e();
                    com.google.android.exoplayer2.source.rtsp.d.Y(com.google.android.exoplayer2.source.rtsp.d.this, vVarE);
                    com.google.android.exoplayer2.source.rtsp.d.this.f4684q.Y(vVarE);
                    cVar.f4699a = Math.max(cVar.f4699a, i12 + 1);
                    return;
                }
                Matcher matcher2 = pattern.matcher((CharSequence) list.get(0));
                m5.a.a(matcher2.matches());
                String strGroup3 = matcher2.group(1);
                Objects.requireNonNull(strGroup3);
                int i14 = Integer.parseInt(strGroup3);
                int iIndexOf2 = list.indexOf("");
                m5.a.a(iIndexOf2 > 0);
                List<String> listSubList2 = list.subList(1, iIndexOf2);
                com.google.android.exoplayer2.source.rtsp.e.a aVar3 = new com.google.android.exoplayer2.source.rtsp.e.a();
                aVar3.b(listSubList2);
                com.google.android.exoplayer2.source.rtsp.e eVar3 = new com.google.android.exoplayer2.source.rtsp.e(aVar3);
                String strB2 = new t6.e(com.google.android.exoplayer2.source.rtsp.h.f4762h).b(list.subList(iIndexOf2 + 1, list.size()));
                String strB3 = eVar3.b("CSeq");
                Objects.requireNonNull(strB3);
                int i15 = Integer.parseInt(strB3);
                w4.k kVar = com.google.android.exoplayer2.source.rtsp.d.this.f4681n.get(i15);
                if (kVar == null) {
                    return;
                }
                com.google.android.exoplayer2.source.rtsp.d.this.f4681n.remove(i15);
                int i16 = kVar.f17188b;
                try {
                    if (i14 != 200) {
                        if (i14 == 401) {
                            com.google.android.exoplayer2.source.rtsp.d dVar4 = com.google.android.exoplayer2.source.rtsp.d.this;
                            if (dVar4.f4685r != null && !dVar4.f4691x) {
                                u6.v<String> vVarG2 = eVar3.f4702a.g(com.google.android.exoplayer2.source.rtsp.e.a("WWW-Authenticate"));
                                if (vVarG2.isEmpty()) {
                                    throw i1.b("Missing WWW-Authenticate header in a 401 response.", null);
                                }
                                for (int i17 = 0; i17 < vVarG2.size(); i17++) {
                                    com.google.android.exoplayer2.source.rtsp.d.this.f4688u = com.google.android.exoplayer2.source.rtsp.h.g(vVarG2.get(i17));
                                    if (com.google.android.exoplayer2.source.rtsp.d.this.f4688u.f4671a == 2) {
                                        com.google.android.exoplayer2.source.rtsp.d.this.f4682o.b();
                                        com.google.android.exoplayer2.source.rtsp.d.this.f4691x = true;
                                        return;
                                    }
                                }
                                com.google.android.exoplayer2.source.rtsp.d.this.f4682o.b();
                                com.google.android.exoplayer2.source.rtsp.d.this.f4691x = true;
                                return;
                            }
                        } else if (i14 == 301 || i14 == 302) {
                            com.google.android.exoplayer2.source.rtsp.d dVar5 = com.google.android.exoplayer2.source.rtsp.d.this;
                            if (dVar5.f4689v != -1) {
                                dVar5.f4689v = 0;
                            }
                            String strB4 = eVar3.b("Location");
                            if (strB4 == null) {
                                ((com.google.android.exoplayer2.source.rtsp.f.a) com.google.android.exoplayer2.source.rtsp.d.this.f4675h).a("Redirection without new location.", null);
                                return;
                            }
                            Uri uri = Uri.parse(strB4);
                            com.google.android.exoplayer2.source.rtsp.d.this.f4683p = com.google.android.exoplayer2.source.rtsp.h.h(uri);
                            com.google.android.exoplayer2.source.rtsp.d.this.f4685r = com.google.android.exoplayer2.source.rtsp.h.f(uri);
                            com.google.android.exoplayer2.source.rtsp.d dVar6 = com.google.android.exoplayer2.source.rtsp.d.this;
                            com.google.android.exoplayer2.source.rtsp.d.c cVar2 = dVar6.f4682o;
                            cVar2.c(cVar2.a(2, dVar6.f4686s, q0.f15971n, dVar6.f4683p));
                            return;
                        }
                        com.google.android.exoplayer2.source.rtsp.d.x(com.google.android.exoplayer2.source.rtsp.d.this, new RtspMediaSource.c(com.google.android.exoplayer2.source.rtsp.h.i(i16) + " " + i14));
                        return;
                    }
                    switch (i16) {
                        case 1:
                        case 3:
                        case 7:
                        case 8:
                        case 9:
                        case 11:
                        case 12:
                            return;
                        case 2:
                            bVar.a(new q.e(i14, w4.o.a(strB2)));
                            return;
                        case 4:
                            u6.v vVarS = u6.v.s(com.google.android.exoplayer2.source.rtsp.h.e(eVar3.b("Public")));
                            if (com.google.android.exoplayer2.source.rtsp.d.this.f4687t != null) {
                                return;
                            }
                            if (!vVarS.isEmpty() && !vVarS.contains(2)) {
                                z11 = false;
                            }
                            if (!z11) {
                                ((com.google.android.exoplayer2.source.rtsp.f.a) com.google.android.exoplayer2.source.rtsp.d.this.f4675h).a("DESCRIBE not supported.", null);
                                return;
                            }
                            com.google.android.exoplayer2.source.rtsp.d dVar7 = com.google.android.exoplayer2.source.rtsp.d.this;
                            com.google.android.exoplayer2.source.rtsp.d.c cVar3 = dVar7.f4682o;
                            cVar3.c(cVar3.a(2, dVar7.f4686s, q0.f15971n, dVar7.f4683p));
                            return;
                        case 5:
                            m5.a.e(com.google.android.exoplayer2.source.rtsp.d.this.f4689v == 2);
                            com.google.android.exoplayer2.source.rtsp.d dVar8 = com.google.android.exoplayer2.source.rtsp.d.this;
                            dVar8.f4689v = 1;
                            dVar8.f4692y = false;
                            long j12 = dVar8.f4693z;
                            if (j12 != -9223372036854775807L) {
                                dVar8.i0(m5.g0.X(j12));
                                return;
                            }
                            return;
                        case 6:
                            String strB5 = eVar3.b("Range");
                            w4.l lVarA = strB5 == null ? w4.l.f17191c : w4.l.a(strB5);
                            try {
                                String strB6 = eVar3.b("RTP-Info");
                                if (strB6 == null) {
                                    u6.a aVar4 = u6.v.f16002i;
                                    listA = p0.f15967l;
                                } else {
                                    listA = w4.m.a(strB6, com.google.android.exoplayer2.source.rtsp.d.this.f4683p);
                                }
                            } catch (i1 unused) {
                                u6.a aVar5 = u6.v.f16002i;
                                listA = p0.f15967l;
                            }
                            bVar.b(new w4.j(lVarA, listA));
                            return;
                        case 10:
                            String strB7 = eVar3.b("Session");
                            String strB8 = eVar3.b("Transport");
                            if (strB7 == null || strB8 == null) {
                                throw i1.b("Missing mandatory session or transport header", null);
                            }
                            Matcher matcher3 = com.google.android.exoplayer2.source.rtsp.h.f4758d.matcher(strB7);
                            if (!matcher3.matches()) {
                                throw i1.b(strB7, null);
                            }
                            String strGroup4 = matcher3.group(1);
                            Objects.requireNonNull(strGroup4);
                            String strGroup5 = matcher3.group(2);
                            if (strGroup5 != null) {
                                try {
                                    Integer.parseInt(strGroup5);
                                } catch (NumberFormatException e11) {
                                    throw i1.b(strB7, e11);
                                }
                                break;
                            }
                            m5.a.e(com.google.android.exoplayer2.source.rtsp.d.this.f4689v != -1);
                            com.google.android.exoplayer2.source.rtsp.d dVar9 = com.google.android.exoplayer2.source.rtsp.d.this;
                            dVar9.f4689v = 1;
                            dVar9.f4686s = strGroup4;
                            dVar9.f0();
                            return;
                        default:
                            throw new IllegalStateException();
                    }
                    com.google.android.exoplayer2.source.rtsp.d.x(com.google.android.exoplayer2.source.rtsp.d.this, new RtspMediaSource.c(e));
                    return;
                } catch (i1 e12) {
                    com.google.android.exoplayer2.source.rtsp.d.x(com.google.android.exoplayer2.source.rtsp.d.this, new RtspMediaSource.c(e12));
                    return;
                }
            default:
                TextView textView = (TextView) this.f18281i;
                String str = (String) this.f18282j;
                int i18 = LightingActivity.T;
                p4.h.j(textView, "$this_apply");
                p4.h.j(str, "$subtitle");
                textView.setText(str);
                textView.animate().alpha(1.0f).setDuration(250L).start();
                return;
        }
    }
}
