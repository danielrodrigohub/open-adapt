package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import java.util.Arrays;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import n3.i1;
import t6.n;
import u6.p0;
import u6.t;
import u6.v;

/* JADX INFO: compiled from: RtspMessageUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f4755a = Pattern.compile("([A-Z_]+) (.*) RTSP/1\\.0");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f4756b = Pattern.compile("RTSP/1\\.0 (\\d+) (.+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f4757c = Pattern.compile("Content-Length:\\s?(\\d+)", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f4758d = Pattern.compile("([\\w$\\-_.+]+)(?:;\\s?timeout=(\\d+))?");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f4759e = Pattern.compile("Digest realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"(?:,\\s?opaque=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\")?");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f4760f = Pattern.compile("Basic realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f4761g = new String(new byte[]{10});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f4762h = new String(new byte[]{13, 10});

    /* JADX INFO: compiled from: RtspMessageUtil.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f4763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f4764b;

        public a(String str, String str2) {
            this.f4763a = str;
            this.f4764b = str2;
        }
    }

    public static void a(boolean z10, String str) throws i1 {
        if (!z10) {
            throw i1.b(str, null);
        }
    }

    public static byte[] b(String str) {
        return str.getBytes(g.f4736n);
    }

    public static int c(String str) throws i1 {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e10) {
            throw i1.b(str, e10);
        }
    }

    public static int d(String str) {
        Objects.requireNonNull(str);
        switch (str) {
            case "RECORD":
                return 8;
            case "TEARDOWN":
                return 12;
            case "GET_PARAMETER":
                return 3;
            case "OPTIONS":
                return 4;
            case "PLAY_NOTIFY":
                return 7;
            case "PLAY":
                return 6;
            case "REDIRECT":
                return 9;
            case "SET_PARAMETER":
                return 11;
            case "PAUSE":
                return 5;
            case "SETUP":
                return 10;
            case "ANNOUNCE":
                return 1;
            case "DESCRIBE":
                return 2;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static v<Integer> e(String str) {
        if (str == null) {
            u6.a aVar = v.f16002i;
            return p0.f15967l;
        }
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = g0.f10384a;
        String[] strArrSplit = str.split(",\\s?", -1);
        int length = strArrSplit.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            Integer numValueOf = Integer.valueOf(d(strArrSplit[i11]));
            Objects.requireNonNull(numValueOf);
            int i13 = i12 + 1;
            if (objArrCopyOf.length < i13) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i13));
            }
            objArrCopyOf[i12] = numValueOf;
            i11++;
            i12 = i13;
        }
        return v.q(objArrCopyOf, i12);
    }

    public static a f(Uri uri) {
        String userInfo = uri.getUserInfo();
        if (userInfo == null || !userInfo.contains(":")) {
            return null;
        }
        int i10 = g0.f10384a;
        String[] strArrSplit = userInfo.split(":", 2);
        return new a(strArrSplit[0], strArrSplit[1]);
    }

    public static c g(String str) throws i1 {
        Matcher matcher = f4759e.matcher(str);
        if (matcher.find()) {
            String strGroup = matcher.group(1);
            Objects.requireNonNull(strGroup);
            String strGroup2 = matcher.group(3);
            Objects.requireNonNull(strGroup2);
            return new c(2, strGroup, strGroup2, n.b(matcher.group(4)));
        }
        Matcher matcher2 = f4760f.matcher(str);
        if (matcher2.matches()) {
            String strGroup3 = matcher2.group(1);
            Objects.requireNonNull(strGroup3);
            return new c(1, strGroup3, "", "");
        }
        throw i1.b("Invalid WWW-Authenticate header " + str, null);
    }

    public static Uri h(Uri uri) {
        if (uri.getUserInfo() == null) {
            return uri;
        }
        String authority = uri.getAuthority();
        Objects.requireNonNull(authority);
        m5.a.a(authority.contains("@"));
        int i10 = g0.f10384a;
        return uri.buildUpon().encodedAuthority(authority.split("@", -1)[1]).build();
    }

    public static String i(int i10) {
        switch (i10) {
            case 1:
                return "ANNOUNCE";
            case 2:
                return "DESCRIBE";
            case 3:
                return "GET_PARAMETER";
            case 4:
                return "OPTIONS";
            case 5:
                return "PAUSE";
            case 6:
                return "PLAY";
            case 7:
                return "PLAY_NOTIFY";
            case 8:
                return "RECORD";
            case 9:
                return "REDIRECT";
            case 10:
                return "SETUP";
            case 11:
                return "SET_PARAMETER";
            case 12:
                return "TEARDOWN";
            default:
                throw new IllegalStateException();
        }
    }
}
