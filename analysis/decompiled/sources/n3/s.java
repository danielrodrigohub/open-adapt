package n3;

import android.content.Context;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements t6.o {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f11674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f11675i;

    public /* synthetic */ s(Object obj, int i10) {
        this.f11674h = i10;
        this.f11675i = obj;
    }

    @Override // t6.o
    public final Object get() {
        switch (this.f11674h) {
            case 0:
                return new m((Context) this.f11675i);
            default:
                return Boolean.valueOf(((o0) this.f11675i).G);
        }
    }
}
