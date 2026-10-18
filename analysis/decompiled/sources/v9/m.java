package v9;

import android.os.Parcelable;
import java.util.Map;

/* JADX INFO: compiled from: AdaptKitError.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends Throwable implements Parcelable, eb.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f16708h;

    public m(a aVar) {
        p4.h.j(aVar, "adaptIdentifier");
        this.f16708h = aVar;
    }

    public String b() {
        return getMessage();
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return null;
    }

    @Override // java.lang.Throwable
    public abstract String getMessage();

    @Override // eb.d
    public final Map<String, Object> m() {
        return gd.q.f8071h;
    }
}
