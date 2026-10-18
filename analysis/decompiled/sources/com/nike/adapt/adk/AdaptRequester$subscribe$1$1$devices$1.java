package com.nike.adapt.adk;

import com.nike.adapt.adk.api.PairDataApi;
import ea.m;
import fd.o;
import java.util.List;
import jd.d;
import kd.a;
import kotlinx.coroutines.CoroutineScope;
import ld.e;
import ld.i;
import qd.p;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
@e(c = "com.nike.adapt.adk.AdaptRequester$subscribe$1$1$devices$1", f = "AdaptRequester.kt", l = {236}, m = "invokeSuspend")
public final class AdaptRequester$subscribe$1$1$devices$1 extends i implements p<CoroutineScope, d<? super List<? extends m>>, Object> {
    public int label;

    public AdaptRequester$subscribe$1$1$devices$1(d<? super AdaptRequester$subscribe$1$1$devices$1> dVar) {
        super(2, dVar);
    }

    @Override // ld.a
    public final d<o> create(Object obj, d<?> dVar) {
        return new AdaptRequester$subscribe$1$1$devices$1(dVar);
    }

    @Override // qd.p
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, d<? super List<? extends m>> dVar) {
        return invoke2(coroutineScope, (d<? super List<m>>) dVar);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, d<? super List<m>> dVar) {
        return ((AdaptRequester$subscribe$1$1$devices$1) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        a aVar = a.COROUTINE_SUSPENDED;
        int i10 = this.label;
        if (i10 == 0) {
            d3.e.p(obj);
            PairDataApi pairDataApi = PairDataApi.Companion.get();
            this.label = 1;
            obj = pairDataApi.retrievePairFromNetwork(this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return obj;
    }
}
