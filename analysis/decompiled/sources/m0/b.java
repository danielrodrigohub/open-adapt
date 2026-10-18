package m0;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputContentInfo;
import j0.a0;
import m5.o;
import n3.k0;
import n3.l1;
import n3.o1;
import n5.t;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements e, o.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f10260c;

    public /* synthetic */ b(Object obj, int i10) {
        this.f10259b = i10;
        this.f10260c = obj;
    }

    public final boolean a(f fVar, int i10, Bundle bundle) {
        View view = (View) this.f10260c;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 25 && (i10 & 1) != 0) {
            try {
                fVar.f10263a.d();
                InputContentInfo inputContentInfo = (InputContentInfo) fVar.f10263a.b();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo);
            } catch (Exception e10) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e10);
                return false;
            }
        }
        ClipData clipData = new ClipData(fVar.f10263a.a(), new ClipData.Item(fVar.f10263a.c()));
        j0.c.b aVar = i11 >= 31 ? new j0.c.a(clipData, 2) : new j0.c.C0179c(clipData, 2);
        aVar.c(fVar.f10263a.e());
        aVar.b(bundle);
        return a0.l(view, aVar.a()) == null;
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f10259b) {
            case 1:
                ((o1.c) obj).o0(k0.o0((l1) this.f10260c));
                break;
            case 2:
                ((o1.c) obj).b((t) this.f10260c);
                break;
            default:
                ((o3.b) obj).C0();
                break;
        }
    }
}
