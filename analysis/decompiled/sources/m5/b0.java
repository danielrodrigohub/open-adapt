package m5;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: SystemHandlerWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 implements l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final List<a> f10361b = new ArrayList(50);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f10362a;

    /* JADX INFO: compiled from: SystemHandlerWrapper.java */
    public static final class a implements l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Message f10363a;

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<m5.b0$a>] */
        public final void a() {
            this.f10363a = null;
            ?? r10 = b0.f10361b;
            synchronized (r10) {
                if (r10.size() < 50) {
                    r10.add(this);
                }
            }
        }

        public final void b() {
            Message message = this.f10363a;
            Objects.requireNonNull(message);
            message.sendToTarget();
            a();
        }
    }

    public b0(Handler handler) {
        this.f10362a = handler;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<m5.b0$a>] */
    public static a k() {
        a aVar;
        ?? r10 = f10361b;
        synchronized (r10) {
            aVar = r10.isEmpty() ? new a() : (a) r10.remove(r10.size() - 1);
        }
        return aVar;
    }

    @Override // m5.l
    public final void a() {
        this.f10362a.removeCallbacksAndMessages(null);
    }

    @Override // m5.l
    public final boolean b(long j10) {
        return this.f10362a.sendEmptyMessageAtTime(2, j10);
    }

    @Override // m5.l
    public final boolean c() {
        return this.f10362a.hasMessages(0);
    }

    @Override // m5.l
    public final l.a d(int i10, int i11, int i12) {
        a aVarK = k();
        aVarK.f10363a = this.f10362a.obtainMessage(i10, i11, i12);
        return aVarK;
    }

    @Override // m5.l
    public final boolean e(int i10) {
        return this.f10362a.sendEmptyMessage(i10);
    }

    @Override // m5.l
    public final boolean f(l.a aVar) {
        a aVar2 = (a) aVar;
        Handler handler = this.f10362a;
        Message message = aVar2.f10363a;
        Objects.requireNonNull(message);
        boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        aVar2.a();
        return zSendMessageAtFrontOfQueue;
    }

    @Override // m5.l
    public final l.a g(int i10, Object obj) {
        a aVarK = k();
        aVarK.f10363a = this.f10362a.obtainMessage(i10, obj);
        return aVarK;
    }

    @Override // m5.l
    public final void h() {
        this.f10362a.removeMessages(2);
    }

    @Override // m5.l
    public final boolean i(Runnable runnable) {
        return this.f10362a.post(runnable);
    }

    @Override // m5.l
    public final l.a j(int i10) {
        a aVarK = k();
        aVarK.f10363a = this.f10362a.obtainMessage(i10);
        return aVarK;
    }
}
