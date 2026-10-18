package w4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import n3.i1;

/* JADX INFO: compiled from: RtspSessionTiming.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f17191c = new l(0, -9223372036854775807L);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Pattern f17192d = Pattern.compile("npt[:=]([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f17193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17194b;

    public l(long j10, long j11) {
        this.f17193a = j10;
        this.f17194b = j11;
    }

    public static l a(String str) throws i1 {
        long j10;
        Matcher matcher = f17192d.matcher(str);
        com.google.android.exoplayer2.source.rtsp.h.a(matcher.matches(), str);
        String strGroup = matcher.group(1);
        com.google.android.exoplayer2.source.rtsp.h.a(strGroup != null, str);
        int i10 = g0.f10384a;
        long j11 = strGroup.equals("now") ? 0L : (long) (Float.parseFloat(strGroup) * 1000.0f);
        String strGroup2 = matcher.group(2);
        if (strGroup2 != null) {
            try {
                j10 = (long) (Float.parseFloat(strGroup2) * 1000.0f);
                com.google.android.exoplayer2.source.rtsp.h.a(j10 >= j11, str);
            } catch (NumberFormatException e10) {
                throw i1.b(strGroup2, e10);
            }
        } else {
            j10 = -9223372036854775807L;
        }
        return new l(j11, j10);
    }
}
