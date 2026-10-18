package t2;

import android.content.Context;

/* JADX INFO: compiled from: InternalCacheDiskCacheFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends d {

    /* JADX INFO: compiled from: InternalCacheDiskCacheFactory.java */
    public class a implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f15395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f15396b;

        public a(Context context, String str) {
            this.f15395a = context;
            this.f15396b = str;
        }
    }

    public f(Context context) {
        super(new a(context, "image_manager_disk_cache"), 262144000L);
    }

    public f(Context context, String str, long j10) {
        super(new a(context, "adapt_image_cache"), 104857600L);
    }
}
