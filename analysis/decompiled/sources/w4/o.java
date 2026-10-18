package w4;

import android.net.Uri;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;
import n3.i1;

/* JADX INFO: compiled from: SessionDescriptionParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f17222a = Pattern.compile("([a-z])=\\s?(.+)");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f17223b = Pattern.compile("([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::(.*))?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f17224c = Pattern.compile("(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)");

    public static n a(String str) throws i1 {
        byte b10;
        n.a aVar = new n.a();
        String str2 = com.google.android.exoplayer2.source.rtsp.h.f4762h;
        if (!str.contains(str2)) {
            str2 = com.google.android.exoplayer2.source.rtsp.h.f4761g;
        }
        int i10 = g0.f10384a;
        a.b bVar = null;
        for (String str3 : str.split(str2, -1)) {
            if (!"".equals(str3)) {
                Matcher matcher = f17222a.matcher(str3);
                if (!matcher.matches()) {
                    throw i1.b("Malformed SDP line: " + str3, null);
                }
                String strGroup = matcher.group(1);
                Objects.requireNonNull(strGroup);
                String strGroup2 = matcher.group(2);
                Objects.requireNonNull(strGroup2);
                switch (strGroup.hashCode()) {
                    case 97:
                        b10 = strGroup.equals("a") ? (byte) 11 : (byte) -1;
                        break;
                    case 98:
                        b10 = strGroup.equals("b") ? (byte) 8 : (byte) -1;
                        break;
                    case 99:
                        b10 = strGroup.equals("c") ? (byte) 7 : (byte) -1;
                        break;
                    case 100:
                    case 102:
                    case 103:
                    case 104:
                    case 106:
                    case 108:
                    case 110:
                    case 113:
                    case 119:
                    case 120:
                    case 121:
                    default:
                        b10 = -1;
                        break;
                    case 101:
                        b10 = strGroup.equals("e") ? (byte) 5 : (byte) -1;
                        break;
                    case 105:
                        b10 = strGroup.equals("i") ? (byte) 3 : (byte) -1;
                        break;
                    case 107:
                        b10 = strGroup.equals("k") ? (byte) 10 : (byte) -1;
                        break;
                    case 109:
                        b10 = strGroup.equals("m") ? (byte) 12 : (byte) -1;
                        break;
                    case 111:
                        b10 = strGroup.equals("o") ? (byte) 1 : (byte) -1;
                        break;
                    case 112:
                        b10 = strGroup.equals("p") ? (byte) 6 : (byte) -1;
                        break;
                    case 114:
                        b10 = strGroup.equals("r") ? (byte) 13 : (byte) -1;
                        break;
                    case 115:
                        b10 = strGroup.equals("s") ? (byte) 2 : (byte) -1;
                        break;
                    case 116:
                        b10 = strGroup.equals("t") ? (byte) 9 : (byte) -1;
                        break;
                    case 117:
                        b10 = strGroup.equals("u") ? (byte) 4 : (byte) -1;
                        break;
                    case 118:
                        b10 = strGroup.equals(TracePayload.VERSION_KEY) ? (byte) 0 : (byte) -1;
                        break;
                    case 122:
                        b10 = strGroup.equals("z") ? (byte) 14 : (byte) -1;
                        break;
                }
                switch (b10) {
                    case 0:
                        if (!AgentConfiguration.DEFAULT_DEVICE_UUID.equals(strGroup2)) {
                            throw i1.b(String.format("SDP version %s is not supported.", strGroup2), null);
                        }
                        break;
                        break;
                    case 1:
                        aVar.f17214e = strGroup2;
                        break;
                    case 2:
                        aVar.f17213d = strGroup2;
                        break;
                    case 3:
                        if (bVar == null) {
                            aVar.f17219j = strGroup2;
                        } else {
                            bVar.f17132g = strGroup2;
                        }
                        break;
                    case 4:
                        aVar.f17216g = Uri.parse(strGroup2);
                        break;
                    case 5:
                        aVar.f17220k = strGroup2;
                        break;
                    case 6:
                        aVar.f17221l = strGroup2;
                        break;
                    case 7:
                        if (bVar == null) {
                            aVar.f17217h = strGroup2;
                        } else {
                            bVar.f17133h = strGroup2;
                        }
                        break;
                    case 8:
                        String[] strArrSplit = strGroup2.split(":\\s?", -1);
                        m5.a.a(strArrSplit.length == 2);
                        int i11 = Integer.parseInt(strArrSplit[1]);
                        if (bVar == null) {
                            aVar.f17212c = i11 * 1000;
                        } else {
                            bVar.f17131f = i11 * 1000;
                        }
                        break;
                    case 9:
                        aVar.f17215f = strGroup2;
                        break;
                    case 10:
                        if (bVar == null) {
                            aVar.f17218i = strGroup2;
                        } else {
                            bVar.f17134i = strGroup2;
                        }
                        break;
                    case 11:
                        Matcher matcher2 = f17223b.matcher(strGroup2);
                        if (!matcher2.matches()) {
                            throw i1.b("Malformed Attribute line: " + str3, null);
                        }
                        String strGroup3 = matcher2.group(1);
                        Objects.requireNonNull(strGroup3);
                        String strB = t6.n.b(matcher2.group(2));
                        if (bVar == null) {
                            aVar.f17210a.put(strGroup3, strB);
                        } else {
                            bVar.f17130e.put(strGroup3, strB);
                        }
                        break;
                        break;
                    case 12:
                        if (bVar != null) {
                            try {
                                aVar.f17211b.c(bVar.a());
                            } catch (IllegalArgumentException | IllegalStateException e10) {
                                throw i1.b(null, e10);
                            }
                        }
                        Matcher matcher3 = f17224c.matcher(strGroup2);
                        if (!matcher3.matches()) {
                            throw i1.b("Malformed SDP media description line: " + strGroup2, null);
                        }
                        String strGroup4 = matcher3.group(1);
                        Objects.requireNonNull(strGroup4);
                        String strGroup5 = matcher3.group(2);
                        Objects.requireNonNull(strGroup5);
                        String strGroup6 = matcher3.group(3);
                        Objects.requireNonNull(strGroup6);
                        String strGroup7 = matcher3.group(4);
                        Objects.requireNonNull(strGroup7);
                        try {
                            bVar = new a.b(strGroup4, Integer.parseInt(strGroup5), strGroup6, Integer.parseInt(strGroup7));
                        } catch (NumberFormatException e11) {
                            throw i1.b("Malformed SDP media description line: " + strGroup2, e11);
                        }
                        break;
                        break;
                }
            }
        }
        if (bVar != null) {
            try {
                aVar.f17211b.c(bVar.a());
            } catch (IllegalArgumentException | IllegalStateException e12) {
                throw i1.b(null, e12);
            }
        }
        try {
            return new n(aVar);
        } catch (IllegalArgumentException | IllegalStateException e13) {
            throw i1.b(null, e13);
        }
    }
}
