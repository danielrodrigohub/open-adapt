package u8;

import android.view.ViewGroup;
import android.webkit.WebView;
import com.nike.adapt.R;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: NoInternetView.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.error.NoInternetViewKt$showNoInternetWebView$2$1$1", f = "NoInternetView.kt", l = {36, 41}, m = "invokeSuspend")
public final class t extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16082h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16083i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ r f16084j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ WebView f16085k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f16086l;

    /* JADX INFO: compiled from: NoInternetView.kt */
    @ld.e(c = "com.nike.adapt.ui.error.NoInternetViewKt$showNoInternetWebView$2$1$1$1", f = "NoInternetView.kt", l = {37}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16087h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ long f16088i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j10, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f16088i = j10;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f16088i, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f16087h;
            if (i10 == 0) {
                d3.e.p(obj);
                long j10 = this.f16088i;
                this.f16087h = 1;
                if (DelayKt.delay(j10, this) == aVar) {
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

    /* JADX INFO: compiled from: NoInternetView.kt */
    @ld.e(c = "com.nike.adapt.ui.error.NoInternetViewKt$showNoInternetWebView$2$1$1$2", f = "NoInternetView.kt", l = {42}, m = "invokeSuspend")
    public static final class b extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16089h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ long f16090i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, jd.d<? super b> dVar) {
            super(2, dVar);
            this.f16090i = j10;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new b(this.f16090i, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f16089h;
            if (i10 == 0) {
                d3.e.p(obj);
                long j10 = this.f16090i * ((long) 2);
                this.f16089h = 1;
                if (DelayKt.delay(j10, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(r rVar, WebView webView, ViewGroup viewGroup, jd.d<? super t> dVar) {
        super(2, dVar);
        this.f16084j = rVar;
        this.f16085k = webView;
        this.f16086l = viewGroup;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new t(this.f16084j, this.f16085k, this.f16086l, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((t) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        long j10;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f16083i;
        if (i10 != 0) {
            if (i10 == 1) {
                j10 = this.f16082h;
                d3.e.p(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            this.f16086l.removeView(this.f16084j);
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        this.f16084j.findViewById(R.id.view_no_internet_progress_bar).setVisibility(0);
        CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
        a aVar2 = new a(125L, null);
        this.f16082h = 125L;
        this.f16083i = 1;
        if (BuildersKt.withContext(coroutineDispatcher, aVar2, this) == aVar) {
            return aVar;
        }
        j10 = 125;
        this.f16085k.reload();
        CoroutineDispatcher coroutineDispatcher2 = Dispatchers.getDefault();
        b bVar = new b(j10, null);
        this.f16083i = 2;
        if (BuildersKt.withContext(coroutineDispatcher2, bVar, this) == aVar) {
            return aVar;
        }
        this.f16086l.removeView(this.f16084j);
        return fd.o.f7408a;
    }
}
