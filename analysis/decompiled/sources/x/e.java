package x;

import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ActivityRecreator.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f17616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17617i;

    public e(Object obj, Object obj2) {
        this.f17616h = obj;
        this.f17617i = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Method method = f.f17621d;
            if (method != null) {
                method.invoke(this.f17616h, this.f17617i, Boolean.FALSE, "AppCompat recreation");
            } else {
                f.f17622e.invoke(this.f17616h, this.f17617i, Boolean.FALSE);
            }
        } catch (RuntimeException e10) {
            if (e10.getClass() == RuntimeException.class && e10.getMessage() != null && e10.getMessage().startsWith("Unable to stop")) {
                throw e10;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
