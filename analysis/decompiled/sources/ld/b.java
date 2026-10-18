package ld;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements jd.d<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final b f10238h = new b();

    @Override // jd.d
    public final jd.f getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // jd.d
    public final void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public final String toString() {
        return "This continuation is already complete";
    }
}
