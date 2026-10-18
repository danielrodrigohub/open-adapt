package e5;

import android.text.TextUtils;
import androidx.activity.k;
import java.util.Objects;

/* JADX INFO: compiled from: SsaDialogueFormat.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6483e;

    public b(int i10, int i11, int i12, int i13, int i14) {
        this.f6479a = i10;
        this.f6480b = i11;
        this.f6481c = i12;
        this.f6482d = i13;
        this.f6483e = i14;
    }

    public static b a(String str) {
        m5.a.a(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < strArrSplit.length; i14++) {
            String strS = k.s(strArrSplit[i14].trim());
            Objects.requireNonNull(strS);
            switch (strS) {
                case "end":
                    i11 = i14;
                    break;
                case "text":
                    i13 = i14;
                    break;
                case "start":
                    i10 = i14;
                    break;
                case "style":
                    i12 = i14;
                    break;
            }
        }
        if (i10 == -1 || i11 == -1 || i13 == -1) {
            return null;
        }
        return new b(i10, i11, i12, i13, strArrSplit.length);
    }
}
