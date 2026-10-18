package y0;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: AutoClosingRoomOpenHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements d1.d, o {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d1.d f18235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f18236i;

    /* JADX INFO: compiled from: AutoClosingRoomOpenHelper.java */
    public static final class a implements d1.b {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw null;
        }
    }

    @Override // d1.d
    public final d1.b X() {
        Objects.requireNonNull(this.f18236i);
        h hVar = h.f18220c;
        throw null;
    }

    @Override // d1.d, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.f18236i.close();
        } catch (IOException e10) {
            throw e10;
        }
    }

    @Override // d1.d
    public final String getDatabaseName() {
        return this.f18235h.getDatabaseName();
    }

    @Override // d1.d
    public final void setWriteAheadLoggingEnabled(boolean z10) {
        this.f18235h.setWriteAheadLoggingEnabled(z10);
    }

    @Override // y0.o
    public final d1.d x() {
        return this.f18235h;
    }
}
