package x;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: NotificationCompatBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Notification.Builder f17665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f17666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<Bundle> f17667c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f17668d = new Bundle();

    public q(o oVar) {
        this.f17666b = oVar;
        Context context = oVar.f17645a;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f17665a = new Notification.Builder(oVar.f17645a, oVar.f17660p);
        } else {
            this.f17665a = new Notification.Builder(oVar.f17645a);
        }
        Notification notification = oVar.f17662r;
        this.f17665a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(oVar.f17649e).setContentText(oVar.f17650f).setContentInfo(null).setContentIntent(oVar.f17651g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon((Bitmap) null).setNumber(0).setProgress(oVar.f17655k, oVar.f17656l, oVar.f17657m);
        this.f17665a.setSubText(null).setUsesChronometer(false).setPriority(oVar.f17652h);
        for (m mVar : oVar.f17646b) {
            IconCompat iconCompatA = mVar.a();
            Notification.Action.Builder builder = new Notification.Action.Builder(iconCompatA != null ? IconCompat.a.f(iconCompatA, null) : null, mVar.f17641j, mVar.f17642k);
            u[] uVarArr = mVar.f17634c;
            if (uVarArr != null) {
                int length = uVarArr.length;
                RemoteInput[] remoteInputArr = new RemoteInput[length];
                if (uVarArr.length > 0) {
                    u uVar = uVarArr[0];
                    throw null;
                }
                for (int i10 = 0; i10 < length; i10++) {
                    builder.addRemoteInput(remoteInputArr[i10]);
                }
            }
            Bundle bundle = mVar.f17632a != null ? new Bundle(mVar.f17632a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", mVar.f17636e);
            int i11 = Build.VERSION.SDK_INT;
            builder.setAllowGeneratedReplies(mVar.f17636e);
            bundle.putInt("android.support.action.semanticAction", mVar.f17638g);
            if (i11 >= 28) {
                builder.setSemanticAction(mVar.f17638g);
            }
            if (i11 >= 29) {
                builder.setContextual(mVar.f17639h);
            }
            if (i11 >= 31) {
                builder.setAuthenticationRequired(mVar.f17643l);
            }
            bundle.putBoolean("android.support.action.showsUserInterface", mVar.f17637f);
            builder.addExtras(bundle);
            this.f17665a.addAction(builder.build());
        }
        Bundle bundle2 = oVar.f17659o;
        if (bundle2 != null) {
            this.f17668d.putAll(bundle2);
        }
        int i12 = Build.VERSION.SDK_INT;
        this.f17665a.setShowWhen(oVar.f17653i);
        this.f17665a.setLocalOnly(false).setGroup(null).setGroupSummary(false).setSortKey(null);
        this.f17665a.setCategory(oVar.f17658n).setColor(0).setVisibility(0).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
        List listA = i12 < 28 ? a(b(oVar.f17647c), oVar.f17663s) : oVar.f17663s;
        if (listA != null && !listA.isEmpty()) {
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                this.f17665a.addPerson((String) it.next());
            }
        }
        if (oVar.f17648d.size() > 0) {
            if (oVar.f17659o == null) {
                oVar.f17659o = new Bundle();
            }
            Bundle bundle3 = oVar.f17659o.getBundle("android.car.EXTENSIONS");
            bundle3 = bundle3 == null ? new Bundle() : bundle3;
            Bundle bundle4 = new Bundle(bundle3);
            Bundle bundle5 = new Bundle();
            for (int i13 = 0; i13 < oVar.f17648d.size(); i13++) {
                String string = Integer.toString(i13);
                m mVar2 = oVar.f17648d.get(i13);
                Object obj = r.f17669a;
                Bundle bundle6 = new Bundle();
                IconCompat iconCompatA2 = mVar2.a();
                bundle6.putInt("icon", iconCompatA2 != null ? iconCompatA2.c() : 0);
                bundle6.putCharSequence("title", mVar2.f17641j);
                bundle6.putParcelable("actionIntent", mVar2.f17642k);
                Bundle bundle7 = mVar2.f17632a != null ? new Bundle(mVar2.f17632a) : new Bundle();
                bundle7.putBoolean("android.support.allowGeneratedReplies", mVar2.f17636e);
                bundle6.putBundle("extras", bundle7);
                bundle6.putParcelableArray("remoteInputs", r.a(mVar2.f17634c));
                bundle6.putBoolean("showsUserInterface", mVar2.f17637f);
                bundle6.putInt("semanticAction", mVar2.f17638g);
                bundle5.putBundle(string, bundle6);
            }
            bundle3.putBundle("invisible_actions", bundle5);
            bundle4.putBundle("invisible_actions", bundle5);
            if (oVar.f17659o == null) {
                oVar.f17659o = new Bundle();
            }
            oVar.f17659o.putBundle("android.car.EXTENSIONS", bundle3);
            this.f17668d.putBundle("android.car.EXTENSIONS", bundle4);
        }
        int i14 = Build.VERSION.SDK_INT;
        this.f17665a.setExtras(oVar.f17659o).setRemoteInputHistory(null);
        if (i14 >= 26) {
            this.f17665a.setBadgeIconType(0).setSettingsText(null).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(0);
            if (!TextUtils.isEmpty(oVar.f17660p)) {
                this.f17665a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i14 >= 28) {
            for (t tVar : oVar.f17647c) {
                Notification.Builder builder2 = this.f17665a;
                Objects.requireNonNull(tVar);
                builder2.addPerson(t.a.b(tVar));
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f17665a.setAllowSystemGeneratedContextualActions(oVar.f17661q);
            this.f17665a.setBubbleMetadata(null);
        }
    }

    public static List<String> a(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        p.c cVar = new p.c(list2.size() + list.size());
        cVar.addAll(list);
        cVar.addAll(list2);
        return new ArrayList(cVar);
    }

    public static List<String> b(List<t> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (t tVar : list) {
            String string = tVar.f17694c;
            if (string == null) {
                if (tVar.f17692a != null) {
                    StringBuilder sbC = a0.b.c("name:");
                    sbC.append((Object) tVar.f17692a);
                    string = sbC.toString();
                } else {
                    string = "";
                }
            }
            arrayList.add(string);
        }
        return arrayList;
    }
}
