package okhttp3.internal;

import androidx.fragment.app.r0;
import de.c;
import de.f;
import de.g;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: -ResponseBodyCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _ResponseBodyCommonKt {
    public static final ResponseBody commonAsResponseBody(final f fVar, final MediaType mediaType, final long j10) {
        h.j(fVar, "<this>");
        return new ResponseBody() { // from class: okhttp3.internal._ResponseBodyCommonKt.commonAsResponseBody.1
            @Override // okhttp3.ResponseBody
            public long contentLength() {
                return j10;
            }

            @Override // okhttp3.ResponseBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.ResponseBody
            public f source() {
                return fVar;
            }
        };
    }

    public static final g commonByteString(ResponseBody responseBody) throws Throwable {
        g gVarI;
        h.j(responseBody, "<this>");
        long jContentLength = responseBody.contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(r0.f("Cannot buffer entire body for content length: ", jContentLength));
        }
        f fVarSource = responseBody.source();
        Throwable th = null;
        try {
            gVarI = fVarSource.i();
        } catch (Throwable th2) {
            gVarI = null;
            th = th2;
        }
        if (fVarSource != null) {
            try {
                fVarSource.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    h.b(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        h.g(gVarI);
        int iJ = gVarI.j();
        if (jContentLength == -1 || jContentLength == iJ) {
            return gVarI;
        }
        throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iJ + ") disagree");
    }

    public static final byte[] commonBytes(ResponseBody responseBody) throws Throwable {
        byte[] bArrW;
        h.j(responseBody, "<this>");
        long jContentLength = responseBody.contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(r0.f("Cannot buffer entire body for content length: ", jContentLength));
        }
        f fVarSource = responseBody.source();
        Throwable th = null;
        try {
            bArrW = fVarSource.w();
        } catch (Throwable th2) {
            bArrW = null;
            th = th2;
        }
        if (fVarSource != null) {
            try {
                fVarSource.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    h.b(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        h.g(bArrW);
        int length = bArrW.length;
        if (jContentLength == -1 || jContentLength == length) {
            return bArrW;
        }
        throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + length + ") disagree");
    }

    public static final void commonClose(ResponseBody responseBody) {
        h.j(responseBody, "<this>");
        _UtilCommonKt.closeQuietly(responseBody.source());
    }

    public static final <T> T commonConsumeSource(ResponseBody responseBody, l<? super f, ? extends T> lVar, l<? super T, Integer> lVar2) throws Throwable {
        T tInvoke;
        h.j(responseBody, "<this>");
        h.j(lVar, "consumer");
        h.j(lVar2, "sizeMapper");
        long jContentLength = responseBody.contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(r0.f("Cannot buffer entire body for content length: ", jContentLength));
        }
        f fVarSource = responseBody.source();
        Throwable th = null;
        try {
            tInvoke = lVar.invoke(fVarSource);
        } catch (Throwable th2) {
            th = th2;
            tInvoke = (Object) null;
        }
        if (fVarSource != null) {
            try {
                fVarSource.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    h.b(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        h.g(tInvoke);
        int iIntValue = lVar2.invoke(tInvoke).intValue();
        if (jContentLength == -1 || jContentLength == iIntValue) {
            return tInvoke;
        }
        throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iIntValue + ") disagree");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final ResponseBody commonToResponseBody(byte[] bArr, MediaType mediaType) {
        h.j(bArr, "<this>");
        ResponseBody.Companion companion = ResponseBody.Companion;
        c cVar = new c();
        cVar.w0(bArr);
        return companion.create(cVar, mediaType, bArr.length);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final ResponseBody commonToResponseBody(g gVar, MediaType mediaType) {
        h.j(gVar, "<this>");
        ResponseBody.Companion companion = ResponseBody.Companion;
        c cVar = new c();
        cVar.u0(gVar);
        return companion.create(cVar, mediaType, gVar.j());
    }
}
