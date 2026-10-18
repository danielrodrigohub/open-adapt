package jd;

/* JADX INFO: compiled from: ContinuationInterceptor.kt */
/* JADX INFO: loaded from: classes.dex */
public interface e extends f.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f9509d = 0;

    /* JADX INFO: compiled from: ContinuationInterceptor.kt */
    public static final class a implements f.b<e> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final /* synthetic */ a f9510h = new a();
    }

    <T> d<T> interceptContinuation(d<? super T> dVar);

    void releaseInterceptedContinuation(d<?> dVar);
}
