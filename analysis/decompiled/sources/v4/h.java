package v4;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.api.v1.Defaults;
import com.newrelic.agent.android.util.Constants;
import g0.n;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l5.f0;
import m5.e0;
import m5.g0;
import m5.p;
import m5.s;
import n3.i1;
import n3.s0;
import okhttp3.internal.http2.Http2;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import u4.o;

/* JADX INFO: compiled from: HlsPlaylistParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements f0.a<g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f16353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f16354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f16329c = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f16330d = Pattern.compile("VIDEO=\"(.+?)\"");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f16331e = Pattern.compile("AUDIO=\"(.+?)\"");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f16332f = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Pattern f16333g = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f16334h = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Pattern f16335i = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f16336j = Pattern.compile("CODECS=\"(.+?)\"");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f16337k = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Pattern f16338l = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Pattern f16339m = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Pattern f16340n = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Pattern f16341o = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Pattern f16342p = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Pattern f16343q = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final Pattern f16344r = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Pattern f16345s = b("CAN-SKIP-DATERANGES");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Pattern f16346t = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Pattern f16347u = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Pattern f16348v = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final Pattern f16349w = b("CAN-BLOCK-RELOAD");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final Pattern f16350x = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final Pattern f16351y = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Pattern f16352z = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    public static final Pattern A = Pattern.compile("LAST-MSN=(\\d+)\\b");
    public static final Pattern B = Pattern.compile("LAST-PART=(\\d+)\\b");
    public static final Pattern C = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern D = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final Pattern E = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern F = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    public static final Pattern G = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    public static final Pattern H = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    public static final Pattern I = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    public static final Pattern J = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    public static final Pattern K = Pattern.compile("URI=\"(.+?)\"");
    public static final Pattern L = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern M = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final Pattern N = Pattern.compile("TYPE=(PART|MAP)");
    public static final Pattern O = Pattern.compile("LANGUAGE=\"(.+?)\"");
    public static final Pattern P = Pattern.compile("NAME=\"(.+?)\"");
    public static final Pattern Q = Pattern.compile("GROUP-ID=\"(.+?)\"");
    public static final Pattern R = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    public static final Pattern S = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final Pattern T = b("AUTOSELECT");
    public static final Pattern U = b("DEFAULT");
    public static final Pattern V = b("FORCED");
    public static final Pattern W = b("INDEPENDENT");
    public static final Pattern X = b("GAP");
    public static final Pattern Y = b("PRECISE");
    public static final Pattern Z = Pattern.compile("VALUE=\"(.+?)\"");

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final Pattern f16327a0 = Pattern.compile("IMPORT=\"(.+?)\"");

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final Pattern f16328b0 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* JADX INFO: compiled from: HlsPlaylistParser.java */
    public static final class a extends IOException {
    }

    /* JADX INFO: compiled from: HlsPlaylistParser.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BufferedReader f16355a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Queue<String> f16356b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f16357c;

        public b(Queue<String> queue, BufferedReader bufferedReader) {
            this.f16356b = queue;
            this.f16355a = bufferedReader;
        }

        @EnsuresNonNullIf(expression = {"next"}, result = Defaults.COLLECT_NETWORK_ERRORS)
        public final boolean a() throws IOException {
            String strTrim;
            if (this.f16357c != null) {
                return true;
            }
            if (!this.f16356b.isEmpty()) {
                String strPoll = this.f16356b.poll();
                Objects.requireNonNull(strPoll);
                this.f16357c = strPoll;
                return true;
            }
            do {
                String line = this.f16355a.readLine();
                this.f16357c = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.f16357c = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public final String b() throws IOException {
            if (!a()) {
                throw new NoSuchElementException();
            }
            String str = this.f16357c;
            this.f16357c = null;
            return str;
        }
    }

    public h() {
        this.f16353a = f.f16304n;
        this.f16354b = null;
    }

    public static Pattern b(String str) {
        StringBuilder sbA = k1.a.a(str, "=(", "NO", "|", "YES");
        sbA.append(")");
        return Pattern.compile(sbA.toString());
    }

    public static r3.d c(String str, r3.d.b[] bVarArr) {
        r3.d.b[] bVarArr2 = new r3.d.b[bVarArr.length];
        for (int i10 = 0; i10 < bVarArr.length; i10++) {
            r3.d.b bVar = bVarArr[i10];
            bVarArr2[i10] = new r3.d.b(bVar.f14484i, bVar.f14485j, bVar.f14486k, null);
        }
        return new r3.d(str, true, bVarArr2);
    }

    public static String d(long j10, String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j10);
    }

    public static double e(String str, Pattern pattern) throws i1 {
        return Double.parseDouble(p(str, pattern, Collections.emptyMap()));
    }

    public static r3.d.b f(String str, String str2, Map<String, String> map) throws i1 {
        String strO = o(str, J, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String strP = p(str, K, map);
            return new r3.d.b(n3.i.f11428d, null, "video/mp4", Base64.decode(strP.substring(strP.indexOf(44)), 0));
        }
        if ("com.widevine".equals(str2)) {
            return new r3.d.b(n3.i.f11428d, null, "hls", g0.F(str));
        }
        if (!"com.microsoft.playready".equals(str2) || !"1".equals(strO)) {
            return null;
        }
        String strP2 = p(str, K, map);
        byte[] bArrDecode = Base64.decode(strP2.substring(strP2.indexOf(44)), 0);
        UUID uuid = n3.i.f11429e;
        return new r3.d.b(uuid, null, "video/mp4", a4.i.a(uuid, null, bArrDecode));
    }

    public static String g(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    public static int h(String str, Pattern pattern) throws i1 {
        return Integer.parseInt(p(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.String, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    public static e i(f fVar, e eVar, b bVar, String str) throws IOException {
        String str2;
        ArrayList arrayList;
        e eVar2;
        int i10;
        TreeMap treeMap;
        ArrayList arrayList2;
        String str3;
        long j10;
        ArrayList arrayList3;
        ArrayList arrayList4;
        int i11;
        String str4;
        String strP;
        long j11;
        r3.d dVar;
        long j12;
        boolean z10 = fVar.f16326c;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        e.C0291e c0291e = new e.C0291e(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap2 = new TreeMap();
        ?? r13 = 0;
        String str5 = "";
        e eVar3 = eVar;
        f fVar2 = fVar;
        boolean z11 = z10;
        e.C0291e c0291e2 = c0291e;
        String strO = "";
        r3.d dVarC = null;
        r3.d dVar2 = null;
        String str6 = null;
        String str7 = null;
        String strG = null;
        e.c cVar = null;
        long jL = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long jLongValue = 0;
        long j18 = 0;
        int i12 = 0;
        long j19 = -9223372036854775807L;
        boolean zK = false;
        boolean z12 = false;
        int i13 = 0;
        int iH = 1;
        long jH = -9223372036854775807L;
        long jE = -9223372036854775807L;
        boolean z13 = false;
        boolean z14 = false;
        long j20 = -1;
        int i14 = 0;
        boolean z15 = false;
        ArrayList arrayList9 = arrayList6;
        e.a aVar = null;
        while (bVar.a()) {
            String strB = bVar.b();
            if (strB.startsWith("#EXT")) {
                arrayList8.add(strB);
            }
            if (strB.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String strP2 = p(strB, f16343q, map);
                if ("VOD".equals(strP2)) {
                    i12 = 1;
                } else if ("EVENT".equals(strP2)) {
                    i12 = 2;
                }
            } else if (strB.equals("#EXT-X-I-FRAMES-ONLY")) {
                z15 = true;
            } else if (strB.startsWith("#EXT-X-START")) {
                long jE2 = (long) (e(strB, C) * 1000000.0d);
                zK = k(strB, Y);
                j19 = jE2;
                arrayList5 = arrayList5;
            } else {
                ArrayList arrayList10 = arrayList5;
                if (strB.startsWith("#EXT-X-SERVER-CONTROL")) {
                    double dL = l(strB, f16344r);
                    long j21 = dL == -9.223372036854776E18d ? -9223372036854775807L : (long) (dL * 1000000.0d);
                    boolean zK2 = k(strB, f16345s);
                    double dL2 = l(strB, f16347u);
                    long j22 = dL2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dL2 * 1000000.0d);
                    double dL3 = l(strB, f16348v);
                    c0291e2 = new e.C0291e(j21, zK2, j22, dL3 == -9.223372036854776E18d ? -9223372036854775807L : (long) (dL3 * 1000000.0d), k(strB, f16349w));
                } else if (strB.startsWith("#EXT-X-PART-INF")) {
                    jE = (long) (e(strB, f16341o) * 1000000.0d);
                } else if (strB.startsWith("#EXT-X-MAP")) {
                    String strP3 = p(strB, K, map);
                    String strO2 = o(strB, E, r13, map);
                    if (strO2 != null) {
                        int i15 = g0.f10384a;
                        String[] strArrSplit = strO2.split("@", -1);
                        j20 = Long.parseLong(strArrSplit[0]);
                        if (strArrSplit.length > 1) {
                            j14 = Long.parseLong(strArrSplit[1]);
                        }
                    }
                    if (j20 == -1) {
                        j14 = 0;
                    }
                    String str8 = str6;
                    String str9 = str7;
                    if (str8 != null && str9 == null) {
                        throw i1.b("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", r13);
                    }
                    cVar = new e.c(strP3, j14, j20, str8, str9);
                    if (j20 != -1) {
                        j14 += j20;
                    }
                    str6 = str8;
                    str7 = str9;
                    arrayList5 = arrayList10;
                    j20 = -1;
                } else {
                    str2 = str7;
                    str6 = str6;
                    if (strB.startsWith("#EXT-X-TARGETDURATION")) {
                        jH = ((long) h(strB, f16339m)) * 1000000;
                    } else if (strB.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                        j13 = Long.parseLong(p(strB, f16350x, Collections.emptyMap()));
                        j17 = j13;
                        e eVar4 = eVar3;
                        arrayList = arrayList8;
                        eVar2 = eVar4;
                        arrayList5 = arrayList10;
                        str6 = str6;
                        str5 = str5;
                        r13 = 0;
                        fVar2 = fVar2;
                        str7 = str2;
                        arrayList9 = arrayList9;
                        ArrayList arrayList11 = arrayList;
                        eVar3 = eVar2;
                        arrayList8 = arrayList11;
                    } else if (strB.startsWith("#EXT-X-VERSION")) {
                        iH = h(strB, f16342p);
                    } else {
                        if (strB.startsWith("#EXT-X-DEFINE")) {
                            String strO3 = o(strB, f16327a0, null, map);
                            if (strO3 != null) {
                                String str10 = fVar2.f16313l.get(strO3);
                                if (str10 != null) {
                                    map.put(strO3, str10);
                                }
                            } else {
                                map.put(p(strB, P, map), p(strB, Z, map));
                            }
                            arrayList9 = arrayList9;
                            arrayList8 = arrayList8;
                            str5 = str5;
                            strG = strG;
                            arrayList5 = arrayList10;
                        } else if (strB.startsWith("#EXTINF")) {
                            jLongValue = new BigDecimal(p(strB, f16351y, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
                            strO = o(strB, f16352z, str5, map);
                        } else if (strB.startsWith("#EXT-X-SKIP")) {
                            int iH2 = h(strB, f16346t);
                            e eVar5 = eVar3;
                            m5.a.e(eVar5 != null && arrayList10.isEmpty());
                            int i16 = g0.f10384a;
                            int i17 = (int) (j13 - eVar5.f16269k);
                            int i18 = iH2 + i17;
                            if (i17 < 0 || i18 > eVar5.f16276r.size()) {
                                throw new a();
                            }
                            while (i17 < i18) {
                                e.c cVar2 = eVar5.f16276r.get(i17);
                                String str11 = str2;
                                String str12 = str5;
                                if (j13 != eVar5.f16269k) {
                                    int i19 = (eVar5.f16268j - i13) + cVar2.f16291k;
                                    ArrayList arrayList12 = new ArrayList();
                                    long j23 = j16;
                                    int i20 = 0;
                                    while (i20 < cVar2.f16287t.size()) {
                                        e.a aVar2 = cVar2.f16287t.get(i20);
                                        arrayList12.add(new e.a(aVar2.f16288h, aVar2.f16289i, aVar2.f16290j, i19, j23, aVar2.f16293m, aVar2.f16294n, aVar2.f16295o, aVar2.f16296p, aVar2.f16297q, aVar2.f16298r, aVar2.f16281s, aVar2.f16282t));
                                        j23 += aVar2.f16290j;
                                        i20++;
                                        i18 = i18;
                                        str11 = str11;
                                        arrayList9 = arrayList9;
                                        arrayList8 = arrayList8;
                                    }
                                    arrayList3 = arrayList9;
                                    arrayList4 = arrayList8;
                                    i11 = i18;
                                    str4 = str11;
                                    cVar2 = new e.c(cVar2.f16288h, cVar2.f16289i, cVar2.f16286s, cVar2.f16290j, i19, j16, cVar2.f16293m, cVar2.f16294n, cVar2.f16295o, cVar2.f16296p, cVar2.f16297q, cVar2.f16298r, arrayList12);
                                } else {
                                    arrayList3 = arrayList9;
                                    arrayList4 = arrayList8;
                                    i11 = i18;
                                    str4 = str11;
                                }
                                ArrayList arrayList13 = arrayList10;
                                arrayList13.add(cVar2);
                                j16 += cVar2.f16290j;
                                long j24 = cVar2.f16297q;
                                if (j24 != -1) {
                                    j14 = cVar2.f16296p + j24;
                                }
                                int i21 = cVar2.f16291k;
                                e.c cVar3 = cVar2.f16289i;
                                r3.d dVar3 = cVar2.f16293m;
                                String str13 = cVar2.f16294n;
                                String str14 = cVar2.f16295o;
                                if (str14 == null || !str14.equals(Long.toHexString(j17))) {
                                    str4 = cVar2.f16295o;
                                }
                                j17++;
                                i17++;
                                eVar5 = eVar;
                                arrayList10 = arrayList13;
                                i14 = i21;
                                cVar = cVar3;
                                dVar2 = dVar3;
                                str6 = str13;
                                i18 = i11;
                                str2 = str4;
                                arrayList9 = arrayList3;
                                str5 = str12;
                                arrayList8 = arrayList4;
                                j15 = j16;
                            }
                            arrayList9 = arrayList9;
                            arrayList = arrayList8;
                            str2 = str2;
                            str5 = str5;
                            arrayList10 = arrayList10;
                            fVar2 = fVar;
                            eVar2 = eVar;
                            arrayList5 = arrayList10;
                            str6 = str6;
                            str5 = str5;
                            r13 = 0;
                            fVar2 = fVar2;
                            str7 = str2;
                            arrayList9 = arrayList9;
                            ArrayList arrayList14 = arrayList;
                            eVar3 = eVar2;
                            arrayList8 = arrayList14;
                        } else {
                            arrayList9 = arrayList9;
                            arrayList8 = arrayList8;
                            str5 = str5;
                            arrayList5 = arrayList10;
                            if (strB.startsWith("#EXT-X-KEY")) {
                                String strP4 = p(strB, H, map);
                                String strO4 = o(strB, I, Constants.Network.ContentType.IDENTITY, map);
                                if ("NONE".equals(strP4)) {
                                    treeMap2.clear();
                                    strP = null;
                                    dVar2 = null;
                                    str7 = null;
                                } else {
                                    String strO5 = o(strB, L, null, map);
                                    if (!Constants.Network.ContentType.IDENTITY.equals(strO4)) {
                                        String str15 = strG;
                                        strG = str15 == null ? g(strP4) : str15;
                                        r3.d.b bVarF = f(strB, strO4, map);
                                        if (bVarF != null) {
                                            treeMap2.put(strO4, bVarF);
                                            dVar2 = null;
                                        }
                                    } else if ("AES-128".equals(strP4)) {
                                        strP = p(strB, K, map);
                                        str7 = strO5;
                                    }
                                    str7 = strO5;
                                    strP = null;
                                }
                            } else {
                                strG = strG;
                                if (strB.startsWith("#EXT-X-BYTERANGE")) {
                                    String strP5 = p(strB, D, map);
                                    int i22 = g0.f10384a;
                                    String[] strArrSplit2 = strP5.split("@", -1);
                                    j20 = Long.parseLong(strArrSplit2[0]);
                                    if (strArrSplit2.length > 1) {
                                        j14 = Long.parseLong(strArrSplit2[1]);
                                    }
                                } else {
                                    if (strB.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                        i13 = Integer.parseInt(strB.substring(strB.indexOf(58) + 1));
                                        r13 = 0;
                                        z12 = true;
                                    } else if (strB.equals("#EXT-X-DISCONTINUITY")) {
                                        i14++;
                                    } else if (strB.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                        if (jL == 0) {
                                            jL = g0.L(g0.O(strB.substring(strB.indexOf(58) + 1))) - j16;
                                        }
                                    } else if (strB.equals("#EXT-X-GAP")) {
                                        r13 = 0;
                                        z14 = true;
                                    } else if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                        r13 = 0;
                                        z11 = true;
                                    } else if (strB.equals("#EXT-X-ENDLIST")) {
                                        r13 = 0;
                                        z13 = true;
                                    } else if (strB.startsWith("#EXT-X-RENDITION-REPORT")) {
                                        arrayList7.add(new e.b(Uri.parse(e0.c(str, p(strB, K, map))), n(strB, A), m(strB, B)));
                                    } else {
                                        if (!strB.startsWith("#EXT-X-PRELOAD-HINT")) {
                                            str3 = str6;
                                            treeMap = treeMap2;
                                            j10 = j17;
                                            if (strB.startsWith("#EXT-X-PART")) {
                                                String strD = d(j10, str3, str2);
                                                String strP6 = p(strB, K, map);
                                                long jE3 = (long) (e(strB, f16340n) * 1000000.0d);
                                                boolean zK3 = k(strB, W) | (z11 && arrayList9.isEmpty());
                                                boolean zK4 = k(strB, X);
                                                i10 = i12;
                                                String strO6 = o(strB, E, null, map);
                                                if (strO6 != null) {
                                                    int i23 = g0.f10384a;
                                                    String[] strArrSplit3 = strO6.split("@", -1);
                                                    j12 = Long.parseLong(strArrSplit3[0]);
                                                    if (strArrSplit3.length > 1) {
                                                        j18 = Long.parseLong(strArrSplit3[1]);
                                                    }
                                                } else {
                                                    j12 = -1;
                                                }
                                                if (j12 == -1) {
                                                    j18 = 0;
                                                }
                                                if (dVar2 == null && !treeMap.isEmpty()) {
                                                    r3.d.b[] bVarArr = (r3.d.b[]) treeMap.values().toArray(new r3.d.b[0]);
                                                    r3.d dVar4 = new r3.d(strG, true, bVarArr);
                                                    if (dVarC == null) {
                                                        dVarC = c(strG, bVarArr);
                                                    }
                                                    dVar2 = dVar4;
                                                }
                                                arrayList2 = arrayList9;
                                                arrayList2.add(new e.a(strP6, cVar, jE3, i14, j15, dVar2, str3, strD, j18, j12, zK4, zK3, false));
                                                j15 += jE3;
                                                if (j12 != -1) {
                                                    j18 += j12;
                                                }
                                            } else {
                                                i10 = i12;
                                                arrayList2 = arrayList9;
                                                if (!strB.startsWith("#")) {
                                                    String strD2 = d(j10, str3, str2);
                                                    j17 = j10 + 1;
                                                    String strQ = q(strB, map);
                                                    e.c cVar4 = (e.c) map2.get(strQ);
                                                    if (j20 == -1) {
                                                        j11 = 0;
                                                    } else {
                                                        if (z15 && cVar == null && cVar4 == null) {
                                                            cVar4 = new e.c(strQ, 0L, j14, null, null);
                                                            map2.put(strQ, cVar4);
                                                        }
                                                        j11 = j14;
                                                    }
                                                    if (dVar2 != null || treeMap.isEmpty()) {
                                                        map = map;
                                                        map2 = map2;
                                                        dVar = dVar2;
                                                    } else {
                                                        map = map;
                                                        map2 = map2;
                                                        r3.d.b[] bVarArr2 = (r3.d.b[]) treeMap.values().toArray(new r3.d.b[0]);
                                                        dVar = new r3.d(strG, true, bVarArr2);
                                                        if (dVarC == null) {
                                                            dVarC = c(strG, bVarArr2);
                                                        }
                                                    }
                                                    arrayList5.add(new e.c(strQ, cVar != null ? cVar : cVar4, strO, jLongValue, i14, j16, dVar, str3, strD2, j11, j20, z14, arrayList2));
                                                    j16 += jLongValue;
                                                    ArrayList arrayList15 = new ArrayList();
                                                    if (j20 != -1) {
                                                        j11 += j20;
                                                    }
                                                    arrayList2 = arrayList15;
                                                    j14 = j11;
                                                    dVar2 = dVar;
                                                    jLongValue = 0;
                                                    strO = str5;
                                                    j15 = j16;
                                                    z14 = false;
                                                    j20 = -1;
                                                }
                                            }
                                            j17 = j10;
                                        } else if (aVar == null && "PART".equals(p(strB, N, map))) {
                                            String strP7 = p(strB, K, map);
                                            long jN = n(strB, F);
                                            long jN2 = n(strB, G);
                                            str3 = str6;
                                            treeMap = treeMap2;
                                            long j25 = j17;
                                            String strD3 = d(j25, str3, str2);
                                            if (dVar2 == null && !treeMap.isEmpty()) {
                                                r3.d.b[] bVarArr3 = (r3.d.b[]) treeMap.values().toArray(new r3.d.b[0]);
                                                r3.d dVar5 = new r3.d(strG, true, bVarArr3);
                                                if (dVarC == null) {
                                                    dVarC = c(strG, bVarArr3);
                                                }
                                                dVar2 = dVar5;
                                            }
                                            if (jN == -1 || jN2 != -1) {
                                                aVar = new e.a(strP7, cVar, 0L, i14, j15, dVar2, str3, strD3, jN != -1 ? jN : 0L, jN2, false, false, true);
                                            }
                                            i10 = i12;
                                            map = map;
                                            map2 = map2;
                                            j17 = j25;
                                            arrayList2 = arrayList9;
                                        }
                                        arrayList5 = arrayList5;
                                        str6 = str3;
                                        arrayList9 = arrayList2;
                                        map = map;
                                        map2 = map2;
                                        treeMap2 = treeMap;
                                        str5 = str5;
                                        arrayList8 = arrayList8;
                                        i12 = i10;
                                        fVar2 = fVar;
                                        eVar3 = eVar;
                                        str7 = str2;
                                        strG = strG;
                                        r13 = 0;
                                    }
                                    fVar2 = fVar;
                                    eVar3 = eVar;
                                    str7 = str2;
                                }
                                strG = strG;
                                strP = str6;
                                str7 = str2;
                            }
                            arrayList5 = arrayList5;
                            str6 = strP;
                            arrayList9 = arrayList9;
                            str5 = str5;
                            arrayList8 = arrayList8;
                            r13 = 0;
                            fVar2 = fVar;
                            eVar3 = eVar;
                        }
                        i10 = i12;
                        arrayList2 = arrayList9;
                        str3 = str6;
                        treeMap = treeMap2;
                        j10 = j17;
                        j17 = j10;
                        arrayList5 = arrayList5;
                        str6 = str3;
                        arrayList9 = arrayList2;
                        map = map;
                        map2 = map2;
                        treeMap2 = treeMap;
                        str5 = str5;
                        arrayList8 = arrayList8;
                        i12 = i10;
                        fVar2 = fVar;
                        eVar3 = eVar;
                        str7 = str2;
                        strG = strG;
                        r13 = 0;
                    }
                    e eVar6 = eVar3;
                    arrayList = arrayList8;
                    eVar2 = eVar6;
                    arrayList5 = arrayList10;
                    str6 = str6;
                    str5 = str5;
                    r13 = 0;
                    fVar2 = fVar2;
                    str7 = str2;
                    arrayList9 = arrayList9;
                    ArrayList arrayList16 = arrayList;
                    eVar3 = eVar2;
                    arrayList8 = arrayList16;
                }
                str2 = str7;
                str6 = str6;
                e eVar7 = eVar3;
                arrayList = arrayList8;
                eVar2 = eVar7;
                arrayList5 = arrayList10;
                str6 = str6;
                str5 = str5;
                r13 = 0;
                fVar2 = fVar2;
                str7 = str2;
                arrayList9 = arrayList9;
                ArrayList arrayList17 = arrayList;
                eVar3 = eVar2;
                arrayList8 = arrayList17;
            }
        }
        int i24 = i12;
        ArrayList arrayList18 = arrayList9;
        ArrayList arrayList19 = arrayList8;
        ArrayList arrayList20 = arrayList5;
        HashMap map3 = new HashMap();
        for (int i25 = 0; i25 < arrayList7.size(); i25++) {
            e.b bVar2 = (e.b) arrayList7.get(i25);
            long size = bVar2.f16284b;
            if (size == -1) {
                size = (j13 + ((long) arrayList20.size())) - (arrayList18.isEmpty() ? 1L : 0L);
            }
            int size2 = bVar2.f16285c;
            if (size2 == -1 && jE != -9223372036854775807L) {
                size2 = (arrayList18.isEmpty() ? ((e.c) n.b(arrayList20)).f16287t : arrayList18).size() - 1;
            }
            Uri uri = bVar2.f16283a;
            map3.put(uri, new e.b(uri, size, size2));
        }
        if (aVar != null) {
            arrayList18.add(aVar);
        }
        return new e(i24, str, arrayList19, j19, zK, jL, z12, i13, j13, iH, jH, jE, z11, z13, jL != 0, dVarC, arrayList20, arrayList18, c0291e2, map3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:116:0x0381  */
    /* JADX WARN: Code duplicated, block: B:135:0x03c7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v35 */
    /* JADX WARN: Type inference failed for: r13v6 */
    public static f j(b bVar, String str) throws IOException {
        ?? r13;
        int i10;
        byte b10;
        s0 s0Var;
        ArrayList arrayList;
        ArrayList arrayList2;
        f.b bVar2;
        String strE;
        ArrayList arrayList3;
        s0 s0Var2;
        int i11;
        String str2;
        f.b bVar3;
        String strE2;
        f.b bVar4;
        ArrayList arrayList4;
        ArrayList arrayList5;
        int i12;
        int i13;
        Uri uriD;
        HashMap map;
        String str3 = str;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            String str4 = "application/x-mpegURL";
            if (!bVar.a()) {
                ArrayList arrayList14 = arrayList11;
                ArrayList arrayList15 = arrayList7;
                ArrayList arrayList16 = arrayList8;
                ArrayList arrayList17 = arrayList9;
                ArrayList arrayList18 = arrayList10;
                ArrayList arrayList19 = arrayList13;
                boolean z12 = z10;
                ArrayList arrayList20 = arrayList12;
                HashMap map4 = map2;
                ArrayList arrayList21 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i14 = 0; i14 < arrayList6.size(); i14++) {
                    f.b bVar5 = (f.b) arrayList6.get(i14);
                    if (hashSet.add(bVar5.f16318a)) {
                        m5.a.e(bVar5.f16319b.f11685q == null);
                        ArrayList arrayList22 = (ArrayList) map4.get(bVar5.f16318a);
                        Objects.requireNonNull(arrayList22);
                        f4.a aVar = new f4.a(new o(null, null, arrayList22));
                        s0.a aVar2 = new s0.a(bVar5.f16319b);
                        aVar2.f11703i = aVar;
                        arrayList21.add(new f.b(bVar5.f16318a, new s0(aVar2), bVar5.f16320c, bVar5.f16321d, bVar5.f16322e, bVar5.f16323f));
                    }
                }
                List listEmptyList = null;
                int i15 = 0;
                s0 s0Var3 = null;
                while (i15 < arrayList14.size()) {
                    ArrayList arrayList23 = arrayList14;
                    String str5 = (String) arrayList23.get(i15);
                    String strP = p(str5, Q, map3);
                    String strP2 = p(str5, P, map3);
                    s0.a aVar3 = new s0.a();
                    aVar3.f11695a = a0.d.c(strP, ":", strP2);
                    aVar3.f11696b = strP2;
                    aVar3.f11704j = str4;
                    boolean zK = k(str5, U);
                    if (k(str5, V)) {
                        r13 = zK;
                        r13 = (zK ? 1 : 0) | 2;
                    }
                    r13 = zK;
                    int i16 = r13;
                    if (k(str5, T)) {
                        i16 = (r13 == true ? 1 : 0) | 4;
                    }
                    aVar3.f11698d = i16;
                    String strO = o(str5, R, null, map3);
                    if (TextUtils.isEmpty(strO)) {
                        i10 = 0;
                        arrayList14 = arrayList23;
                    } else {
                        int i17 = g0.f10384a;
                        arrayList14 = arrayList23;
                        String[] strArrSplit = strO.split(",", -1);
                        i10 = g0.k(strArrSplit, "public.accessibility.describes-video") ? 512 : 0;
                        if (g0.k(strArrSplit, "public.accessibility.transcribes-spoken-dialog")) {
                            i10 |= AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                        }
                        if (g0.k(strArrSplit, "public.accessibility.describes-music-and-sound")) {
                            i10 |= 1024;
                        }
                        if (g0.k(strArrSplit, "public.easy-to-read")) {
                            i10 |= 8192;
                        }
                    }
                    aVar3.f11699e = i10;
                    aVar3.f11697c = o(str5, O, null, map3);
                    String strO2 = o(str5, K, null, map3);
                    Uri uriD2 = strO2 == null ? null : e0.d(str3, strO2);
                    String str6 = str4;
                    f4.a aVar4 = new f4.a(new o(strP, strP2, Collections.emptyList()));
                    switch (p(str5, M, map3)) {
                        case "SUBTITLES":
                            b10 = 0;
                            break;
                        case "CLOSED-CAPTIONS":
                            b10 = 1;
                            break;
                        case "AUDIO":
                            b10 = 2;
                            break;
                        case "VIDEO":
                            b10 = 3;
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 != 0) {
                        if (b10 == 1) {
                            s0 s0Var4 = s0Var3;
                            arrayList = arrayList16;
                            arrayList2 = arrayList15;
                            String strP3 = p(str5, S, map3);
                            if (strP3.startsWith("CC")) {
                                i11 = Integer.parseInt(strP3.substring(2));
                                str2 = "application/cea-608";
                            } else {
                                i11 = Integer.parseInt(strP3.substring(7));
                                str2 = "application/cea-708";
                            }
                            if (listEmptyList == null) {
                                listEmptyList = new ArrayList();
                            }
                            aVar3.f11705k = str2;
                            aVar3.C = i11;
                            listEmptyList.add(new s0(aVar3));
                            s0Var2 = s0Var4;
                        } else if (b10 != 2) {
                            if (b10 != 3) {
                                arrayList2 = arrayList15;
                            } else {
                                int i18 = 0;
                                while (true) {
                                    if (i18 < arrayList6.size()) {
                                        bVar4 = (f.b) arrayList6.get(i18);
                                        if (!strP.equals(bVar4.f16320c)) {
                                            i18++;
                                        }
                                    } else {
                                        bVar4 = null;
                                    }
                                }
                                if (bVar4 != null) {
                                    s0 s0Var5 = bVar4.f16319b;
                                    String strS = g0.s(s0Var5.f11684p, 2);
                                    aVar3.f11702h = strS;
                                    aVar3.f11705k = s.e(strS);
                                    aVar3.f11710p = s0Var5.f11692x;
                                    aVar3.f11711q = s0Var5.f11693y;
                                    aVar3.f11712r = s0Var5.f11694z;
                                }
                                if (uriD2 == null) {
                                    arrayList2 = arrayList15;
                                } else {
                                    aVar3.f11703i = aVar4;
                                    arrayList2 = arrayList15;
                                    arrayList2.add(new f.a(uriD2, new s0(aVar3), strP2));
                                }
                            }
                            s0Var = s0Var3;
                            arrayList3 = arrayList17;
                            arrayList = arrayList16;
                        } else {
                            arrayList2 = arrayList15;
                            int i19 = 0;
                            while (true) {
                                if (i19 < arrayList6.size()) {
                                    bVar3 = (f.b) arrayList6.get(i19);
                                    s0Var = s0Var3;
                                    if (!strP.equals(bVar3.f16321d)) {
                                        i19++;
                                        s0Var3 = s0Var;
                                    }
                                } else {
                                    s0Var = s0Var3;
                                    bVar3 = null;
                                }
                            }
                            if (bVar3 != null) {
                                String strS2 = g0.s(bVar3.f16319b.f11684p, 1);
                                aVar3.f11702h = strS2;
                                strE2 = s.e(strS2);
                            } else {
                                strE2 = null;
                            }
                            String strO3 = o(str5, f16335i, null, map3);
                            if (strO3 != null) {
                                int i20 = g0.f10384a;
                                aVar3.f11718x = Integer.parseInt(strO3.split("/", 2)[0]);
                                if ("audio/eac3".equals(strE2) && strO3.endsWith("/JOC")) {
                                    aVar3.f11702h = "ec+3";
                                    strE2 = "audio/eac3-joc";
                                }
                            }
                            aVar3.f11705k = strE2;
                            if (uriD2 != null) {
                                aVar3.f11703i = aVar4;
                                arrayList = arrayList16;
                                arrayList.add(new f.a(uriD2, new s0(aVar3), strP2));
                            } else {
                                arrayList = arrayList16;
                                if (bVar3 != null) {
                                    s0Var2 = new s0(aVar3);
                                }
                            }
                            arrayList3 = arrayList17;
                        }
                        arrayList3 = arrayList17;
                        i15++;
                        arrayList17 = arrayList3;
                        arrayList16 = arrayList;
                        arrayList15 = arrayList2;
                        str4 = str6;
                        s0Var3 = s0Var2;
                        str3 = str;
                    } else {
                        s0Var = s0Var3;
                        arrayList = arrayList16;
                        arrayList2 = arrayList15;
                        int i21 = 0;
                        while (true) {
                            if (i21 < arrayList6.size()) {
                                bVar2 = (f.b) arrayList6.get(i21);
                                if (!strP.equals(bVar2.f16322e)) {
                                    i21++;
                                }
                            } else {
                                bVar2 = null;
                            }
                        }
                        if (bVar2 != null) {
                            String strS3 = g0.s(bVar2.f16319b.f11684p, 3);
                            aVar3.f11702h = strS3;
                            strE = s.e(strS3);
                        } else {
                            strE = null;
                        }
                        if (strE == null) {
                            strE = "text/vtt";
                        }
                        aVar3.f11705k = strE;
                        aVar3.f11703i = aVar4;
                        if (uriD2 != null) {
                            arrayList3 = arrayList17;
                            arrayList3.add(new f.a(uriD2, new s0(aVar3), strP2));
                        } else {
                            arrayList3 = arrayList17;
                            p.g("HlsPlaylistParser", "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                        }
                    }
                    s0Var2 = s0Var;
                    i15++;
                    arrayList17 = arrayList3;
                    arrayList16 = arrayList;
                    arrayList15 = arrayList2;
                    str4 = str6;
                    s0Var3 = s0Var2;
                    str3 = str;
                }
                s0 s0Var6 = s0Var3;
                ArrayList arrayList24 = arrayList17;
                ArrayList arrayList25 = arrayList16;
                ArrayList arrayList26 = arrayList15;
                if (z11) {
                    listEmptyList = Collections.emptyList();
                }
                return new f(str, arrayList19, arrayList21, arrayList26, arrayList25, arrayList24, arrayList18, s0Var6, listEmptyList, z12, map3, arrayList20);
            }
            String strB = bVar.b();
            if (strB.startsWith("#EXT")) {
                arrayList13.add(strB);
            }
            boolean zStartsWith = strB.startsWith("#EXT-X-I-FRAME-STREAM-INF");
            boolean z13 = z10;
            if (strB.startsWith("#EXT-X-DEFINE")) {
                map3.put(p(strB, P, map3), p(strB, Z, map3));
            } else {
                if (strB.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                    z10 = true;
                    arrayList4 = arrayList10;
                    arrayList5 = arrayList8;
                    map = map2;
                } else if (strB.startsWith("#EXT-X-MEDIA")) {
                    arrayList11.add(strB);
                } else {
                    if (strB.startsWith("#EXT-X-SESSION-KEY")) {
                        r3.d.b bVarF = f(strB, o(strB, I, Constants.Network.ContentType.IDENTITY, map3), map3);
                        if (bVarF != null) {
                            arrayList4 = arrayList10;
                            arrayList12.add(new r3.d(g(p(strB, H, map3)), true, bVarF));
                        }
                    } else {
                        arrayList4 = arrayList10;
                        if (strB.startsWith("#EXT-X-STREAM-INF") || zStartsWith) {
                            boolean zContains = strB.contains("CLOSED-CAPTIONS=NONE") | z11;
                            int i22 = zStartsWith ? Http2.INITIAL_MAX_FRAME_SIZE : 0;
                            int iH = h(strB, f16334h);
                            int iM = m(strB, f16329c);
                            String strO4 = o(strB, f16336j, null, map3);
                            String strO5 = o(strB, f16337k, null, map3);
                            if (strO5 != null) {
                                int i23 = g0.f10384a;
                                arrayList5 = arrayList8;
                                String[] strArrSplit2 = strO5.split("x", -1);
                                i12 = Integer.parseInt(strArrSplit2[0]);
                                i13 = Integer.parseInt(strArrSplit2[1]);
                                if (i12 <= 0 || i13 <= 0) {
                                    i13 = -1;
                                    i12 = -1;
                                }
                            } else {
                                arrayList5 = arrayList8;
                                i12 = -1;
                                i13 = -1;
                            }
                            String strO6 = o(strB, f16338l, null, map3);
                            float f10 = strO6 != null ? Float.parseFloat(strO6) : -1.0f;
                            String strO7 = o(strB, f16330d, null, map3);
                            HashMap map5 = map2;
                            String strO8 = o(strB, f16331e, null, map3);
                            String strO9 = o(strB, f16332f, null, map3);
                            String strO10 = o(strB, f16333g, null, map3);
                            if (zStartsWith) {
                                uriD = e0.d(str3, p(strB, K, map3));
                            } else {
                                if (!bVar.a()) {
                                    throw i1.b("#EXT-X-STREAM-INF must be followed by another line", null);
                                }
                                uriD = e0.d(str3, q(bVar.b(), map3));
                            }
                            s0.a aVar5 = new s0.a();
                            aVar5.b(arrayList6.size());
                            aVar5.f11704j = "application/x-mpegURL";
                            aVar5.f11702h = strO4;
                            aVar5.f11700f = iM;
                            aVar5.f11701g = iH;
                            aVar5.f11710p = i12;
                            aVar5.f11711q = i13;
                            aVar5.f11712r = f10;
                            aVar5.f11699e = i22;
                            arrayList6.add(new f.b(uriD, new s0(aVar5), strO7, strO8, strO9, strO10));
                            map = map5;
                            ArrayList arrayList27 = (ArrayList) map.get(uriD);
                            if (arrayList27 == null) {
                                arrayList27 = new ArrayList();
                                map.put(uriD, arrayList27);
                            }
                            arrayList27.add(new o.b(iM, iH, strO7, strO8, strO9, strO10));
                            z10 = z13;
                            z11 = zContains;
                        }
                    }
                    z10 = z13;
                    arrayList5 = arrayList8;
                    map = map2;
                }
                map2 = map;
                arrayList10 = arrayList4;
                arrayList12 = arrayList12;
                arrayList13 = arrayList13;
                arrayList9 = arrayList9;
                arrayList8 = arrayList5;
                arrayList7 = arrayList7;
                arrayList11 = arrayList11;
            }
            arrayList4 = arrayList10;
            z10 = z13;
            arrayList5 = arrayList8;
            map = map2;
            map2 = map;
            arrayList10 = arrayList4;
            arrayList12 = arrayList12;
            arrayList13 = arrayList13;
            arrayList9 = arrayList9;
            arrayList8 = arrayList5;
            arrayList7 = arrayList7;
            arrayList11 = arrayList11;
        }
    }

    public static boolean k(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return "YES".equals(matcher.group(1));
        }
        return false;
    }

    public static double l(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return -9.223372036854776E18d;
        }
        String strGroup = matcher.group(1);
        Objects.requireNonNull(strGroup);
        return Double.parseDouble(strGroup);
    }

    public static int m(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return -1;
        }
        String strGroup = matcher.group(1);
        Objects.requireNonNull(strGroup);
        return Integer.parseInt(strGroup);
    }

    public static long n(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return -1L;
        }
        String strGroup = matcher.group(1);
        Objects.requireNonNull(strGroup);
        return Long.parseLong(strGroup);
    }

    public static String o(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
            Objects.requireNonNull(str2);
        }
        return (map.isEmpty() || str2 == null) ? str2 : q(str2, map);
    }

    public static String p(String str, Pattern pattern, Map<String, String> map) throws i1 {
        String strO = o(str, pattern, null, map);
        if (strO != null) {
            return strO;
        }
        StringBuilder sbC = a0.b.c("Couldn't match ");
        sbC.append(pattern.pattern());
        sbC.append(" in ");
        sbC.append(str);
        throw i1.b(sbC.toString(), null);
    }

    public static String q(String str, Map<String, String> map) {
        Matcher matcher = f16328b0.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static int r(BufferedReader bufferedReader, boolean z10, int i10) throws IOException {
        while (i10 != -1 && Character.isWhitespace(i10) && (z10 || !g0.J(i10))) {
            i10 = bufferedReader.read();
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0036 A[Catch: all -> 0x00e9, TryCatch #0 {all -> 0x00e9, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:10:0x0029, B:20:0x0051, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:28:0x007b, B:30:0x0083, B:32:0x008b, B:34:0x0093, B:36:0x009b, B:38:0x00a3, B:40:0x00ab, B:42:0x00b3, B:45:0x00bc, B:46:0x00c0, B:51:0x00e2, B:52:0x00e8, B:11:0x002d, B:13:0x0036, B:16:0x003f, B:17:0x0046), top: B:56:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:16:0x003f A[Catch: all -> 0x00e9, LOOP:1: B:12:0x0034->B:16:0x003f, LOOP_END, TryCatch #0 {all -> 0x00e9, blocks: (B:3:0x000f, B:5:0x0018, B:7:0x0020, B:10:0x0029, B:20:0x0051, B:22:0x0057, B:25:0x0062, B:27:0x006a, B:28:0x007b, B:30:0x0083, B:32:0x008b, B:34:0x0093, B:36:0x009b, B:38:0x00a3, B:40:0x00ab, B:42:0x00b3, B:45:0x00bc, B:46:0x00c0, B:51:0x00e2, B:52:0x00e8, B:11:0x002d, B:13:0x0036, B:16:0x003f, B:17:0x0046), top: B:56:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x003e A[SYNTHETIC] */
    @Override // l5.f0.a
    public final g a(Uri uri, InputStream inputStream) throws IOException {
        int iR;
        int i10;
        g gVarJ;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            int i11 = bufferedReader.read();
            boolean zJ = false;
            if (i11 == 239) {
                if (bufferedReader.read() == 187 && bufferedReader.read() == 191) {
                    i11 = bufferedReader.read();
                    iR = r(bufferedReader, true, i11);
                    i10 = 0;
                    while (true) {
                        if (i10 < 7) {
                            zJ = g0.J(r(bufferedReader, false, iR));
                            break;
                        }
                        if (iR != "#EXTM3U".charAt(i10)) {
                            break;
                            break;
                        }
                        iR = bufferedReader.read();
                        i10++;
                    }
                }
            } else {
                iR = r(bufferedReader, true, i11);
                i10 = 0;
                while (true) {
                    if (i10 < 7) {
                        zJ = g0.J(r(bufferedReader, false, iR));
                        break;
                    }
                    if (iR != "#EXTM3U".charAt(i10)) {
                        break;
                    }
                    iR = bufferedReader.read();
                    i10++;
                }
            }
            if (!zJ) {
                throw i1.b("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    g0.g(bufferedReader);
                    throw i1.b("Failed to parse the playlist, could not identify any tags.", null);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith("#EXT-X-STREAM-INF")) {
                        arrayDeque.add(strTrim);
                        gVarJ = j(new b(arrayDeque, bufferedReader), uri.toString());
                    } else {
                        if (!strTrim.startsWith("#EXT-X-TARGETDURATION") && !strTrim.startsWith("#EXT-X-MEDIA-SEQUENCE") && !strTrim.startsWith("#EXTINF") && !strTrim.startsWith("#EXT-X-KEY") && !strTrim.startsWith("#EXT-X-BYTERANGE") && !strTrim.equals("#EXT-X-DISCONTINUITY") && !strTrim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") && !strTrim.equals("#EXT-X-ENDLIST")) {
                            arrayDeque.add(strTrim);
                        }
                        arrayDeque.add(strTrim);
                        gVarJ = i(this.f16353a, this.f16354b, new b(arrayDeque, bufferedReader), uri.toString());
                    }
                    g0.g(bufferedReader);
                    return gVarJ;
                }
            }
        } catch (Throwable th) {
            g0.g(bufferedReader);
            throw th;
        }
    }

    public h(f fVar, e eVar) {
        this.f16353a = fVar;
        this.f16354b = eVar;
    }
}
