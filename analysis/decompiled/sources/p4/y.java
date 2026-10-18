package p4;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f13243h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f13244i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f13245j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f13246k;

    public /* synthetic */ y(Object obj, Object obj2, Object obj3, int i10) {
        this.f13243h = i10;
        this.f13244i = obj;
        this.f13245j = obj2;
        this.f13246k = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13243h) {
            case 0:
                e0.a aVar = (e0.a) this.f13244i;
                ((e0) this.f13245j).H(aVar.f12968a, aVar.f12969b, (u) this.f13246k);
                break;
            case 1:
                com.google.android.exoplayer2.source.rtsp.b bVar = (com.google.android.exoplayer2.source.rtsp.b) this.f13244i;
                String str = (String) this.f13245j;
                com.google.android.exoplayer2.source.rtsp.a aVar2 = (com.google.android.exoplayer2.source.rtsp.a) this.f13246k;
                com.google.android.exoplayer2.source.rtsp.f.c cVar = (com.google.android.exoplayer2.source.rtsp.f.c) ((y0.c0) bVar.f4663c).f18151c;
                cVar.f4726c = str;
                com.google.android.exoplayer2.source.rtsp.g.a aVarR = aVar2.r();
                if (aVarR != null) {
                    com.google.android.exoplayer2.source.rtsp.f.this.f4707k.f4684q.f4739j.put(Integer.valueOf(aVar2.f()), aVarR);
                    com.google.android.exoplayer2.source.rtsp.f.this.C = true;
                }
                com.google.android.exoplayer2.source.rtsp.f.this.i();
                break;
            default:
                n5.s.a aVar3 = (n5.s.a) this.f13244i;
                n3.s0 s0Var = (n3.s0) this.f13245j;
                q3.i iVar = (q3.i) this.f13246k;
                n5.s sVar = aVar3.f11984b;
                int i10 = m5.g0.f10384a;
                sVar.z();
                aVar3.f11984b.u(s0Var, iVar);
                break;
        }
    }
}
