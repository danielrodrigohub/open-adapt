package e4;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.Objects;
import m5.g0;
import n3.s0;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: MediaCodecInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f6418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f6421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f6422h;

    public n(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12) {
        Objects.requireNonNull(str);
        this.f6415a = str;
        this.f6416b = str2;
        this.f6417c = str3;
        this.f6418d = codecCapabilities;
        this.f6421g = z10;
        this.f6419e = z11;
        this.f6420f = z12;
        this.f6422h = m5.s.n(str2);
    }

    public static Point a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i12 = g0.f10384a;
        return new Point((((i10 + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i11 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public static boolean b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point pointA = a(videoCapabilities, i10, i11);
        int i12 = pointA.x;
        int i13 = pointA.y;
        return (d10 == -1.0d || d10 < 1.0d) ? videoCapabilities.isSizeSupported(i12, i13) : videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d10));
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    /* JADX WARN: Code duplicated, block: B:25:0x0046  */
    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    public static n i(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14;
        boolean z15;
        boolean z16;
        if (codecCapabilities == null) {
            z14 = false;
        } else {
            int i10 = g0.f10384a;
            if (i10 >= 19 && codecCapabilities.isFeatureSupported("adaptive-playback")) {
                if (i10 <= 22) {
                    String str4 = g0.f10387d;
                    if (("ODROID-XU3".equals(str4) || "Nexus 10".equals(str4)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                } else {
                    z16 = false;
                }
                if (z16) {
                    z14 = false;
                } else {
                    z14 = true;
                }
            } else {
                z14 = false;
            }
        }
        if (codecCapabilities != null && (g0.f10384a >= 21 && !codecCapabilities.isFeatureSupported("tunneled-playback"))) {
        }
        if (z13) {
            z15 = true;
        } else {
            if (codecCapabilities != null) {
                if (g0.f10384a >= 21 && codecCapabilities.isFeatureSupported("secure-playback")) {
                    z15 = true;
                }
            }
            z15 = false;
        }
        return new n(str, str2, str3, codecCapabilities, z10, z14, z15);
    }

    public final q3.i c(s0 s0Var, s0 s0Var2) {
        boolean z10 = false;
        int i10 = !g0.a(s0Var.f11687s, s0Var2.f11687s) ? 8 : 0;
        if (this.f6422h) {
            if (s0Var.A != s0Var2.A) {
                i10 |= 1024;
            }
            if (!this.f6419e && (s0Var.f11692x != s0Var2.f11692x || s0Var.f11693y != s0Var2.f11693y)) {
                i10 |= 512;
            }
            if (!g0.a(s0Var.E, s0Var2.E)) {
                i10 |= 2048;
            }
            String str = this.f6415a;
            if (g0.f10387d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str)) {
                z10 = true;
            }
            if (z10 && !s0Var.d(s0Var2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new q3.i(this.f6415a, s0Var, s0Var2, s0Var.d(s0Var2) ? 3 : 2, 0);
            }
        } else {
            if (s0Var.F != s0Var2.F) {
                i10 |= AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
            }
            if (s0Var.G != s0Var2.G) {
                i10 |= 8192;
            }
            if (s0Var.H != s0Var2.H) {
                i10 |= Http2.INITIAL_MAX_FRAME_SIZE;
            }
            if (i10 == 0 && "audio/mp4a-latm".equals(this.f6416b)) {
                Pair<Integer, Integer> pairD = r.d(s0Var);
                Pair<Integer, Integer> pairD2 = r.d(s0Var2);
                if (pairD != null && pairD2 != null) {
                    int iIntValue = ((Integer) pairD.first).intValue();
                    int iIntValue2 = ((Integer) pairD2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new q3.i(this.f6415a, s0Var, s0Var2, 3, 0);
                    }
                }
            }
            if (!s0Var.d(s0Var2)) {
                i10 |= 32;
            }
            if ("audio/opus".equals(this.f6416b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new q3.i(this.f6415a, s0Var, s0Var2, 1, 0);
            }
        }
        return new q3.i(this.f6415a, s0Var, s0Var2, 0, i10);
    }

    public final MediaCodecInfo.CodecProfileLevel[] d() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6418d;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    /* JADX WARN: Code duplicated, block: B:130:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:132:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:134:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:135:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:137:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:140:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:169:0x025d  */
    /* JADX WARN: Code duplicated, block: B:170:0x025f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0268  */
    /* JADX WARN: Code duplicated, block: B:176:0x0298  */
    /* JADX WARN: Code duplicated, block: B:178:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:189:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0125  */
    /* JADX WARN: Code duplicated, block: B:91:0x0128 A[EDGE_INSN: B:91:0x0128->B:94:0x014a BREAK  A[LOOP:0: B:76:0x00fb->B:92:0x012a]] */
    /* JADX WARN: Instruction removed from duplicated block: B:176:0x0298, please report this as an issue */
    public final boolean e(s0 s0Var) throws r.b {
        boolean z10;
        int i10;
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        String str;
        String str2;
        int maxInputChannelCount;
        boolean z11;
        boolean z12;
        int i11;
        Pair<Integer, Integer> pairD;
        boolean z13;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        boolean z14 = true;
        if (!(this.f6416b.equals(s0Var.f11687s) || this.f6416b.equals(r.b(s0Var)))) {
            return false;
        }
        int i12 = 16;
        if (s0Var.f11684p != null && (pairD = r.d(s0Var)) != null) {
            int iIntValue = ((Integer) pairD.first).intValue();
            int iIntValue2 = ((Integer) pairD.second).intValue();
            int i13 = 8;
            if ("video/dolby-vision".equals(s0Var.f11687s)) {
                if ("video/avc".equals(this.f6416b)) {
                    iIntValue = 8;
                } else if ("video/hevc".equals(this.f6416b)) {
                    iIntValue = 2;
                }
                iIntValue2 = 0;
            }
            if (!this.f6422h && iIntValue != 42) {
                z10 = true;
                break;
            }
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrD = d();
            if (g0.f10384a <= 23 && "video/x-vnd.on2.vp9".equals(this.f6416b) && codecProfileLevelArrD.length == 0) {
                MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.f6418d;
                int iIntValue3 = (codecCapabilities2 == null || (videoCapabilities = codecCapabilities2.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
                if (iIntValue3 >= 180000000) {
                    i13 = 1024;
                } else if (iIntValue3 >= 120000000) {
                    i13 = 512;
                } else if (iIntValue3 >= 60000000) {
                    i13 = 256;
                } else if (iIntValue3 >= 30000000) {
                    i13 = 128;
                } else if (iIntValue3 >= 18000000) {
                    i13 = 64;
                } else if (iIntValue3 >= 12000000) {
                    i13 = 32;
                } else if (iIntValue3 >= 7200000) {
                    i13 = 16;
                } else if (iIntValue3 < 3600000) {
                    if (iIntValue3 >= 1800000) {
                        i13 = 4;
                    } else {
                        i13 = iIntValue3 >= 800000 ? 2 : 1;
                    }
                }
                MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                codecProfileLevel.profile = 1;
                codecProfileLevel.level = i13;
                codecProfileLevelArrD = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
            }
            int length = codecProfileLevelArrD.length;
            int i14 = 0;
            while (true) {
                if (i14 >= length) {
                    StringBuilder sbC = a0.b.c("codec.profileLevel, ");
                    sbC.append(s0Var.f11684p);
                    sbC.append(", ");
                    sbC.append(this.f6417c);
                    h(sbC.toString());
                    z10 = false;
                    break;
                }
                MediaCodecInfo.CodecProfileLevel codecProfileLevel2 = codecProfileLevelArrD[i14];
                if (codecProfileLevel2.profile == iIntValue && codecProfileLevel2.level >= iIntValue2) {
                    if ("video/hevc".equals(this.f6416b) && 2 == iIntValue) {
                        String str3 = g0.f10385b;
                        if ("sailfish".equals(str3) || "marlin".equals(str3)) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                    } else {
                        z13 = false;
                    }
                    if (!z13) {
                        z10 = true;
                        break;
                    }
                }
                i14++;
            }
        } else {
            z10 = true;
            break;
        }
        if (!z10) {
            return false;
        }
        if (this.f6422h) {
            int i15 = s0Var.f11692x;
            if (i15 > 0 && (i11 = s0Var.f11693y) > 0) {
                if (g0.f10384a >= 21) {
                    return g(i15, i11, s0Var.f11694z);
                }
                z14 = i15 * i11 <= r.k();
                if (!z14) {
                    StringBuilder sbC2 = a0.b.c("legacyFrameSize, ");
                    sbC2.append(s0Var.f11692x);
                    sbC2.append("x");
                    sbC2.append(s0Var.f11693y);
                    h(sbC2.toString());
                }
            }
            return z14;
        }
        int i16 = g0.f10384a;
        if (i16 < 21) {
            return true;
        }
        int i17 = s0Var.G;
        if (i17 == -1) {
            i10 = s0Var.F;
            if (i10 == -1) {
                return true;
            }
            codecCapabilities = this.f6418d;
            if (codecCapabilities == null) {
                h("channelCount.caps");
            } else {
                audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    h("channelCount.aCaps");
                } else {
                    str = this.f6415a;
                    str2 = this.f6416b;
                    maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                    if (maxInputChannelCount <= 1 && ((i16 < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                        if ("audio/ac3".equals(str2)) {
                            i12 = 6;
                        } else if (!"audio/eac3".equals(str2)) {
                            i12 = 30;
                        }
                        m5.p.g("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i12 + "]");
                        maxInputChannelCount = i12;
                    }
                    if (maxInputChannelCount < i10) {
                        h("channelCount.support, " + i10);
                    } else {
                        z11 = true;
                    }
                    if (z11) {
                        return true;
                    }
                }
            }
            z11 = false;
            if (z11) {
                return true;
            }
        } else {
            MediaCodecInfo.CodecCapabilities codecCapabilities3 = this.f6418d;
            if (codecCapabilities3 == null) {
                h("sampleRate.caps");
            } else {
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities3.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    h("sampleRate.aCaps");
                } else {
                    if (audioCapabilities2.isSampleRateSupported(i17)) {
                        z12 = true;
                    } else {
                        h("sampleRate.support, " + i17);
                    }
                    if (z12) {
                        i10 = s0Var.F;
                        if (i10 == -1) {
                            return true;
                        }
                        codecCapabilities = this.f6418d;
                        if (codecCapabilities == null) {
                            h("channelCount.caps");
                        } else {
                            audioCapabilities = codecCapabilities.getAudioCapabilities();
                            if (audioCapabilities == null) {
                                h("channelCount.aCaps");
                            } else {
                                str = this.f6415a;
                                str2 = this.f6416b;
                                maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                                if (maxInputChannelCount <= 1) {
                                    if ("audio/ac3".equals(str2)) {
                                        i12 = 6;
                                    } else if (!"audio/eac3".equals(str2)) {
                                        i12 = 30;
                                    }
                                    m5.p.g("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i12 + "]");
                                    maxInputChannelCount = i12;
                                }
                                if (maxInputChannelCount < i10) {
                                    h("channelCount.support, " + i10);
                                } else {
                                    z11 = true;
                                }
                                if (z11) {
                                    return true;
                                }
                            }
                        }
                        z11 = false;
                        if (z11) {
                            return true;
                        }
                    }
                }
            }
            z12 = false;
            if (z12) {
                i10 = s0Var.F;
                if (i10 == -1) {
                    return true;
                }
                codecCapabilities = this.f6418d;
                if (codecCapabilities == null) {
                    h("channelCount.caps");
                } else {
                    audioCapabilities = codecCapabilities.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        h("channelCount.aCaps");
                    } else {
                        str = this.f6415a;
                        str2 = this.f6416b;
                        maxInputChannelCount = audioCapabilities.getMaxInputChannelCount();
                        if (maxInputChannelCount <= 1) {
                            if ("audio/ac3".equals(str2)) {
                                i12 = 6;
                            } else if (!"audio/eac3".equals(str2)) {
                                i12 = 30;
                            }
                            m5.p.g("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i12 + "]");
                            maxInputChannelCount = i12;
                        }
                        if (maxInputChannelCount < i10) {
                            h("channelCount.support, " + i10);
                        } else {
                            z11 = true;
                        }
                        if (z11) {
                            return true;
                        }
                    }
                }
                z11 = false;
                if (z11) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean f(s0 s0Var) {
        if (this.f6422h) {
            return this.f6419e;
        }
        Pair<Integer, Integer> pairD = r.d(s0Var);
        return pairD != null && ((Integer) pairD.first).intValue() == 42;
    }

    public final boolean g(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6418d;
        if (codecCapabilities == null) {
            h("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            h("sizeAndRate.vCaps");
            return false;
        }
        if (!b(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11) {
                if ((("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.f6415a) && "mcv5a".equals(g0.f10385b)) ? false : true) && b(videoCapabilities, i11, i10, d10)) {
                    StringBuilder sbB = androidx.recyclerview.widget.s.b("sizeAndRate.rotated, ", i10, "x", i11, "x");
                    sbB.append(d10);
                    StringBuilder sbE = a4.g.e("AssumedSupport [", sbB.toString(), "] [");
                    sbE.append(this.f6415a);
                    sbE.append(", ");
                    sbE.append(this.f6416b);
                    sbE.append("] [");
                    sbE.append(g0.f10388e);
                    sbE.append("]");
                    m5.p.b("MediaCodecInfo", sbE.toString());
                }
            }
            StringBuilder sbB2 = androidx.recyclerview.widget.s.b("sizeAndRate.support, ", i10, "x", i11, "x");
            sbB2.append(d10);
            h(sbB2.toString());
            return false;
        }
        return true;
    }

    public final void h(String str) {
        StringBuilder sbE = a4.g.e("NoSupport [", str, "] [");
        sbE.append(this.f6415a);
        sbE.append(", ");
        sbE.append(this.f6416b);
        sbE.append("] [");
        sbE.append(g0.f10388e);
        sbE.append("]");
        m5.p.b("MediaCodecInfo", sbE.toString());
    }

    public final String toString() {
        return this.f6415a;
    }
}
