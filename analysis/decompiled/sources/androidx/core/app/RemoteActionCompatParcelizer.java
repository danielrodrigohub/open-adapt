package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import i1.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        Object objO = remoteActionCompat.f1763a;
        if (aVar.i(1)) {
            objO = aVar.o();
        }
        remoteActionCompat.f1763a = (IconCompat) objO;
        CharSequence charSequenceH = remoteActionCompat.f1764b;
        if (aVar.i(2)) {
            charSequenceH = aVar.h();
        }
        remoteActionCompat.f1764b = charSequenceH;
        CharSequence charSequenceH2 = remoteActionCompat.f1765c;
        if (aVar.i(3)) {
            charSequenceH2 = aVar.h();
        }
        remoteActionCompat.f1765c = charSequenceH2;
        remoteActionCompat.f1766d = (PendingIntent) aVar.m(remoteActionCompat.f1766d, 4);
        boolean zF = remoteActionCompat.f1767e;
        if (aVar.i(5)) {
            zF = aVar.f();
        }
        remoteActionCompat.f1767e = zF;
        boolean zF2 = remoteActionCompat.f1768f;
        if (aVar.i(6)) {
            zF2 = aVar.f();
        }
        remoteActionCompat.f1768f = zF2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) {
        Objects.requireNonNull(aVar);
        IconCompat iconCompat = remoteActionCompat.f1763a;
        aVar.p(1);
        aVar.y(iconCompat);
        CharSequence charSequence = remoteActionCompat.f1764b;
        aVar.p(2);
        aVar.s(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f1765c;
        aVar.p(3);
        aVar.s(charSequence2);
        aVar.w(remoteActionCompat.f1766d, 4);
        boolean z10 = remoteActionCompat.f1767e;
        aVar.p(5);
        aVar.q(z10);
        boolean z11 = remoteActionCompat.f1768f;
        aVar.p(6);
        aVar.q(z11);
    }
}
