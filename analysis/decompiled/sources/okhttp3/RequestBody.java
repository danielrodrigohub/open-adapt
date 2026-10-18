package okhttp3;

import de.a0;
import de.c0;
import de.g;
import de.j0;
import de.k;
import de.k0;
import de.p;
import de.s;
import de.w;
import de.x;
import fd.e;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.logging.Logger;
import okhttp3.internal.Internal;
import okhttp3.internal._RequestBodyCommonKt;
import rd.h;

/* JADX INFO: compiled from: RequestBody.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class RequestBody {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: RequestBody.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, String str, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public final RequestBody create(String str, MediaType mediaType) {
            p4.h.j(str, "<this>");
            e<Charset, MediaType> eVarChooseCharset = Internal.chooseCharset(mediaType);
            Charset charset = eVarChooseCharset.f7388h;
            MediaType mediaType2 = eVarChooseCharset.f7389i;
            byte[] bytes = str.getBytes(charset);
            p4.h.i(bytes, "this as java.lang.String).getBytes(charset)");
            return create(bytes, mediaType2, 0, bytes.length);
        }

        public final RequestBody create(MediaType mediaType, byte[] bArr) {
            p4.h.j(bArr, "content");
            return create$default(this, mediaType, bArr, 0, 0, 12, (Object) null);
        }

        public final RequestBody create(MediaType mediaType, byte[] bArr, int i10) {
            p4.h.j(bArr, "content");
            return create$default(this, mediaType, bArr, i10, 0, 8, (Object) null);
        }

        public final RequestBody create(byte[] bArr) {
            p4.h.j(bArr, "<this>");
            return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType) {
            p4.h.j(bArr, "<this>");
            return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType, int i10) {
            p4.h.j(bArr, "<this>");
            return create$default(this, bArr, mediaType, i10, 0, 4, (Object) null);
        }

        public final RequestBody gzip(final RequestBody requestBody) {
            p4.h.j(requestBody, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$gzip$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return -1L;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return requestBody.contentType();
                }

                @Override // okhttp3.RequestBody
                public boolean isOneShot() {
                    return requestBody.isOneShot();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(de.e eVar) throws IOException {
                    p4.h.j(eVar, "sink");
                    de.e eVarA = w.a(new p(eVar));
                    requestBody.writeTo(eVarA);
                    ((c0) eVarA).close();
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, g gVar, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(gVar, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, FileDescriptor fileDescriptor, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(fileDescriptor, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, File file, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(file, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, a0 a0Var, k kVar, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                mediaType = null;
            }
            return companion.create(a0Var, kVar, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                mediaType = null;
            }
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = bArr.length;
            }
            return companion.create(bArr, mediaType, i10, i11);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, MediaType mediaType, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 4) != 0) {
                i10 = 0;
            }
            if ((i12 & 8) != 0) {
                i11 = bArr.length;
            }
            return companion.create(mediaType, bArr, i10, i11);
        }

        public final RequestBody create(g gVar, MediaType mediaType) {
            p4.h.j(gVar, "<this>");
            return _RequestBodyCommonKt.commonToRequestBody(gVar, mediaType);
        }

        public final RequestBody create(final FileDescriptor fileDescriptor, final MediaType mediaType) {
            p4.h.j(fileDescriptor, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public boolean isOneShot() {
                    return true;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(de.e eVar) throws IOException {
                    p4.h.j(eVar, "sink");
                    FileInputStream fileInputStream = new FileInputStream(fileDescriptor);
                    try {
                        eVar.b().s(w.f(fileInputStream));
                        d3.e.d(fileInputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            d3.e.d(fileInputStream, th);
                            throw th2;
                        }
                    }
                }
            };
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType, int i10, int i11) {
            p4.h.j(bArr, "<this>");
            return _RequestBodyCommonKt.commonToRequestBody(bArr, mediaType, i10, i11);
        }

        public final RequestBody create(final File file, final MediaType mediaType) {
            p4.h.j(file, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(de.e eVar) throws IOException {
                    p4.h.j(eVar, "sink");
                    File file2 = file;
                    Logger logger = x.f6278a;
                    p4.h.j(file2, "<this>");
                    s sVar = new s(new FileInputStream(file2), k0.NONE);
                    try {
                        eVar.s(sVar);
                        d3.e.d(sVar, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            d3.e.d(sVar, th);
                            throw th2;
                        }
                    }
                }
            };
        }

        public final RequestBody create(final a0 a0Var, final k kVar, final MediaType mediaType) {
            p4.h.j(a0Var, "<this>");
            p4.h.j(kVar, "fileSystem");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    Long l10 = kVar.metadata(a0Var).f6246d;
                    if (l10 != null) {
                        return l10.longValue();
                    }
                    return -1L;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(de.e eVar) throws IOException {
                    p4.h.j(eVar, "sink");
                    j0 j0VarSource = kVar.source(a0Var);
                    try {
                        eVar.s(j0VarSource);
                        d3.e.d(j0VarSource, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            d3.e.d(j0VarSource, th);
                            throw th2;
                        }
                    }
                }
            };
        }

        public final RequestBody create(MediaType mediaType, String str) {
            p4.h.j(str, "content");
            return create(str, mediaType);
        }

        public final RequestBody create(MediaType mediaType, g gVar) {
            p4.h.j(gVar, "content");
            return create(gVar, mediaType);
        }

        public final RequestBody create(MediaType mediaType, byte[] bArr, int i10, int i11) {
            p4.h.j(bArr, "content");
            return create(bArr, mediaType, i10, i11);
        }

        public final RequestBody create(MediaType mediaType, File file) {
            p4.h.j(file, "file");
            return create(file, mediaType);
        }
    }

    public static final RequestBody create(a0 a0Var, k kVar, MediaType mediaType) {
        return Companion.create(a0Var, kVar, mediaType);
    }

    public static final RequestBody create(g gVar, MediaType mediaType) {
        return Companion.create(gVar, mediaType);
    }

    public static final RequestBody create(File file, MediaType mediaType) {
        return Companion.create(file, mediaType);
    }

    public static final RequestBody create(FileDescriptor fileDescriptor, MediaType mediaType) {
        return Companion.create(fileDescriptor, mediaType);
    }

    public static final RequestBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final RequestBody create(MediaType mediaType, g gVar) {
        return Companion.create(mediaType, gVar);
    }

    public static final RequestBody create(MediaType mediaType, File file) {
        return Companion.create(mediaType, file);
    }

    public static final RequestBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i10) {
        return Companion.create(mediaType, bArr, i10);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i10, int i11) {
        return Companion.create(mediaType, bArr, i10, i11);
    }

    public static final RequestBody create(byte[] bArr) {
        return Companion.create(bArr);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i10) {
        return Companion.create(bArr, mediaType, i10);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i10, int i11) {
        return Companion.create(bArr, mediaType, i10, i11);
    }

    public static final RequestBody gzip(RequestBody requestBody) {
        return Companion.gzip(requestBody);
    }

    public long contentLength() throws IOException {
        return _RequestBodyCommonKt.commonContentLength(this);
    }

    public abstract MediaType contentType();

    public boolean isDuplex() {
        return _RequestBodyCommonKt.commonIsDuplex(this);
    }

    public boolean isOneShot() {
        return _RequestBodyCommonKt.commonIsOneShot(this);
    }

    public abstract void writeTo(de.e eVar) throws IOException;
}
