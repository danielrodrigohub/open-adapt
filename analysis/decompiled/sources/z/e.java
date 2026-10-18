package z;

import android.graphics.Typeface;
import r3.k;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f19231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f19232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f19233j;

    public /* synthetic */ e(Object obj, Object obj2, int i10) {
        this.f19231h = i10;
        this.f19232i = obj;
        this.f19233j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19231h) {
            case 0:
                ((d.e) this.f19232i).e((Typeface) this.f19233j);
                break;
            default:
                k.a aVar = (k.a) this.f19232i;
                ((k) this.f19233j).p0(aVar.f14502a, aVar.f14503b);
                break;
        }
    }
}
