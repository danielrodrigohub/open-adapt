package com.nike.adapt.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.activity.k;
import androidx.recyclerview.widget.s;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import java.util.Objects;
import jd.d;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import ld.e;
import ld.i;
import o7.x;
import p4.h;
import p8.q;
import q.g;
import qd.p;
import r7.f;
import rd.o;

/* JADX INFO: compiled from: DeepLinkRoutingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class DeepLinkRoutingActivity extends q {
    public boolean E;

    /* JADX INFO: compiled from: DeepLinkRoutingActivity.kt */
    public static final class a extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5718h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: DeepLinkRoutingActivity.kt */
    public static final class b extends o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5719h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final /* bridge */ /* synthetic */ fd.o invoke() {
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: DeepLinkRoutingActivity.kt */
    @e(c = "com.nike.adapt.ui.DeepLinkRoutingActivity$onCreate$3", f = "DeepLinkRoutingActivity.kt", l = {35}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f5720h;

        /* JADX INFO: compiled from: DeepLinkRoutingActivity.kt */
        @e(c = "com.nike.adapt.ui.DeepLinkRoutingActivity$onCreate$3$1", f = "DeepLinkRoutingActivity.kt", l = {}, m = "invokeSuspend")
        public static final class a extends i implements p<CoroutineScope, d<? super fd.o>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ DeepLinkRoutingActivity f5722h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(DeepLinkRoutingActivity deepLinkRoutingActivity, d<? super a> dVar) {
                super(2, dVar);
                this.f5722h = deepLinkRoutingActivity;
            }

            @Override // ld.a
            public final d<fd.o> create(Object obj, d<?> dVar) {
                return new a(this.f5722h, dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, d<? super fd.o> dVar) throws Throwable {
                a aVar = (a) create(coroutineScope, dVar);
                fd.o oVar = fd.o.f7408a;
                aVar.invokeSuspend(oVar);
                return oVar;
            }

            /* JADX WARN: Code duplicated, block: B:32:0x007e  */
            /* JADX WARN: Code duplicated, block: B:40:0x0097 A[EDGE_INSN: B:40:0x0097->B:41:0x0099 BREAK  A[LOOP:1: B:35:0x0087->B:39:0x0094]] */
            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                r7.a aVar;
                boolean z10;
                d3.e.p(obj);
                if (BigfootApplication.f5638p.c().a()) {
                    DeepLinkRoutingActivity deepLinkRoutingActivity = this.f5722h;
                    Uri data = deepLinkRoutingActivity.getIntent().getData();
                    Uri referrer = this.f5722h.getReferrer();
                    DeepLinkRoutingActivity deepLinkRoutingActivity2 = this.f5722h;
                    h.j(deepLinkRoutingActivity2, "activity");
                    r7.a.C0251a c0251a = r7.a.f14651j;
                    String path = data != null ? data.getPath() : null;
                    Objects.requireNonNull(c0251a);
                    if (path != null) {
                        if (yd.o.b0(path)) {
                            z10 = true;
                        } else {
                            int length = path.length() - 1;
                            int i10 = 0;
                            boolean z11 = false;
                            while (i10 <= length) {
                                boolean z12 = h.l(path.charAt(!z11 ? i10 : length), 32) <= 0;
                                if (z11) {
                                    if (!z12) {
                                        break;
                                    }
                                    length--;
                                } else if (z12) {
                                    i10++;
                                } else {
                                    z11 = true;
                                }
                            }
                            if (yd.o.Z("NULL", path.subSequence(i10, length + 1).toString())) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        }
                        if (!z10) {
                            r7.a[] aVarArrValues = r7.a.values();
                            int length2 = aVarArrValues.length;
                            int i11 = 0;
                            while (true) {
                                if (i11 >= length2) {
                                    aVar = r7.a.f14658q;
                                    break;
                                }
                                aVar = aVarArrValues[i11];
                                if (h.c(path, aVar.f14660h)) {
                                    break;
                                }
                                i11++;
                            }
                        } else {
                            aVar = r7.a.f14658q;
                            break;
                        }
                    } else {
                        aVar = r7.a.f14658q;
                        break;
                    }
                    f fVar = aVar.f14661i;
                    if (fVar != null && data != null) {
                        fVar.b(deepLinkRoutingActivity2, data);
                        if (g.a(h.c(referrer != null ? referrer.getAuthority() : null, "com.google.android.googlequicksearchbox") ? 1 : 2) == 0) {
                            TrackManager.INSTANCE.manageGoogleVoice(aVar);
                        }
                    }
                    deepLinkRoutingActivity.E = aVar == r7.a.f14657p;
                } else {
                    AdaptRestartActivity.A.a(true, 0L);
                }
                return fd.o.f7408a;
            }
        }

        public c(d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final d<fd.o> create(Object obj, d<?> dVar) {
            return DeepLinkRoutingActivity.this.new c(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super fd.o> dVar) {
            return ((c) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f5720h;
            if (i10 == 0) {
                d3.e.p(obj);
                CoroutineDispatcher io = Dispatchers.getIO();
                a aVar2 = new a(DeepLinkRoutingActivity.this, null);
                this.f5720h = 1;
                if (BuildersKt.withContext(io, aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return fd.o.f7408a;
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        x xVar = x.f12420a;
        StringBuilder sbB = s.b("routing_deep_link_result Request Code: ", i10, " Result Code: ", i11, " Data: ");
        sbB.append(intent);
        xVar.a(sbB.toString());
        setResult(i11, intent);
        finish();
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String queryParameter;
        Uri data;
        super.onCreate(bundle);
        setContentView(R.layout.activity_deep_link_routing);
        o7.s sVarM = androidx.lifecycle.o.m();
        i8.d dVar = this.B;
        Intent intent = getIntent();
        if (intent == null || (data = intent.getData()) == null || (queryParameter = data.getQueryParameter("pairID")) == null) {
            queryParameter = "";
        }
        ((o7.f) sVarM).c(this, dVar, queryParameter, a.f5718h, b.f5719h);
        k.m(this).c(new c(null));
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.E) {
            return;
        }
        finish();
    }
}
