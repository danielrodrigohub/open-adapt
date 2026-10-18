package s3;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m5.g0;

/* JADX INFO: compiled from: GaplessInfoHolder.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f15068c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15069a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f15070b = -1;

    public final boolean a(String str) {
        Matcher matcher = f15068c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i10 = g0.f10384a;
            int i11 = Integer.parseInt(strGroup, 16);
            int i12 = Integer.parseInt(matcher.group(2), 16);
            if (i11 <= 0 && i12 <= 0) {
                return false;
            }
            this.f15069a = i11;
            this.f15070b = i12;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final boolean b(f4.a aVar) {
        int i10 = 0;
        while (true) {
            f4.a.b[] bVarArr = aVar.f7052h;
            if (i10 >= bVarArr.length) {
                return false;
            }
            f4.a.b bVar = bVarArr[i10];
            if (bVar instanceof k4.e) {
                k4.e eVar = (k4.e) bVar;
                if ("iTunSMPB".equals(eVar.f9665j) && a(eVar.f9666k)) {
                    return true;
                }
            } else if (bVar instanceof k4.i) {
                k4.i iVar = (k4.i) bVar;
                if ("com.apple.iTunes".equals(iVar.f9677i) && "iTunSMPB".equals(iVar.f9678j) && a(iVar.f9679k)) {
                    return true;
                }
            } else {
                continue;
            }
            i10++;
        }
    }
}
