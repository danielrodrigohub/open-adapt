package r4;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: MediaChunkIterator.java */
/* JADX INFO: loaded from: classes.dex */
public interface n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f14606a = new a();

    /* JADX INFO: compiled from: MediaChunkIterator.java */
    public class a implements n {
        @Override // r4.n
        public final long a() {
            throw new NoSuchElementException();
        }

        @Override // r4.n
        public final long b() {
            throw new NoSuchElementException();
        }

        @Override // r4.n
        public final boolean next() {
            return false;
        }
    }

    long a();

    long b();

    boolean next();
}
