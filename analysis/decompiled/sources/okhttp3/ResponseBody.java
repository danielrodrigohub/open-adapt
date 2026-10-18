package okhttp3;

import de.c;
import de.f;
import de.g;
import fd.e;
import fd.o;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okhttp3.internal.Internal;
import okhttp3.internal._ResponseBodyCommonKt;
import okhttp3.internal._UtilJvmKt;
import p4.h;

/* JADX INFO: compiled from: ResponseBody.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    /* JADX INFO: compiled from: ResponseBody.kt */
    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final f source;

        public BomAwareReader(f fVar, Charset charset) {
            h.j(fVar, "source");
            h.j(charset, "charset");
            this.source = fVar;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            o oVar;
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
                oVar = o.f7408a;
            } else {
                oVar = null;
            }
            if (oVar == null) {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) throws IOException {
            h.j(cArr, "cbuf");
            if (this.closed) {
                throw new IOException("Stream closed");
            }
            Reader inputStreamReader = this.delegate;
            if (inputStreamReader == null) {
                inputStreamReader = new InputStreamReader(this.source.e0(), _UtilJvmKt.readBomAsCharset(this.source, this.charset));
                this.delegate = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i10, i11);
        }
    }

    /* JADX INFO: compiled from: ResponseBody.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public final ResponseBody create(String str, MediaType mediaType) {
            h.j(str, "<this>");
            e<Charset, MediaType> eVarChooseCharset = Internal.chooseCharset(mediaType);
            Charset charset = eVarChooseCharset.f7388h;
            MediaType mediaType2 = eVarChooseCharset.f7389i;
            c cVar = new c();
            h.j(charset, "charset");
            c cVarE0 = cVar.E0(str, 0, str.length(), charset);
            return create(cVarE0, mediaType2, cVarE0.f6199i);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, g gVar, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(gVar, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, f fVar, MediaType mediaType, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            if ((i10 & 2) != 0) {
                j10 = -1;
            }
            return companion.create(fVar, mediaType, j10);
        }

        public final ResponseBody create(byte[] bArr, MediaType mediaType) {
            h.j(bArr, "<this>");
            return _ResponseBodyCommonKt.commonToResponseBody(bArr, mediaType);
        }

        public final ResponseBody create(g gVar, MediaType mediaType) {
            h.j(gVar, "<this>");
            return _ResponseBodyCommonKt.commonToResponseBody(gVar, mediaType);
        }

        public final ResponseBody create(f fVar, MediaType mediaType, long j10) {
            h.j(fVar, "<this>");
            return _ResponseBodyCommonKt.commonAsResponseBody(fVar, mediaType, j10);
        }

        public final ResponseBody create(MediaType mediaType, String str) {
            h.j(str, "content");
            return create(str, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, byte[] bArr) {
            h.j(bArr, "content");
            return create(bArr, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, g gVar) {
            h.j(gVar, "content");
            return create(gVar, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, long j10, f fVar) {
            h.j(fVar, "content");
            return create(fVar, mediaType, j10);
        }
    }

    private final Charset charset() {
        return Internal.charset$default(contentType(), null, 1, null);
    }

    public static final ResponseBody create(f fVar, MediaType mediaType, long j10) {
        return Companion.create(fVar, mediaType, j10);
    }

    public static final ResponseBody create(g gVar, MediaType mediaType) {
        return Companion.create(gVar, mediaType);
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j10, f fVar) {
        return Companion.create(mediaType, j10, fVar);
    }

    public static final ResponseBody create(MediaType mediaType, g gVar) {
        return Companion.create(mediaType, gVar);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public final InputStream byteStream() {
        return source().e0();
    }

    public final g byteString() throws IOException {
        return _ResponseBodyCommonKt.commonByteString(this);
    }

    public final byte[] bytes() throws IOException {
        return _ResponseBodyCommonKt.commonBytes(this);
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        _ResponseBodyCommonKt.commonClose(this);
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract f source();

    public final String string() throws IOException {
        f fVarSource = source();
        try {
            String strD0 = fVarSource.d0(_UtilJvmKt.readBomAsCharset(fVarSource, charset()));
            d3.e.d(fVarSource, null);
            return strD0;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                d3.e.d(fVarSource, th);
                throw th2;
            }
        }
    }
}
