package yb;

import java.io.Serializable;

/* JADX INFO: compiled from: NativeOIDCWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper", f = "NativeOIDCWrapper.kt", l = {153, 154, 170, 175}, m = "doRevokeRefreshToken")
public final class b extends ld.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e f19122h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f19123i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Serializable f19124j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f19125k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public /* synthetic */ Object f19126l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ e f19127m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f19128n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(e eVar, jd.d<? super b> dVar) {
        super(dVar);
        this.f19127m = eVar;
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) {
        this.f19126l = obj;
        this.f19128n |= Integer.MIN_VALUE;
        return e.f(this.f19127m, null, this);
    }
}
