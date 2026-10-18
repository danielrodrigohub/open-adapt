package retrofit2;

import qd.l;
import rd.o;

/* JADX INFO: compiled from: KotlinExtensions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1 extends o implements l<Throwable, fd.o> {
    public final /* synthetic */ Call $this_await$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1(Call call) {
        super(1);
        this.$this_await$inlined = call;
    }

    @Override // qd.l
    public /* bridge */ /* synthetic */ fd.o invoke(Throwable th) {
        invoke2(th);
        return fd.o.f7408a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.$this_await$inlined.cancel();
    }
}
