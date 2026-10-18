package g7;

import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: compiled from: Streams.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {
    public static void a(e7.l lVar, JsonWriter jsonWriter) throws IOException {
        h7.q.V.b(jsonWriter, lVar);
    }

    /* JADX INFO: compiled from: Streams.java */
    public static final class a extends Writer {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Appendable f7843h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final C0149a f7844i = new C0149a();

        /* JADX INFO: renamed from: g7.s$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Streams.java */
        public static class C0149a implements CharSequence {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public char[] f7845h;

            @Override // java.lang.CharSequence
            public final char charAt(int i10) {
                return this.f7845h[i10];
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.f7845h.length;
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i10, int i11) {
                return new String(this.f7845h, i10, i11 - i10);
            }
        }

        public a(Appendable appendable) {
            this.f7843h = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i10, int i11) throws IOException {
            C0149a c0149a = this.f7844i;
            c0149a.f7845h = cArr;
            this.f7843h.append(c0149a, i10, i11 + i10);
        }

        @Override // java.io.Writer
        public final void write(int i10) throws IOException {
            this.f7843h.append((char) i10);
        }
    }
}
