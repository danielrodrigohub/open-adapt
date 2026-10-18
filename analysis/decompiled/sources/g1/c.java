package g1;

import android.graphics.Path;

/* JADX INFO: compiled from: PathMotion.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f7536h;

    public abstract Object a();

    public abstract Path b(float f10, float f11, float f12, float f13);

    public final String toString() {
        switch (this.f7536h) {
            case 1:
                return a().toString();
            default:
                return super.toString();
        }
    }
}
