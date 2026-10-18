package x8;

import android.view.View;
import android.widget.TextView;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: AnimationHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.helper.AnimationHelperKt$simpleFlash$1", f = "AnimationHelper.kt", l = {106, 116}, m = "invokeSuspend")
public final class k extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ long f17915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ View f17916j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f17917k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ TextView f17918l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ View f17919m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ int f17920n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ long f17921o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ int f17922p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(long j10, View view, boolean z10, TextView textView, View view2, int i10, long j11, int i11, jd.d<? super k> dVar) {
        super(2, dVar);
        this.f17915i = j10;
        this.f17916j = view;
        this.f17917k = z10;
        this.f17918l = textView;
        this.f17919m = view2;
        this.f17920n = i10;
        this.f17921o = j11;
        this.f17922p = i11;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new k(this.f17915i, this.f17916j, this.f17917k, this.f17918l, this.f17919m, this.f17920n, this.f17921o, this.f17922p, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((k) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    /* JADX WARN: Code duplicated, block: B:23:0x0065  */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f17914h;
        if (i10 != 0) {
            if (i10 == 1) {
                d3.e.p(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            if (this.f17917k) {
                this.f17918l.setAlpha(0.0f);
                this.f17919m.setBackgroundColor(this.f17922p);
            } else {
                this.f17916j.setAlpha(0.0f);
            }
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        long j10 = this.f17915i;
        this.f17914h = 1;
        if (DelayKt.delay(j10, this) == aVar) {
            return aVar;
        }
        this.f17916j.setVisibility(0);
        if (this.f17917k) {
            this.f17918l.setAlpha(1.0f);
            this.f17919m.setBackgroundColor(this.f17920n);
        } else {
            this.f17916j.setAlpha(1.0f);
        }
        long j11 = this.f17921o;
        this.f17914h = 2;
        if (DelayKt.delay(j11, this) == aVar) {
            return aVar;
        }
        if (this.f17917k) {
            this.f17918l.setAlpha(0.0f);
            this.f17919m.setBackgroundColor(this.f17922p);
        } else {
            this.f17916j.setAlpha(0.0f);
        }
        return fd.o.f7408a;
    }
}
