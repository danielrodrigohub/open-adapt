package w0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: compiled from: LocalBroadcastManager.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f17043f = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static a f17044g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap<BroadcastReceiver, ArrayList<c>> f17046b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap<String, ArrayList<c>> f17047c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList<b> f17048d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HandlerC0298a f17049e;

    /* JADX INFO: renamed from: w0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: LocalBroadcastManager.java */
    public class HandlerC0298a extends Handler {
        public HandlerC0298a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                a.this.a();
            }
        }
    }

    /* JADX INFO: compiled from: LocalBroadcastManager.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f17051a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList<c> f17052b;

        public b(Intent intent, ArrayList<c> arrayList) {
            this.f17051a = intent;
            this.f17052b = arrayList;
        }
    }

    /* JADX INFO: compiled from: LocalBroadcastManager.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IntentFilter f17053a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BroadcastReceiver f17054b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17055c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f17056d;

        public c(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f17053a = intentFilter;
            this.f17054b = broadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("Receiver{");
            sb2.append(this.f17054b);
            sb2.append(" filter=");
            sb2.append(this.f17053a);
            if (this.f17056d) {
                sb2.append(" DEAD");
            }
            sb2.append("}");
            return sb2.toString();
        }
    }

    public a(Context context) {
        this.f17045a = context;
        this.f17049e = new HandlerC0298a(context.getMainLooper());
    }

    public static a b(Context context) {
        a aVar;
        synchronized (f17043f) {
            if (f17044g == null) {
                f17044g = new a(context.getApplicationContext());
            }
            aVar = f17044g;
        }
        return aVar;
    }

    public final void a() {
        int size;
        b[] bVarArr;
        while (true) {
            synchronized (this.f17046b) {
                size = this.f17048d.size();
                if (size <= 0) {
                    return;
                }
                bVarArr = new b[size];
                this.f17048d.toArray(bVarArr);
                this.f17048d.clear();
            }
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = bVarArr[i10];
                int size2 = bVar.f17052b.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c cVar = bVar.f17052b.get(i11);
                    if (!cVar.f17056d) {
                        cVar.f17054b.onReceive(this.f17045a, bVar.f17051a);
                    }
                }
            }
        }
    }

    public final void c(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f17046b) {
            c cVar = new c(intentFilter, broadcastReceiver);
            ArrayList<c> arrayList = this.f17046b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f17046b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(cVar);
            for (int i10 = 0; i10 < intentFilter.countActions(); i10++) {
                String action = intentFilter.getAction(i10);
                ArrayList<c> arrayList2 = this.f17047c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f17047c.put(action, arrayList2);
                }
                arrayList2.add(cVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0173  */
    public final void d(Intent intent) {
        boolean z10;
        int i10;
        String str;
        ArrayList arrayList;
        ArrayList<c> arrayList2;
        String str2;
        String str3;
        synchronized (this.f17046b) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f17045a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z11 = (intent.getFlags() & 8) != 0;
            if (z11) {
                Log.v("LocalBroadcastManager", "Resolving type " + strResolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<c> arrayList3 = this.f17047c.get(intent.getAction());
            if (arrayList3 == null) {
                z10 = false;
            } else {
                if (z11) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList3);
                }
                ArrayList arrayList4 = null;
                int i11 = 0;
                while (i11 < arrayList3.size()) {
                    c cVar = arrayList3.get(i11);
                    if (z11) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + cVar.f17053a);
                    }
                    if (cVar.f17055c) {
                        if (z11) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                        }
                        i10 = i11;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = strResolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i10 = i11;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = strResolveTypeIfNeeded;
                        int iMatch = cVar.f17053a.match(action, strResolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (iMatch >= 0) {
                            if (z11) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(iMatch));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(cVar);
                            cVar.f17055c = true;
                        } else if (z11) {
                            if (iMatch == -4) {
                                str3 = AnalyticsAttribute.EVENT_CATEGORY_ATTRIBUTE;
                            } else if (iMatch == -3) {
                                str3 = "action";
                            } else if (iMatch != -2) {
                                str3 = iMatch != -1 ? "unknown reason" : AnalyticsAttribute.TYPE_ATTRIBUTE;
                            } else {
                                str3 = "data";
                            }
                            Log.v("LocalBroadcastManager", "  Filter did not match: " + str3);
                        }
                        i11 = i10 + 1;
                        action = str;
                        arrayList3 = arrayList2;
                        strResolveTypeIfNeeded = str2;
                    }
                    arrayList4 = arrayList;
                    i11 = i10 + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    strResolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i12 = 0; i12 < arrayList5.size(); i12++) {
                        ((c) arrayList5.get(i12)).f17055c = false;
                    }
                    this.f17048d.add(new b(intent, arrayList5));
                    if (!this.f17049e.hasMessages(1)) {
                        this.f17049e.sendEmptyMessage(1);
                    }
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
        }
        if (z10) {
            a();
        }
    }

    public final void e(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f17046b) {
            ArrayList<c> arrayListRemove = this.f17046b.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                c cVar = arrayListRemove.get(size);
                cVar.f17056d = true;
                for (int i10 = 0; i10 < cVar.f17053a.countActions(); i10++) {
                    String action = cVar.f17053a.getAction(i10);
                    ArrayList<c> arrayList = this.f17047c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            c cVar2 = arrayList.get(size2);
                            if (cVar2.f17054b == broadcastReceiver) {
                                cVar2.f17056d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f17047c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
