package kotlinx.coroutines;

import a0.b;
import a0.d;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes.dex */
final class Empty implements Incomplete {
    private final boolean isActive;

    public Empty(boolean z10) {
        this.isActive = z10;
    }

    @Override // kotlinx.coroutines.Incomplete
    public NodeList getList() {
        return null;
    }

    @Override // kotlinx.coroutines.Incomplete
    public boolean isActive() {
        return this.isActive;
    }

    public String toString() {
        return d.d(b.c("Empty{"), isActive() ? "Active" : "New", '}');
    }
}
