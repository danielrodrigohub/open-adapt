package u1;

import android.content.ComponentName;
import android.content.Context;

/* JADX INFO: compiled from: PackageManagerHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f15629a = k1.l.e("PackageManagerHelper");

    public static void a(Context context, Class<?> cls, boolean z10) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z10 ? 1 : 2, 1);
            k1.l lVarC = k1.l.c();
            String str = f15629a;
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            objArr[1] = z10 ? "enabled" : "disabled";
            lVarC.a(str, String.format("%s %s", objArr), new Throwable[0]);
        } catch (Exception e10) {
            k1.l lVarC2 = k1.l.c();
            String str2 = f15629a;
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = z10 ? "enabled" : "disabled";
            lVarC2.a(str2, String.format("%s could not be %s", objArr2), e10);
        }
    }
}
