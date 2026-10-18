package z4;

/* JADX INFO: compiled from: SimpleSubtitleDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends m {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ f f19338l;

    public e(f fVar) {
        this.f19338l = fVar;
    }

    @Override // q3.h
    public final void o() {
        f fVar = this.f19338l;
        synchronized (fVar.f13594b) {
            p();
            O[] oArr = fVar.f13598f;
            int i10 = fVar.f13600h;
            fVar.f13600h = i10 + 1;
            oArr[i10] = this;
            fVar.h();
        }
    }
}
