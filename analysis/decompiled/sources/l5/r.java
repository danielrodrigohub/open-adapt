package l5;

import android.net.Uri;
import android.text.TextUtils;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.URLConnectionInstrumentation;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.util.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import u6.q0;
import u6.v0;

/* JADX INFO: compiled from: DefaultHttpDataSource.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class r extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f10126e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10127f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f10128g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f10129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a0 f10130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a0 f10131j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f10132k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public t6.i<String> f10133l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public m f10134m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HttpURLConnection f10135n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public InputStream f10136o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f10137p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f10138q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f10139r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f10140s;

    /* JADX INFO: compiled from: DefaultHttpDataSource.java */
    public static final class a implements j.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f10142b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a0 f10141a = new a0();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f10143c = 8000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f10144d = 8000;

        @Override // l5.j.a
        public final j a() {
            return new r(this.f10142b, this.f10143c, this.f10144d, this.f10141a);
        }
    }

    /* JADX INFO: compiled from: DefaultHttpDataSource.java */
    public static class b extends u6.r<String, List<String>> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Map<String, List<String>> f10145i;

        public b(Map<String, List<String>> map) {
            this.f10145i = map;
        }

        @Override // g1.c
        public final Object a() {
            return this.f10145i;
        }

        @Override // u6.r, java.util.Map
        public final boolean containsKey(Object obj) {
            return obj != null && super.containsKey(obj);
        }

        @Override // java.util.Map
        public final boolean containsValue(Object obj) {
            Iterator it = ((u6.i) entrySet()).iterator();
            Objects.requireNonNull(it);
            if (obj == null) {
                while (it.hasNext()) {
                    if (((Map.Entry) it.next()).getValue() == null) {
                        return true;
                    }
                }
            } else {
                while (it.hasNext()) {
                    if (obj.equals(((Map.Entry) it.next()).getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // u6.r, java.util.Map
        public final Set<Map.Entry<String, List<String>>> entrySet() {
            return v0.b(super.entrySet(), new t6.i() { // from class: l5.t
                @Override // t6.i
                public final boolean apply(Object obj) {
                    return ((Map.Entry) obj).getKey() != null;
                }
            });
        }

        @Override // java.util.Map
        public final boolean equals(Object obj) {
            return obj != null && u6.h0.a(this, obj);
        }

        @Override // u6.r, java.util.Map
        public final Object get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // java.util.Map
        public final int hashCode() {
            return v0.c(entrySet());
        }

        @Override // u6.r, java.util.Map
        public final boolean isEmpty() {
            if (super.isEmpty()) {
                return true;
            }
            return super.size() == 1 && super.containsKey(null);
        }

        @Override // u6.r, java.util.Map
        public final Set<String> keySet() {
            return v0.b(super.keySet(), new t6.i() { // from class: l5.s
                @Override // t6.i
                public final boolean apply(Object obj) {
                    return ((String) obj) != null;
                }
            });
        }

        @Override // u6.r, java.util.Map
        public final int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    public r(String str, int i10, int i11, a0 a0Var) {
        super(true);
        this.f10129h = str;
        this.f10127f = i10;
        this.f10128g = i11;
        this.f10126e = false;
        this.f10130i = a0Var;
        this.f10133l = null;
        this.f10131j = new a0();
        this.f10132k = false;
    }

    public static void D(HttpURLConnection httpURLConnection, long j10) {
        int i10;
        if (httpURLConnection == null || (i10 = m5.g0.f10384a) < 19 || i10 > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j10 == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j10 <= 2048) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Class<? super Object> superclass = inputStream.getClass().getSuperclass();
                Objects.requireNonNull(superclass);
                Method declaredMethod = superclass.getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            }
        } catch (Exception unused) {
        }
    }

    public final URL A(URL url, String str, m mVar) throws x {
        if (str == null) {
            throw new x("Null location redirect", 2001);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new x(androidx.recyclerview.widget.d.c("Unsupported protocol redirect: ", protocol), 2001);
            }
            if (this.f10126e || protocol.equals(url.getProtocol())) {
                return url2;
            }
            StringBuilder sbC = a0.b.c("Disallowed cross-protocol redirect (");
            sbC.append(url.getProtocol());
            sbC.append(" to ");
            sbC.append(protocol);
            sbC.append(")");
            throw new x(sbC.toString(), 2001);
        } catch (MalformedURLException e10) {
            throw new x(e10, 2001, 1);
        }
    }

    public final HttpURLConnection B(URL url, int i10, byte[] bArr, long j10, long j11, boolean z10, boolean z11, Map<String, String> map) throws IOException {
        String string;
        HttpURLConnection httpURLConnection = (HttpURLConnection) URLConnectionInstrumentation.openConnection(url.openConnection());
        httpURLConnection.setConnectTimeout(this.f10127f);
        httpURLConnection.setReadTimeout(this.f10128g);
        HashMap map2 = new HashMap();
        a0 a0Var = this.f10130i;
        if (a0Var != null) {
            map2.putAll(a0Var.a());
        }
        map2.putAll(this.f10131j.a());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Pattern pattern = b0.f9970a;
        if (j10 == 0 && j11 == -1) {
            string = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("bytes=");
            sb2.append(j10);
            sb2.append("-");
            if (j11 != -1) {
                sb2.append((j10 + j11) - 1);
            }
            string = sb2.toString();
        }
        if (string != null) {
            httpURLConnection.setRequestProperty("Range", string);
        }
        String str = this.f10129h;
        if (str != null) {
            httpURLConnection.setRequestProperty(Constants.Network.USER_AGENT_HEADER, str);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z10 ? Constants.Network.ContentType.GZIP : Constants.Network.ContentType.IDENTITY);
        httpURLConnection.setInstanceFollowRedirects(z11);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(m.a(i10));
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    public final HttpURLConnection C(m mVar) throws IOException {
        URL url = new URL(mVar.f10071a.toString());
        int i10 = mVar.f10073c;
        byte[] bArr = mVar.f10074d;
        long j10 = mVar.f10076f;
        long j11 = mVar.f10077g;
        boolean z10 = (mVar.f10079i & 1) == 1;
        if (!this.f10126e && !this.f10132k) {
            return B(url, i10, bArr, j10, j11, z10, true, mVar.f10075e);
        }
        URL urlA = url;
        int i11 = i10;
        byte[] bArr2 = bArr;
        int i12 = 0;
        while (true) {
            int i13 = i12 + 1;
            if (i12 > 20) {
                throw new x(new NoRouteToHostException(androidx.appcompat.widget.e0.d("Too many redirects: ", i13)), 2001, 1);
            }
            long j12 = j10;
            long j13 = j10;
            int i14 = i11;
            URL url2 = urlA;
            long j14 = j11;
            HttpURLConnection httpURLConnectionB = B(urlA, i11, bArr2, j12, j11, z10, false, mVar.f10075e);
            int responseCode = httpURLConnectionB.getResponseCode();
            String headerField = httpURLConnectionB.getHeaderField("Location");
            if ((i14 == 1 || i14 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionB.disconnect();
                urlA = A(url2, headerField, mVar);
                i11 = i14;
            } else {
                if (i14 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    return httpURLConnectionB;
                }
                httpURLConnectionB.disconnect();
                if (this.f10132k && responseCode == 302) {
                    i11 = i14;
                } else {
                    bArr2 = null;
                    i11 = 1;
                }
                urlA = A(url2, headerField, mVar);
            }
            i12 = i13;
            j10 = j13;
            j11 = j14;
        }
    }

    public final void E(long j10, m mVar) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH];
        while (j10 > 0) {
            int iMin = (int) Math.min(j10, AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
            InputStream inputStream = this.f10136o;
            int i10 = m5.g0.f10384a;
            int i11 = inputStream.read(bArr, 0, iMin);
            if (Thread.currentThread().isInterrupted()) {
                throw new x(new InterruptedIOException(), ActivityTrace.MAX_TRACES, 1);
            }
            if (i11 == -1) {
                throw new x();
            }
            j10 -= (long) i11;
            v(i11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029 A[Catch: IOException -> 0x0033, TRY_LEAVE, TryCatch #0 {IOException -> 0x0033, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0017, B:10:0x001d, B:13:0x0029), top: B:18:0x0004 }] */
    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws x {
        int i12;
        if (i11 == 0) {
            return 0;
        }
        try {
            long j10 = this.f10139r;
            if (j10 != -1) {
                long j11 = j10 - this.f10140s;
                if (j11 != 0) {
                    i11 = (int) Math.min(i11, j11);
                    InputStream inputStream = this.f10136o;
                    int i13 = m5.g0.f10384a;
                    i12 = inputStream.read(bArr, i10, i11);
                    if (i12 != -1) {
                        this.f10140s += (long) i12;
                        v(i12);
                        return i12;
                    }
                }
            } else {
                InputStream inputStream2 = this.f10136o;
                int i14 = m5.g0.f10384a;
                i12 = inputStream2.read(bArr, i10, i11);
                if (i12 != -1) {
                    this.f10140s += (long) i12;
                    v(i12);
                    return i12;
                }
            }
            return -1;
        } catch (IOException e10) {
            m mVar = this.f10134m;
            int i15 = m5.g0.f10384a;
            throw x.b(e10, mVar, 2);
        }
    }

    @Override // l5.j
    public final void close() throws x {
        try {
            InputStream inputStream = this.f10136o;
            if (inputStream != null) {
                long j10 = this.f10139r;
                long j11 = -1;
                if (j10 != -1) {
                    j11 = j10 - this.f10140s;
                }
                D(this.f10135n, j11);
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    int i10 = m5.g0.f10384a;
                    throw new x(e10, ActivityTrace.MAX_TRACES, 3);
                }
            }
            this.f10136o = null;
            z();
            if (this.f10137p) {
                this.f10137p = false;
                w();
            }
        } catch (Throwable th) {
            this.f10136o = null;
            z();
            if (this.f10137p) {
                this.f10137p = false;
                w();
            }
            throw th;
        }
    }

    @Override // l5.j
    public final Map<String, List<String>> h() {
        HttpURLConnection httpURLConnection = this.f10135n;
        return httpURLConnection == null ? q0.f15971n : new b(httpURLConnection.getHeaderFields());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:78:0x0198  */
    @Override // l5.j
    public final long l(m mVar) throws x {
        boolean z10;
        long j10;
        long j11;
        long jMax;
        this.f10134m = mVar;
        this.f10140s = 0L;
        this.f10139r = 0L;
        x(mVar);
        try {
            HttpURLConnection httpURLConnectionC = C(mVar);
            this.f10135n = httpURLConnectionC;
            this.f10138q = httpURLConnectionC.getResponseCode();
            httpURLConnectionC.getResponseMessage();
            int i10 = this.f10138q;
            if (i10 < 200 || i10 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionC.getHeaderFields();
                if (this.f10138q == 416) {
                    String headerField = httpURLConnectionC.getHeaderField("Content-Range");
                    Pattern pattern = b0.f9970a;
                    if (TextUtils.isEmpty(headerField)) {
                        z10 = true;
                        j10 = -1;
                    } else {
                        Matcher matcher = b0.f9971b.matcher(headerField);
                        if (matcher.matches()) {
                            z10 = true;
                            String strGroup = matcher.group(1);
                            Objects.requireNonNull(strGroup);
                            j10 = Long.parseLong(strGroup);
                        } else {
                            z10 = true;
                            j10 = -1;
                        }
                    }
                    if (mVar.f10076f == j10) {
                        this.f10137p = z10;
                        y(mVar);
                        long j12 = mVar.f10077g;
                        if (j12 != -1) {
                            return j12;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionC.getErrorStream();
                try {
                    if (errorStream != null) {
                        m5.g0.U(errorStream);
                    } else {
                        byte[] bArr = m5.g0.f10389f;
                    }
                } catch (IOException unused) {
                    byte[] bArr2 = m5.g0.f10389f;
                }
                z();
                throw new z(this.f10138q, this.f10138q == 416 ? new k(2008) : null, headerFields, mVar);
            }
            String contentType = httpURLConnectionC.getContentType();
            t6.i<String> iVar = this.f10133l;
            if (iVar != null && !iVar.apply(contentType)) {
                z();
                throw new y(contentType, mVar);
            }
            if (this.f10138q == 200) {
                j11 = mVar.f10076f;
                if (j11 == 0) {
                    j11 = 0;
                }
            } else {
                j11 = 0;
            }
            boolean zEqualsIgnoreCase = Constants.Network.ContentType.GZIP.equalsIgnoreCase(httpURLConnectionC.getHeaderField(Constants.Network.CONTENT_ENCODING_HEADER));
            if (zEqualsIgnoreCase) {
                this.f10139r = mVar.f10077g;
            } else {
                long j13 = mVar.f10077g;
                if (j13 != -1) {
                    this.f10139r = j13;
                } else {
                    String headerField2 = httpURLConnectionC.getHeaderField(Constants.Network.CONTENT_LENGTH_HEADER);
                    String headerField3 = httpURLConnectionC.getHeaderField("Content-Range");
                    Pattern pattern2 = b0.f9970a;
                    if (TextUtils.isEmpty(headerField2)) {
                        jMax = -1;
                    } else {
                        try {
                            jMax = Long.parseLong(headerField2);
                        } catch (NumberFormatException unused2) {
                            m5.p.c("HttpUtil", "Unexpected Content-Length [" + headerField2 + "]");
                            jMax = -1;
                        }
                    }
                    if (!TextUtils.isEmpty(headerField3)) {
                        Matcher matcher2 = b0.f9970a.matcher(headerField3);
                        if (matcher2.matches()) {
                            try {
                                String strGroup2 = matcher2.group(2);
                                Objects.requireNonNull(strGroup2);
                                long j14 = Long.parseLong(strGroup2);
                                String strGroup3 = matcher2.group(1);
                                Objects.requireNonNull(strGroup3);
                                long j15 = (j14 - Long.parseLong(strGroup3)) + 1;
                                if (jMax < 0) {
                                    jMax = j15;
                                } else if (jMax != j15) {
                                    m5.p.g("HttpUtil", "Inconsistent headers [" + headerField2 + "] [" + headerField3 + "]");
                                    jMax = Math.max(jMax, j15);
                                }
                            } catch (NumberFormatException unused3) {
                                m5.p.c("HttpUtil", "Unexpected Content-Range [" + headerField3 + "]");
                            }
                        }
                    }
                    this.f10139r = jMax != -1 ? jMax - j11 : -1L;
                }
            }
            try {
                this.f10136o = httpURLConnectionC.getInputStream();
                if (zEqualsIgnoreCase) {
                    this.f10136o = new GZIPInputStream(this.f10136o);
                }
                this.f10137p = true;
                y(mVar);
                try {
                    E(j11, mVar);
                    return this.f10139r;
                } catch (IOException e10) {
                    z();
                    if (e10 instanceof x) {
                        throw ((x) e10);
                    }
                    throw new x(e10, ActivityTrace.MAX_TRACES, 1);
                }
            } catch (IOException e11) {
                z();
                throw new x(e11, ActivityTrace.MAX_TRACES, 1);
            }
        } catch (IOException e12) {
            z();
            throw x.b(e12, mVar, 1);
        }
    }

    @Override // l5.j
    public final Uri o() {
        HttpURLConnection httpURLConnection = this.f10135n;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final void z() {
        HttpURLConnection httpURLConnection = this.f10135n;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e10) {
                m5.p.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e10);
            }
            this.f10135n = null;
        }
    }
}
