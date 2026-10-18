package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class MultiInstanceInvalidationService extends Service {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2843h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap<Integer, String> f2844i = new HashMap<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RemoteCallbackList<androidx.room.a> f2845j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b f2846k = new b();

    public class a extends RemoteCallbackList<androidx.room.a> {
        public a() {
        }

        @Override // android.os.RemoteCallbackList
        public final void onCallbackDied(IInterface iInterface, Object obj) {
            MultiInstanceInvalidationService.this.f2844i.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    public class b extends androidx.room.b.a {
        public b() {
        }

        @Override // androidx.room.b
        public final int c(androidx.room.a aVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.f2845j) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i10 = multiInstanceInvalidationService.f2843h + 1;
                multiInstanceInvalidationService.f2843h = i10;
                if (multiInstanceInvalidationService.f2845j.register(aVar, Integer.valueOf(i10))) {
                    MultiInstanceInvalidationService.this.f2844i.put(Integer.valueOf(i10), str);
                    return i10;
                }
                MultiInstanceInvalidationService.this.f2843h--;
                return 0;
            }
        }

        @Override // androidx.room.b
        public final void e(int i10, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.f2845j) {
                String str = MultiInstanceInvalidationService.this.f2844i.get(Integer.valueOf(i10));
                if (str == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int iBeginBroadcast = MultiInstanceInvalidationService.this.f2845j.beginBroadcast();
                for (int i11 = 0; i11 < iBeginBroadcast; i11++) {
                    try {
                        int iIntValue = ((Integer) MultiInstanceInvalidationService.this.f2845j.getBroadcastCookie(i11)).intValue();
                        String str2 = MultiInstanceInvalidationService.this.f2844i.get(Integer.valueOf(iIntValue));
                        if (i10 != iIntValue && str.equals(str2)) {
                            try {
                                ((androidx.room.a) MultiInstanceInvalidationService.this.f2845j.getBroadcastItem(i11)).b(strArr);
                            } catch (RemoteException e10) {
                                Log.w("ROOM", "Error invoking a remote callback", e10);
                            }
                        }
                    } catch (Throwable th) {
                        MultiInstanceInvalidationService.this.f2845j.finishBroadcast();
                        throw th;
                    }
                }
                MultiInstanceInvalidationService.this.f2845j.finishBroadcast();
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f2846k;
    }
}
