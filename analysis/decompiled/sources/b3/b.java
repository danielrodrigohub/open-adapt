package b3;

import java.io.File;
import java.util.Objects;
import r2.w;

/* JADX INFO: compiled from: FileResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements w<File> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final File f3228h;

    public b(File file) {
        Objects.requireNonNull(file, "Argument must not be null");
        this.f3228h = file;
    }

    @Override // r2.w
    public final /* bridge */ /* synthetic */ int a() {
        return 1;
    }

    @Override // r2.w
    public final Class<File> b() {
        return this.f3228h.getClass();
    }

    @Override // r2.w
    public final /* bridge */ /* synthetic */ void c() {
    }

    @Override // r2.w
    public final File get() {
        return this.f3228h;
    }
}
