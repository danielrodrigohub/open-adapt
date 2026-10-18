package o7;

import android.app.Activity;
import android.app.NotificationChannel;
import android.content.Intent;
import android.os.Build;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;

/* JADX INFO: compiled from: BigfootNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f12400a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final fd.h f12401b = (fd.h) androidx.lifecycle.o.x(a.f12403h);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f12402c = androidx.lifecycle.o.r(R.string.adapt_battery_notification_id);

    /* JADX INFO: compiled from: BigfootNotification.kt */
    public static final class a extends rd.o implements qd.a<String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f12403h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final String invoke() {
            return androidx.lifecycle.o.r(R.string.app_name);
        }
    }

    public final String a() {
        return (String) f12401b.getValue();
    }

    public final void b(Activity activity) {
        p4.h.j(activity, "activity");
        Intent intent = new Intent();
        if (Build.VERSION.SDK_INT >= 26) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", activity.getPackageName());
        } else {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", activity.getPackageName());
            intent.putExtra("app_uid", activity.getApplicationInfo().uid);
        }
        activity.startActivity(intent);
    }

    public final boolean c(String str) {
        p4.h.j(str, "channelId");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26) {
            return true;
        }
        x.s sVar = new x.s(BigfootApplication.f5638p.b());
        boolean z10 = sVar.f17676b.getImportance() != 0;
        NotificationChannel notificationChannel = i10 >= 26 ? sVar.f17676b.getNotificationChannel(str) : null;
        return z10 && ((notificationChannel != null && notificationChannel.getImportance() == 0) ^ true);
    }
}
