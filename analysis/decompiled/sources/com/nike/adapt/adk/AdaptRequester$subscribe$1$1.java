package com.nike.adapt.adk;

import fd.o;
import java.util.List;
import jd.d;
import kd.a;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import ld.e;
import ld.i;
import o7.x;
import qd.p;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
@e(c = "com.nike.adapt.adk.AdaptRequester$subscribe$1$1", f = "AdaptRequester.kt", l = {235}, m = "invokeSuspend")
public final class AdaptRequester$subscribe$1$1 extends i implements p<CoroutineScope, d<? super o>, Object> {
    public int label;
    public final /* synthetic */ AdaptRequester this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptRequester$subscribe$1$1(AdaptRequester adaptRequester, d<? super AdaptRequester$subscribe$1$1> dVar) {
        super(2, dVar);
        this.this$0 = adaptRequester;
    }

    @Override // ld.a
    public final d<o> create(Object obj, d<?> dVar) {
        return new AdaptRequester$subscribe$1$1(this.this$0, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) {
        return ((AdaptRequester$subscribe$1$1) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        a aVar = a.COROUTINE_SUSPENDED;
        int i10 = this.label;
        if (i10 == 0) {
            d3.e.p(obj);
            CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
            AdaptRequester$subscribe$1$1$devices$1 adaptRequester$subscribe$1$1$devices$1 = new AdaptRequester$subscribe$1$1$devices$1(null);
            this.label = 1;
            obj = BuildersKt.withContext(coroutineDispatcher, adaptRequester$subscribe$1$1$devices$1, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        x.f12420a.a("FROM ASYNC call retrievePairFromNetwork");
        this.this$0.initialiseAdaptKitRequester((List) obj);
        return o.f7408a;
    }
}
