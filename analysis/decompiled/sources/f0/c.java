package f0;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import p4.h;

/* JADX INFO: compiled from: Bundle.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final void a(Bundle bundle, String str, Size size) {
        h.j(bundle, "bundle");
        h.j(str, "key");
        bundle.putSize(str, size);
    }

    public static final void b(Bundle bundle, String str, SizeF sizeF) {
        h.j(bundle, "bundle");
        h.j(str, "key");
        bundle.putSizeF(str, sizeF);
    }
}
