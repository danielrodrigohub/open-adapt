package w7;

import g0.n;

/* JADX INFO: compiled from: AdaptRestClient.kt */
/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f17233a = 0;

    /* JADX INFO: renamed from: w7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptRestClient.kt */
    public static final class C0303a {
        public static /* synthetic */ Object a(a aVar, Class cls, String str, boolean z10, int i10, Object obj) {
            n nVar = n.f7520c;
            if ((i10 & 2) != 0) {
                str = "https://api.nike.com";
            }
            return nVar.c(cls, str, (i10 & 4) != 0);
        }
    }
}
