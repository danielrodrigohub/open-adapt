package pa;

import okhttp3.Request;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: AdaptKitDeviceServiceApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o implements l<Request.Builder, Request.Builder> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f13392h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String str) {
        super(1);
        this.f13392h = str;
    }

    @Override // qd.l
    public final Request.Builder invoke(Request.Builder builder) {
        Request.Builder builder2 = builder;
        h.j(builder2, "$this$generateOkHttpRequestBuilder");
        return Request.Builder.delete$default(builder2.url(c.f13393d.f12031b + "/nikeadapt/profile/" + this.f13392h), null, 1, null);
    }
}
