package ha;

import android.os.Parcelable;

/* JADX INFO: compiled from: PairingState.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class u implements Parcelable {
    public abstract String a();

    public final String b() {
        return androidx.recyclerview.widget.d.c("PairingState[state: ", a());
    }
}
