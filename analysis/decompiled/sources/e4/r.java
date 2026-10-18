package e4;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import n3.r0;
import n3.s0;
import n3.x;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import u6.v;

/* JADX INFO: compiled from: MediaCodecUtil.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"InlinedApi"})
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f6460a = Pattern.compile("^\\D?(\\d+)$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap<a, List<n>> f6461b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f6462c = -1;

    /* JADX INFO: compiled from: MediaCodecUtil.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f6463a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f6464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f6465c;

        public a(String str, boolean z10, boolean z11) {
            this.f6463a = str;
            this.f6464b = z10;
            this.f6465c = z11;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            a aVar = (a) obj;
            return TextUtils.equals(this.f6463a, aVar.f6463a) && this.f6464b == aVar.f6464b && this.f6465c == aVar.f6465c;
        }

        public final int hashCode() {
            return ((a1.f.c(this.f6463a, 31, 31) + (this.f6464b ? 1231 : 1237)) * 31) + (this.f6465c ? 1231 : 1237);
        }
    }

    /* JADX INFO: compiled from: MediaCodecUtil.java */
    public static class b extends Exception {
        public b(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* JADX INFO: compiled from: MediaCodecUtil.java */
    public interface c {
        MediaCodecInfo a(int i10);

        boolean b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int c();

        boolean d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean e();
    }

    /* JADX INFO: compiled from: MediaCodecUtil.java */
    public static final class d implements c {
        @Override // e4.r.c
        public final MediaCodecInfo a(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }

        @Override // e4.r.c
        public final boolean b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // e4.r.c
        public final int c() {
            return MediaCodecList.getCodecCount();
        }

        @Override // e4.r.c
        public final boolean d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // e4.r.c
        public final boolean e() {
            return false;
        }
    }

    /* JADX INFO: compiled from: MediaCodecUtil.java */
    public static final class e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6466a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MediaCodecInfo[] f6467b;

        public e(boolean z10, boolean z11) {
            this.f6466a = (z10 || z11) ? 1 : 0;
        }

        @Override // e4.r.c
        public final MediaCodecInfo a(int i10) {
            if (this.f6467b == null) {
                this.f6467b = new MediaCodecList(this.f6466a).getCodecInfos();
            }
            return this.f6467b[i10];
        }

        @Override // e4.r.c
        public final boolean b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // e4.r.c
        public final int c() {
            if (this.f6467b == null) {
                this.f6467b = new MediaCodecList(this.f6466a).getCodecInfos();
            }
            return this.f6467b.length;
        }

        @Override // e4.r.c
        public final boolean d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // e4.r.c
        public final boolean e() {
            return true;
        }
    }

    /* JADX INFO: compiled from: MediaCodecUtil.java */
    public interface f<T> {
        int a(T t10);
    }

    public static void a(String str, List<n> list) {
        if ("audio/raw".equals(str)) {
            if (g0.f10384a < 26 && g0.f10385b.equals("R9") && list.size() == 1 && list.get(0).f6415a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(n.i("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
            }
            l(list, y0.m.f18251f);
        }
        int i10 = g0.f10384a;
        if (i10 < 21 && list.size() > 1) {
            String str2 = list.get(0).f6415a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                l(list, r0.f11669g);
            }
        }
        if (i10 >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).f6415a)) {
            return;
        }
        list.add(list.remove(0));
    }

    public static String b(s0 s0Var) {
        Pair<Integer, Integer> pairD;
        if ("audio/eac3-joc".equals(s0Var.f11687s)) {
            return "audio/eac3";
        }
        if (!"video/dolby-vision".equals(s0Var.f11687s) || (pairD = d(s0Var)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairD.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    public static String c(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:133:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:149:0x0206  */
    /* JADX WARN: Code duplicated, block: B:186:0x0271  */
    /* JADX WARN: Code duplicated, block: B:243:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:244:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:272:0x0361 A[PHI: r1
      0x0361: PHI (r1v181 int) = (r1v180 int), (r1v185 int), (r1v186 int), (r1v187 int), (r1v188 int), (r1v189 int) binds: [B:254:0x0338, B:256:0x033c, B:258:0x0340, B:260:0x0344, B:262:0x0348, B:264:0x034c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:402:0x0512  */
    /* JADX WARN: Code duplicated, block: B:431:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:470:0x0648  */
    /* JADX WARN: Code duplicated, block: B:471:0x064f  */
    /* JADX WARN: Code duplicated, block: B:472:0x0652  */
    /* JADX WARN: Code duplicated, block: B:473:0x0655  */
    /* JADX WARN: Code duplicated, block: B:474:0x0658  */
    /* JADX WARN: Code duplicated, block: B:475:0x065b  */
    /* JADX WARN: Code duplicated, block: B:476:0x065e  */
    /* JADX WARN: Code duplicated, block: B:477:0x0660  */
    /* JADX WARN: Code duplicated, block: B:478:0x0662  */
    /* JADX WARN: Code duplicated, block: B:479:0x0664  */
    /* JADX WARN: Code duplicated, block: B:480:0x0666  */
    /* JADX WARN: Code duplicated, block: B:481:0x0668  */
    /* JADX WARN: Code duplicated, block: B:482:0x066a  */
    /* JADX WARN: Code duplicated, block: B:483:0x066c  */
    /* JADX WARN: Code duplicated, block: B:484:0x066e  */
    /* JADX WARN: Code duplicated, block: B:485:0x0671  */
    /* JADX WARN: Code duplicated, block: B:486:0x0673  */
    /* JADX WARN: Code duplicated, block: B:487:0x0676  */
    /* JADX WARN: Code duplicated, block: B:488:0x0679  */
    /* JADX WARN: Code duplicated, block: B:489:0x067c  */
    /* JADX WARN: Code duplicated, block: B:490:0x067f  */
    /* JADX WARN: Code duplicated, block: B:491:0x0683  */
    /* JADX WARN: Code duplicated, block: B:494:0x0688  */
    /* JADX WARN: Code duplicated, block: B:495:0x068e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:72:0x0104  */
    public static Pair<Integer, Integer> d(s0 s0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Integer numValueOf;
        int i19;
        int i20;
        int i21;
        int i22;
        Integer num;
        Integer numValueOf2;
        String str = s0Var.f11684p;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        int i23 = 512;
        int i24 = 4;
        int i25 = 2;
        if ("video/dolby-vision".equals(s0Var.f11687s)) {
            String str2 = s0Var.f11684p;
            if (strArrSplit.length < 3) {
                a4.g.f("Ignoring malformed Dolby Vision codec string: ", str2, "MediaCodecUtil");
            } else {
                Matcher matcher = f6460a.matcher(strArrSplit[1]);
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    if (strGroup != null) {
                        switch (strGroup) {
                            case "00":
                                num = 1;
                                break;
                            case "01":
                                num = 2;
                                break;
                            case "02":
                                num = 4;
                                break;
                            case "03":
                                num = 8;
                                break;
                            case "04":
                                num = 16;
                                break;
                            case "05":
                                num = 32;
                                break;
                            case "06":
                                num = 64;
                                break;
                            case "07":
                                num = 128;
                                break;
                            case "08":
                                num = 256;
                                break;
                            case "09":
                                num = 512;
                                break;
                            default:
                                num = null;
                                break;
                        }
                    } else {
                        num = null;
                    }
                    if (num == null) {
                        a4.g.f("Unknown Dolby Vision profile string: ", strGroup, "MediaCodecUtil");
                    } else {
                        String str3 = strArrSplit[2];
                        if (str3 != null) {
                            switch (str3) {
                                case "01":
                                    numValueOf2 = 1;
                                    break;
                                case "02":
                                    numValueOf2 = 2;
                                    break;
                                case "03":
                                    numValueOf2 = 4;
                                    break;
                                case "04":
                                    numValueOf2 = 8;
                                    break;
                                case "05":
                                    numValueOf2 = 16;
                                    break;
                                case "06":
                                    numValueOf2 = 32;
                                    break;
                                case "07":
                                    numValueOf2 = 64;
                                    break;
                                case "08":
                                    numValueOf2 = 128;
                                    break;
                                case "09":
                                    numValueOf2 = 256;
                                    break;
                                case "10":
                                    numValueOf2 = 512;
                                    break;
                                case "11":
                                    numValueOf2 = 1024;
                                    break;
                                case "12":
                                    numValueOf2 = 2048;
                                    break;
                                case "13":
                                    numValueOf2 = Integer.valueOf(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
                                    break;
                                default:
                                    numValueOf2 = null;
                                    break;
                            }
                        } else {
                            numValueOf2 = null;
                        }
                        if (numValueOf2 != null) {
                            return new Pair<>(num, numValueOf2);
                        }
                        a4.g.f("Unknown Dolby Vision level string: ", str3, "MediaCodecUtil");
                    }
                } else {
                    a4.g.f("Ignoring malformed Dolby Vision codec string: ", str2, "MediaCodecUtil");
                }
            }
            return null;
        }
        String str4 = strArrSplit[0];
        Objects.requireNonNull(str4);
        switch (str4) {
            case "av01":
                String str5 = s0Var.f11684p;
                n5.b bVar = s0Var.E;
                if (strArrSplit.length < 4) {
                    a4.g.f("Ignoring malformed AV1 codec string: ", str5, "MediaCodecUtil");
                } else {
                    try {
                        int i26 = Integer.parseInt(strArrSplit[1]);
                        int i27 = Integer.parseInt(strArrSplit[2].substring(0, 2));
                        int i28 = Integer.parseInt(strArrSplit[3]);
                        if (i26 != 0) {
                            da.c.b("Unknown AV1 profile: ", i26, "MediaCodecUtil");
                        } else if (i28 == 8 || i28 == 10) {
                            if (i28 == 8) {
                                i10 = 1;
                            } else {
                                i10 = (bVar == null || !(bVar.f11867k != null || (i11 = bVar.f11866j) == 7 || i11 == 6)) ? 2 : AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                            }
                            switch (i27) {
                                case 0:
                                    i23 = 1;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 1:
                                    i23 = 2;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 2:
                                    i12 = -1;
                                    i13 = 4;
                                    break;
                                case 3:
                                    i23 = 8;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 4:
                                    i12 = -1;
                                    i13 = 16;
                                    break;
                                case 5:
                                    i23 = 32;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 6:
                                    i23 = 64;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 7:
                                    i23 = 128;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 8:
                                    i23 = 256;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 9:
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 10:
                                    i12 = -1;
                                    i13 = 1024;
                                    break;
                                case 11:
                                    i12 = -1;
                                    i13 = 2048;
                                    break;
                                case 12:
                                    i12 = -1;
                                    i13 = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                                    break;
                                case 13:
                                    i23 = 8192;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 14:
                                    i23 = Http2.INITIAL_MAX_FRAME_SIZE;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 15:
                                    i23 = 32768;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 16:
                                    i23 = 65536;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 17:
                                    i23 = 131072;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 18:
                                    i23 = 262144;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 19:
                                    i23 = 524288;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 20:
                                    i23 = 1048576;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 21:
                                    i23 = 2097152;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 22:
                                    i23 = 4194304;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                case 23:
                                    i23 = 8388608;
                                    i12 = -1;
                                    i13 = i23;
                                    break;
                                default:
                                    i12 = -1;
                                    i13 = -1;
                                    break;
                            }
                            if (i13 != i12) {
                                return new Pair<>(Integer.valueOf(i10), Integer.valueOf(i13));
                            }
                            da.c.b("Unknown AV1 level: ", i27, "MediaCodecUtil");
                        } else {
                            da.c.b("Unknown AV1 bit depth: ", i28, "MediaCodecUtil");
                        }
                    } catch (NumberFormatException unused) {
                        a4.g.f("Ignoring malformed AV1 codec string: ", str5, "MediaCodecUtil");
                    }
                }
                return null;
            case "avc1":
            case "avc2":
                String str6 = s0Var.f11684p;
                if (strArrSplit.length < 2) {
                    a4.g.f("Ignoring malformed AVC codec string: ", str6, "MediaCodecUtil");
                } else {
                    try {
                        if (strArrSplit[1].length() == 6) {
                            i14 = Integer.parseInt(strArrSplit[1].substring(0, 2), 16);
                            i15 = Integer.parseInt(strArrSplit[1].substring(4), 16);
                        } else if (strArrSplit.length >= 3) {
                            i14 = Integer.parseInt(strArrSplit[1]);
                            i15 = Integer.parseInt(strArrSplit[2]);
                        } else {
                            m5.p.g("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str6);
                        }
                        if (i14 != 66) {
                            if (i14 != 77) {
                                if (i14 == 88) {
                                    i25 = 4;
                                } else if (i14 == 100) {
                                    i25 = 8;
                                } else if (i14 == 110) {
                                    i25 = 16;
                                } else if (i14 == 122) {
                                    i25 = 32;
                                } else if (i14 != 244) {
                                    i16 = -1;
                                    i17 = -1;
                                } else {
                                    i25 = 64;
                                }
                            }
                            if (i17 == i16) {
                                da.c.b("Unknown AVC profile: ", i14, "MediaCodecUtil");
                            } else {
                                switch (i15) {
                                    case 10:
                                        i23 = 1;
                                        break;
                                    case 11:
                                        i23 = 4;
                                        break;
                                    case 12:
                                        i23 = 8;
                                        break;
                                    case 13:
                                        i23 = 16;
                                        break;
                                    default:
                                        switch (i15) {
                                            case 20:
                                                i23 = 32;
                                                break;
                                            case 21:
                                                i23 = 64;
                                                break;
                                            case 22:
                                                i23 = 128;
                                                break;
                                            default:
                                                switch (i15) {
                                                    case 30:
                                                        i23 = 256;
                                                        break;
                                                    case 31:
                                                        break;
                                                    case 32:
                                                        i23 = 1024;
                                                        break;
                                                    default:
                                                        switch (i15) {
                                                            case 40:
                                                                i23 = 2048;
                                                                break;
                                                            case 41:
                                                                i23 = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                                                                break;
                                                            case 42:
                                                                i23 = 8192;
                                                                break;
                                                            default:
                                                                switch (i15) {
                                                                    case 50:
                                                                        i23 = Http2.INITIAL_MAX_FRAME_SIZE;
                                                                        break;
                                                                    case 51:
                                                                        i23 = 32768;
                                                                        break;
                                                                    case 52:
                                                                        i23 = 65536;
                                                                        break;
                                                                    default:
                                                                        i23 = -1;
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                if (i23 == -1) {
                                    return new Pair<>(Integer.valueOf(i17), Integer.valueOf(i23));
                                }
                                da.c.b("Unknown AVC level: ", i15, "MediaCodecUtil");
                            }
                        } else {
                            i25 = 1;
                        }
                        i16 = -1;
                        i17 = i25;
                        if (i17 == i16) {
                            da.c.b("Unknown AVC profile: ", i14, "MediaCodecUtil");
                        } else {
                            switch (i15) {
                                case 10:
                                    i23 = 1;
                                    break;
                                case 11:
                                    i23 = 4;
                                    break;
                                case 12:
                                    i23 = 8;
                                    break;
                                case 13:
                                    i23 = 16;
                                    break;
                                default:
                                    switch (i15) {
                                        case 20:
                                            i23 = 32;
                                            break;
                                        case 21:
                                            i23 = 64;
                                            break;
                                        case 22:
                                            i23 = 128;
                                            break;
                                        default:
                                            switch (i15) {
                                                case 30:
                                                    i23 = 256;
                                                    break;
                                                case 31:
                                                    break;
                                                case 32:
                                                    i23 = 1024;
                                                    break;
                                                default:
                                                    switch (i15) {
                                                        case 40:
                                                            i23 = 2048;
                                                            break;
                                                        case 41:
                                                            i23 = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                                                            break;
                                                        case 42:
                                                            i23 = 8192;
                                                            break;
                                                        default:
                                                            switch (i15) {
                                                                case 50:
                                                                    i23 = Http2.INITIAL_MAX_FRAME_SIZE;
                                                                    break;
                                                                case 51:
                                                                    i23 = 32768;
                                                                    break;
                                                                case 52:
                                                                    i23 = 65536;
                                                                    break;
                                                                default:
                                                                    i23 = -1;
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            if (i23 == -1) {
                                return new Pair<>(Integer.valueOf(i17), Integer.valueOf(i23));
                            }
                            da.c.b("Unknown AVC level: ", i15, "MediaCodecUtil");
                        }
                    } catch (NumberFormatException unused2) {
                        a4.g.f("Ignoring malformed AVC codec string: ", str6, "MediaCodecUtil");
                    }
                }
                return null;
            case "hev1":
            case "hvc1":
                String str7 = s0Var.f11684p;
                if (strArrSplit.length < 4) {
                    a4.g.f("Ignoring malformed HEVC codec string: ", str7, "MediaCodecUtil");
                } else {
                    Matcher matcher2 = f6460a.matcher(strArrSplit[1]);
                    if (matcher2.matches()) {
                        String strGroup2 = matcher2.group(1);
                        if ("1".equals(strGroup2)) {
                            i18 = 1;
                        } else if ("2".equals(strGroup2)) {
                            i18 = 2;
                        } else {
                            a4.g.f("Unknown HEVC profile string: ", strGroup2, "MediaCodecUtil");
                        }
                        String str8 = strArrSplit[3];
                        if (str8 != null) {
                            switch (str8) {
                                case "H30":
                                    numValueOf = 2;
                                    break;
                                case "H60":
                                    numValueOf = 8;
                                    break;
                                case "H63":
                                    numValueOf = 32;
                                    break;
                                case "H90":
                                    numValueOf = 128;
                                    break;
                                case "H93":
                                    numValueOf = 512;
                                    break;
                                case "L30":
                                    numValueOf = 1;
                                    break;
                                case "L60":
                                    numValueOf = 4;
                                    break;
                                case "L63":
                                    numValueOf = 16;
                                    break;
                                case "L90":
                                    numValueOf = 64;
                                    break;
                                case "L93":
                                    numValueOf = 256;
                                    break;
                                case "H120":
                                    numValueOf = 2048;
                                    break;
                                case "H123":
                                    numValueOf = 8192;
                                    break;
                                case "H150":
                                    numValueOf = 32768;
                                    break;
                                case "H153":
                                    numValueOf = 131072;
                                    break;
                                case "H156":
                                    numValueOf = 524288;
                                    break;
                                case "H180":
                                    numValueOf = 2097152;
                                    break;
                                case "H183":
                                    numValueOf = 8388608;
                                    break;
                                case "H186":
                                    numValueOf = 33554432;
                                    break;
                                case "L120":
                                    numValueOf = 1024;
                                    break;
                                case "L123":
                                    numValueOf = Integer.valueOf(AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH);
                                    break;
                                case "L150":
                                    numValueOf = Integer.valueOf(Http2.INITIAL_MAX_FRAME_SIZE);
                                    break;
                                case "L153":
                                    numValueOf = 65536;
                                    break;
                                case "L156":
                                    numValueOf = 262144;
                                    break;
                                case "L180":
                                    numValueOf = 1048576;
                                    break;
                                case "L183":
                                    numValueOf = 4194304;
                                    break;
                                case "L186":
                                    numValueOf = Integer.valueOf(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
                                    break;
                                default:
                                    numValueOf = null;
                                    break;
                            }
                        } else {
                            numValueOf = null;
                        }
                        if (numValueOf != null) {
                            return new Pair<>(Integer.valueOf(i18), numValueOf);
                        }
                        a4.g.f("Unknown HEVC level string: ", str8, "MediaCodecUtil");
                    } else {
                        a4.g.f("Ignoring malformed HEVC codec string: ", str7, "MediaCodecUtil");
                    }
                }
                return null;
            case "mp4a":
                String str9 = s0Var.f11684p;
                if (strArrSplit.length != 3) {
                    a4.g.f("Ignoring malformed MP4A codec string: ", str9, "MediaCodecUtil");
                } else {
                    try {
                        if ("audio/mp4a-latm".equals(m5.s.f(Integer.parseInt(strArrSplit[1], 16)))) {
                            int i29 = Integer.parseInt(strArrSplit[2]);
                            int i30 = 17;
                            if (i29 != 17) {
                                i30 = 20;
                                if (i29 != 20) {
                                    i30 = 23;
                                    if (i29 != 23) {
                                        i30 = 29;
                                        if (i29 != 29) {
                                            i30 = 39;
                                            if (i29 != 39) {
                                                i30 = 42;
                                                if (i29 != 42) {
                                                    switch (i29) {
                                                        case 1:
                                                            i24 = 1;
                                                            break;
                                                        case 2:
                                                            i24 = 2;
                                                            break;
                                                        case 3:
                                                            i19 = -1;
                                                            i20 = 3;
                                                            break;
                                                        case 4:
                                                            break;
                                                        case 5:
                                                            i19 = -1;
                                                            i20 = 5;
                                                            break;
                                                        case 6:
                                                            i19 = -1;
                                                            i20 = 6;
                                                            break;
                                                        default:
                                                            i19 = -1;
                                                            i20 = -1;
                                                            break;
                                                    }
                                                } else {
                                                    i24 = i30;
                                                }
                                                i19 = -1;
                                                i20 = i24;
                                            } else {
                                                i24 = i30;
                                                i19 = -1;
                                                i20 = i24;
                                            }
                                        } else {
                                            i24 = i30;
                                            i19 = -1;
                                            i20 = i24;
                                        }
                                    } else {
                                        i24 = i30;
                                        i19 = -1;
                                        i20 = i24;
                                    }
                                } else {
                                    i24 = i30;
                                    i19 = -1;
                                    i20 = i24;
                                }
                            } else {
                                i24 = i30;
                                i19 = -1;
                                i20 = i24;
                            }
                            if (i20 != i19) {
                                return new Pair<>(Integer.valueOf(i20), 0);
                            }
                        }
                    } catch (NumberFormatException unused3) {
                        a4.g.f("Ignoring malformed MP4A codec string: ", str9, "MediaCodecUtil");
                    }
                }
                return null;
            case "vp09":
                String str10 = s0Var.f11684p;
                if (strArrSplit.length < 3) {
                    a4.g.f("Ignoring malformed VP9 codec string: ", str10, "MediaCodecUtil");
                } else {
                    try {
                        int i31 = Integer.parseInt(strArrSplit[1]);
                        int i32 = Integer.parseInt(strArrSplit[2]);
                        if (i31 == 0) {
                            i21 = 1;
                        } else if (i31 == 1) {
                            i21 = 2;
                        } else if (i31 != 2) {
                            i21 = i31 != 3 ? -1 : 8;
                        } else {
                            i21 = 4;
                        }
                        if (i21 == -1) {
                            da.c.b("Unknown VP9 profile: ", i31, "MediaCodecUtil");
                        } else {
                            if (i32 == 10) {
                                i23 = 1;
                            } else if (i32 == 11) {
                                i23 = 2;
                            } else if (i32 == 20) {
                                i23 = 4;
                            } else if (i32 == 21) {
                                i23 = 8;
                            } else if (i32 == 30) {
                                i23 = 16;
                            } else if (i32 == 31) {
                                i23 = 32;
                            } else if (i32 == 40) {
                                i23 = 64;
                            } else if (i32 == 41) {
                                i23 = 128;
                            } else if (i32 != 50) {
                                if (i32 != 51) {
                                    switch (i32) {
                                        case 60:
                                            i22 = -1;
                                            i23 = 2048;
                                            break;
                                        case 61:
                                            i22 = -1;
                                            i23 = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                                            break;
                                        case 62:
                                            i23 = 8192;
                                            break;
                                        default:
                                            i22 = -1;
                                            i23 = -1;
                                            break;
                                    }
                                }
                                if (i23 == i22) {
                                    return new Pair<>(Integer.valueOf(i21), Integer.valueOf(i23));
                                }
                                da.c.b("Unknown VP9 level: ", i32, "MediaCodecUtil");
                            } else {
                                i23 = 256;
                            }
                            i22 = -1;
                            if (i23 == i22) {
                                return new Pair<>(Integer.valueOf(i21), Integer.valueOf(i23));
                            }
                            da.c.b("Unknown VP9 level: ", i32, "MediaCodecUtil");
                        }
                    } catch (NumberFormatException unused4) {
                        a4.g.f("Ignoring malformed VP9 codec string: ", str10, "MediaCodecUtil");
                    }
                }
                return null;
            default:
                return null;
        }
    }

    public static synchronized List<n> e(String str, boolean z10, boolean z11) throws b {
        a aVar = new a(str, z10, z11);
        HashMap<a, List<n>> map = f6461b;
        List<n> list = map.get(aVar);
        if (list != null) {
            return list;
        }
        int i10 = g0.f10384a;
        ArrayList<n> arrayListF = f(aVar, i10 >= 21 ? new e(z10, z11) : new d());
        if (z10 && arrayListF.isEmpty() && 21 <= i10 && i10 <= 23) {
            arrayListF = f(aVar, new d());
            if (!arrayListF.isEmpty()) {
                m5.p.g("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + arrayListF.get(0).f6415a);
            }
        }
        a(str, arrayListF);
        v vVarS = v.s(arrayListF);
        map.put(aVar, vVarS);
        return vVarS;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0165 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:78:0x013e A[Catch: Exception -> 0x018a, TRY_ENTER, TryCatch #2 {Exception -> 0x018a, blocks: (B:3:0x0008, B:5:0x001d, B:7:0x0027, B:81:0x015d, B:13:0x0034, B:16:0x003f, B:75:0x0136, B:78:0x013e, B:80:0x0144, B:82:0x0165, B:83:0x0188), top: B:92:0x0008 }] */
    public static ArrayList<n> f(a aVar, c cVar) throws b {
        String strC;
        String str;
        String str2;
        int i10;
        boolean z10;
        boolean z11;
        boolean zIsHardwareAccelerated;
        boolean zIsVendor;
        String str3;
        a aVar2 = aVar;
        try {
            ArrayList<n> arrayList = new ArrayList<>();
            String str4 = aVar2.f6463a;
            int iC = cVar.c();
            boolean zE = cVar.e();
            int i11 = 0;
            while (i11 < iC) {
                MediaCodecInfo mediaCodecInfoA = cVar.a(i11);
                int i12 = g0.f10384a;
                if (!(i12 >= 29 && mediaCodecInfoA.isAlias())) {
                    String name = mediaCodecInfoA.getName();
                    if (i(mediaCodecInfoA, name, zE, str4) && (strC = c(mediaCodecInfoA, name, str4)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoA.getCapabilitiesForType(strC);
                            boolean zD = cVar.d("tunneled-playback", strC, capabilitiesForType);
                            boolean zB = cVar.b("tunneled-playback", capabilitiesForType);
                            boolean z12 = aVar2.f6465c;
                            if ((z12 || !zB) && (!z12 || zD)) {
                                boolean zD2 = cVar.d("secure-playback", strC, capabilitiesForType);
                                boolean zB2 = cVar.b("secure-playback", capabilitiesForType);
                                boolean z13 = aVar2.f6464b;
                                if ((z13 || !zB2) && (!z13 || zD2)) {
                                    if (i12 >= 29) {
                                        zIsHardwareAccelerated = mediaCodecInfoA.isHardwareAccelerated();
                                        z11 = true;
                                    } else {
                                        z11 = true;
                                        zIsHardwareAccelerated = !j(mediaCodecInfoA, str4);
                                    }
                                    boolean zJ = j(mediaCodecInfoA, str4);
                                    if (i12 >= 29) {
                                        zIsVendor = mediaCodecInfoA.isVendor();
                                    } else {
                                        String strS = androidx.activity.k.s(mediaCodecInfoA.getName());
                                        if (strS.startsWith("omx.google.") || strS.startsWith("c2.android.") || strS.startsWith("c2.google.")) {
                                            z11 = false;
                                        }
                                        zIsVendor = z11;
                                    }
                                    if (zE && aVar2.f6464b == zD2) {
                                        str = strC;
                                        str3 = name;
                                        i10 = i11;
                                        z10 = zE;
                                        arrayList.add(n.i(name, str4, strC, capabilitiesForType, zIsHardwareAccelerated, zJ, zIsVendor, false));
                                    } else {
                                        if (!zE) {
                                            try {
                                                if (!aVar2.f6464b) {
                                                    str = strC;
                                                    str3 = name;
                                                    i10 = i11;
                                                    z10 = zE;
                                                    try {
                                                        arrayList.add(n.i(name, str4, strC, capabilitiesForType, zIsHardwareAccelerated, zJ, zIsVendor, false));
                                                    } catch (Exception e10) {
                                                        e = e10;
                                                        str2 = str3;
                                                        if (g0.f10384a <= 23 || arrayList.isEmpty()) {
                                                            m5.p.c("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                            throw e;
                                                        }
                                                        m5.p.c("MediaCodecUtil", "Skipping codec " + str2 + " (failed to query capabilities)");
                                                    }
                                                }
                                            } catch (Exception e11) {
                                                e = e11;
                                                str = strC;
                                                str3 = name;
                                                i10 = i11;
                                                z10 = zE;
                                                str2 = str3;
                                                if (g0.f10384a <= 23) {
                                                }
                                                m5.p.c("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                throw e;
                                            }
                                        }
                                        str = strC;
                                        str3 = name;
                                        i10 = i11;
                                        z10 = zE;
                                        if (!z10 && zD2) {
                                            StringBuilder sb2 = new StringBuilder();
                                            try {
                                                sb2.append(str3);
                                                sb2.append(".secure");
                                                str2 = str3;
                                                try {
                                                    arrayList.add(n.i(sb2.toString(), str4, str, capabilitiesForType, zIsHardwareAccelerated, zJ, zIsVendor, true));
                                                    return arrayList;
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    if (g0.f10384a <= 23) {
                                                    }
                                                    m5.p.c("MediaCodecUtil", "Failed to query codec " + str2 + " (" + str + ")");
                                                    throw e;
                                                }
                                            } catch (Exception e13) {
                                                e = e13;
                                                str2 = str3;
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e14) {
                            e = e14;
                            str = strC;
                            str2 = name;
                            i10 = i11;
                            z10 = zE;
                        }
                    }
                    i11 = i10 + 1;
                    aVar2 = aVar;
                    zE = z10;
                }
                i10 = i11;
                z10 = zE;
                i11 = i10 + 1;
                aVar2 = aVar;
                zE = z10;
            }
            return arrayList;
        } catch (Exception e15) {
            throw new b(e15);
        }
    }

    public static List<n> g(List<n> list, s0 s0Var) {
        ArrayList arrayList = new ArrayList(list);
        l(arrayList, new x(s0Var, 2));
        return arrayList;
    }

    public static n h() throws b {
        List<n> listE = e("audio/raw", false, false);
        if (listE.isEmpty()) {
            return null;
        }
        return listE.get(0);
    }

    public static boolean i(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = g0.f10384a;
        if (i10 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i10 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = g0.f10385b;
            if ("a70".equals(str3) || ("Xiaomi".equals(g0.f10386c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = g0.f10385b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = g0.f10385b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(g0.f10386c))) {
            String str6 = g0.f10385b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i10 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(g0.f10386c)) {
            String str7 = g0.f10385b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i10 <= 19 && g0.f10385b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (i10 <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static boolean j(MediaCodecInfo mediaCodecInfo, String str) {
        if (g0.f10384a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (m5.s.k(str)) {
            return true;
        }
        String strS = androidx.activity.k.s(mediaCodecInfo.getName());
        if (strS.startsWith("arc.")) {
            return false;
        }
        if (strS.startsWith("omx.google.") || strS.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strS.startsWith("omx.sec.") && strS.contains(".sw.")) || strS.equals("omx.qcom.video.decoder.hevcswvdec") || strS.startsWith("c2.android.") || strS.startsWith("c2.google.")) {
            return true;
        }
        return (strS.startsWith("omx.") || strS.startsWith("c2.")) ? false : true;
    }

    public static int k() throws b {
        int i10;
        if (f6462c == -1) {
            int iMax = 0;
            List<n> listE = e("video/avc", false, false);
            n nVar = listE.isEmpty() ? null : listE.get(0);
            if (nVar != null) {
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrD = nVar.d();
                int length = codecProfileLevelArrD.length;
                int iMax2 = 0;
                while (iMax < length) {
                    int i11 = codecProfileLevelArrD[iMax].level;
                    if (i11 != 1 && i11 != 2) {
                        switch (i11) {
                            case 8:
                            case 16:
                            case 32:
                                i10 = 101376;
                                break;
                            case 64:
                                i10 = 202752;
                                break;
                            case 128:
                            case 256:
                                i10 = 414720;
                                break;
                            case 512:
                                i10 = 921600;
                                break;
                            case 1024:
                                i10 = 1310720;
                                break;
                            case 2048:
                            case AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH /* 4096 */:
                                i10 = 2097152;
                                break;
                            case 8192:
                                i10 = 2228224;
                                break;
                            case Http2.INITIAL_MAX_FRAME_SIZE /* 16384 */:
                                i10 = 5652480;
                                break;
                            case 32768:
                            case 65536:
                                i10 = 9437184;
                                break;
                            case 131072:
                            case 262144:
                            case 524288:
                                i10 = 35651584;
                                break;
                            default:
                                i10 = -1;
                                break;
                        }
                    } else {
                        i10 = 25344;
                    }
                    iMax2 = Math.max(i10, iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, g0.f10384a >= 21 ? 345600 : 172800);
            }
            f6462c = iMax;
        }
        return f6462c;
    }

    public static <T> void l(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: e4.q
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                r.f fVar2 = fVar;
                return fVar2.a(obj2) - fVar2.a(obj);
            }
        });
    }
}
