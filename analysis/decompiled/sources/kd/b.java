package kd;

import d3.e;
import jd.d;
import ld.g;
import p4.h;
import qd.p;
import rd.b0;

/* JADX INFO: compiled from: IntrinsicsJvm.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9801h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ p f9802i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f9803j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(d dVar, p pVar, Object obj) {
        super(dVar);
        this.f9802i = pVar;
        this.f9803j = obj;
        h.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i10 = this.f9801h;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f9801h = 2;
            e.p(obj);
            return obj;
        }
        this.f9801h = 1;
        e.p(obj);
        h.h(this.f9802i, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>");
        p pVar = this.f9802i;
        b0.c(pVar);
        return pVar.invoke(this.f9803j, this);
    }
}
