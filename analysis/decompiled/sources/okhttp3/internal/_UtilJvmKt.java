package okhttp3.internal;

import a0.b;
import androidx.activity.k;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.util.Constants;
import de.c;
import de.f;
import de.j0;
import gd.j;
import gd.n;
import gd.w;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import n3.z;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http2.Header;
import p4.h;
import vd.e;
import yd.a;
import yd.s;

/* JADX INFO: compiled from: -UtilJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class _UtilJvmKt {
    public static final Headers EMPTY_HEADERS = _UtilCommonKt.getCommonEmptyHeaders();
    public static final RequestBody EMPTY_REQUEST = _UtilCommonKt.getCommonEmptyRequestBody();
    public static final ResponseBody EMPTY_RESPONSE = _UtilCommonKt.getCommonEmptyResponse();
    public static final TimeZone UTC;
    public static final boolean assertionsEnabled;
    public static final String okHttpName;

    static {
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        h.g(timeZone);
        UTC = timeZone;
        assertionsEnabled = false;
        okHttpName = s.x0(s.w0(OkHttpClient.class.getName(), "okhttp3."), "Client");
    }

    public static final EventListener.Factory asFactory(EventListener eventListener) {
        h.j(eventListener, "<this>");
        return new z(eventListener, 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: asFactory$lambda-7, reason: not valid java name */
    public static final EventListener m160asFactory$lambda7(EventListener eventListener, Call call) {
        h.j(eventListener, "$this_asFactory");
        h.j(call, "it");
        return eventListener;
    }

    public static final void assertThreadDoesntHoldLock(Object obj) {
        h.j(obj, "<this>");
        if (assertionsEnabled && Thread.holdsLock(obj)) {
            StringBuilder sbC = b.c("Thread ");
            sbC.append(Thread.currentThread().getName());
            sbC.append(" MUST NOT hold lock on ");
            sbC.append(obj);
            throw new AssertionError(sbC.toString());
        }
    }

    public static final void assertThreadHoldsLock(Object obj) {
        h.j(obj, "<this>");
        if (!assertionsEnabled || Thread.holdsLock(obj)) {
            return;
        }
        StringBuilder sbC = b.c("Thread ");
        sbC.append(Thread.currentThread().getName());
        sbC.append(" MUST hold lock on ");
        sbC.append(obj);
        throw new AssertionError(sbC.toString());
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl httpUrl2) {
        h.j(httpUrl, "<this>");
        h.j(httpUrl2, "other");
        return h.c(httpUrl.host(), httpUrl2.host()) && httpUrl.port() == httpUrl2.port() && h.c(httpUrl.scheme(), httpUrl2.scheme());
    }

    public static final int checkDuration(String str, long j10, TimeUnit timeUnit) {
        h.j(str, "name");
        boolean z10 = true;
        if (!(j10 >= 0)) {
            throw new IllegalStateException(d.c(str, " < 0").toString());
        }
        if (!(timeUnit != null)) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(j10);
        if (!(millis <= 2147483647L)) {
            throw new IllegalArgumentException(d.c(str, " too large.").toString());
        }
        if (millis == 0 && j10 > 0) {
            z10 = false;
        }
        if (z10) {
            return (int) millis;
        }
        throw new IllegalArgumentException(d.c(str, " too small.").toString());
    }

    public static final void closeQuietly(Socket socket) {
        h.j(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e10) {
            throw e10;
        } catch (RuntimeException e11) {
            if (!h.c(e11.getMessage(), "bio == null")) {
                throw e11;
            }
        } catch (Exception unused) {
        }
    }

    public static final boolean discard(j0 j0Var, int i10, TimeUnit timeUnit) {
        h.j(j0Var, "<this>");
        h.j(timeUnit, "timeUnit");
        try {
            return skipAll(j0Var, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final String format(String str, Object... objArr) {
        h.j(str, "format");
        h.j(objArr, "args");
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        h.i(str2, "format(locale, format, *args)");
        return str2;
    }

    public static final long headersContentLength(Response response) {
        h.j(response, "<this>");
        String str = response.headers().get(Constants.Network.CONTENT_LENGTH_HEADER);
        if (str != null) {
            return _UtilCommonKt.toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... tArr) {
        h.j(tArr, "elements");
        Object[] objArr = (Object[]) tArr.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(o.z(Arrays.copyOf(objArr, objArr.length)));
        h.i(listUnmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final boolean isHealthy(Socket socket, f fVar) {
        h.j(socket, "<this>");
        h.j(fVar, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !fVar.z();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final String lowercase(String str) {
        h.j(str, "<this>");
        Locale locale = Locale.ROOT;
        h.i(locale, "ROOT");
        String lowerCase = str.toLowerCase(locale);
        h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public static final void notify(Object obj) {
        h.j(obj, "<this>");
        obj.notify();
    }

    public static final void notifyAll(Object obj) {
        h.j(obj, "<this>");
        obj.notifyAll();
    }

    public static final String peerName(Socket socket) {
        h.j(socket, "<this>");
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        h.i(hostName, "address.hostName");
        return hostName;
    }

    public static final Charset readBomAsCharset(f fVar, Charset charset) throws IOException {
        Charset charsetForName;
        h.j(fVar, "<this>");
        h.j(charset, "default");
        int iV = fVar.V(_UtilCommonKt.getUNICODE_BOMS());
        if (iV == -1) {
            return charset;
        }
        if (iV == 0) {
            return a.f19171b;
        }
        if (iV == 1) {
            return a.f19172c;
        }
        if (iV == 2) {
            return a.f19173d;
        }
        if (iV == 3) {
            a aVar = a.f19170a;
            charsetForName = a.f19177h;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32BE");
                h.i(charsetForName, "forName(\"UTF-32BE\")");
                a.f19177h = charsetForName;
            }
        } else {
            if (iV != 4) {
                throw new AssertionError();
            }
            a aVar2 = a.f19170a;
            charsetForName = a.f19176g;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32LE");
                h.i(charsetForName, "forName(\"UTF-32LE\")");
                a.f19176g = charsetForName;
            }
        }
        return charsetForName;
    }

    public static final <T> T readFieldOrNull(Object obj, Class<T> cls, String str) {
        Object fieldOrNull;
        h.j(obj, "instance");
        h.j(cls, "fieldType");
        h.j(str, "fieldName");
        Class<?> superclass = obj.getClass();
        while (true) {
            T tCast = null;
            if (h.c(superclass, Object.class)) {
                if (h.c(str, "delegate") || (fieldOrNull = readFieldOrNull(obj, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, cls, str);
            }
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (cls.isInstance(obj2)) {
                    tCast = cls.cast(obj2);
                }
                return tCast;
            } catch (NoSuchFieldException unused) {
                superclass = superclass.getSuperclass();
                h.i(superclass, "c.superclass");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005b A[PHI: r12
      0x005b: PHI (r12v6 boolean) = (r12v5 boolean), (r12v10 boolean) binds: [B:23:0x007d, B:13:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:576)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:602)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    public static final boolean skipAll(j0 j0Var, int i10, TimeUnit timeUnit) throws IOException {
        boolean z10;
        h.j(j0Var, "<this>");
        h.j(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = j0Var.timeout().hasDeadline() ? j0Var.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        j0Var.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i10)) + jNanoTime);
        try {
            c cVar = new c();
            while (j0Var.read(cVar, 8192L) != -1) {
                cVar.x();
            }
            z10 = true;
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                j0Var.timeout().clearDeadline();
            } else {
                j0Var.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
        } catch (InterruptedIOException unused) {
            z10 = false;
            if (jDeadlineNanoTime != Long.MAX_VALUE) {
                j0Var.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                j0Var.timeout().clearDeadline();
            } else {
                j0Var.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
        return z10;
    }

    public static final ThreadFactory threadFactory(final String str, final boolean z10) {
        h.j(str, "name");
        return new ThreadFactory() { // from class: ce.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return _UtilJvmKt.m161threadFactory$lambda1(str, z10, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: threadFactory$lambda-1, reason: not valid java name */
    public static final Thread m161threadFactory$lambda1(String str, boolean z10, Runnable runnable) {
        h.j(str, "$name");
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z10);
        return thread;
    }

    public static final void threadName(String str, qd.a<fd.o> aVar) {
        h.j(str, "name");
        h.j(aVar, "block");
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(str);
        try {
            aVar.invoke();
        } finally {
            threadCurrentThread.setName(name);
        }
    }

    public static final List<Header> toHeaderList(Headers headers) {
        h.j(headers, "<this>");
        e eVarW = k.w(0, headers.size());
        ArrayList arrayList = new ArrayList(j.T(eVarW, 10));
        Iterator<Integer> it = eVarW.iterator();
        while (it.hasNext()) {
            int iA = ((w) it).a();
            arrayList.add(new Header(headers.name(iA), headers.value(iA)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> list) {
        h.j(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().A(), header.component2().A());
        }
        return builder.build();
    }

    public static final String toHexString(long j10) {
        String hexString = Long.toHexString(j10);
        h.i(hexString, "toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl httpUrl, boolean z10) {
        String strHost;
        h.j(httpUrl, "<this>");
        if (s.i0(httpUrl.host(), ":")) {
            strHost = '[' + httpUrl.host() + ']';
        } else {
            strHost = httpUrl.host();
        }
        if (!z10 && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + ':' + httpUrl.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return toHostHeader(httpUrl, z10);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        h.j(list, "<this>");
        List<T> listUnmodifiableList = Collections.unmodifiableList(n.n0(list));
        h.i(listUnmodifiableList, "unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    public static final String uppercase(String str) {
        h.j(str, "<this>");
        Locale locale = Locale.ROOT;
        h.i(locale, "ROOT");
        String upperCase = str.toUpperCase(locale);
        h.i(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    public static final void wait(Object obj) throws InterruptedException {
        h.j(obj, "<this>");
        obj.wait();
    }

    public static final String lowercase(String str, Locale locale) {
        h.j(str, "<this>");
        h.j(locale, "locale");
        String lowerCase = str.toLowerCase(locale);
        h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    public static final String toHexString(int i10) {
        String hexString = Integer.toHexString(i10);
        h.i(hexString, "toHexString(this)");
        return hexString;
    }

    public static final String uppercase(String str, Locale locale) {
        h.j(str, "<this>");
        h.j(locale, "locale");
        String upperCase = str.toUpperCase(locale);
        h.i(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    public static final void closeQuietly(ServerSocket serverSocket) {
        h.j(serverSocket, "<this>");
        try {
            serverSocket.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }
}
