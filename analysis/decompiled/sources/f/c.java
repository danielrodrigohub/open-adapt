package f;

import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatActivity.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements b1.b.InterfaceC0051b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f6803a;

    public c(e eVar) {
        this.f6803a = eVar;
    }

    @Override // b1.b.InterfaceC0051b
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Objects.requireNonNull(this.f6803a.h0());
        return bundle;
    }
}
