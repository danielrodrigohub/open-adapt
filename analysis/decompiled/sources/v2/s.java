package v2;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.InputStream;

/* JADX INFO: compiled from: ResourceLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class s<Data> implements n<Integer, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n<Uri, Data> f16199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f16200b;

    /* JADX INFO: compiled from: ResourceLoader.java */
    public static final class a implements o<Integer, AssetFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f16201a;

        public a(Resources resources) {
            this.f16201a = resources;
        }

        @Override // v2.o
        public final n<Integer, AssetFileDescriptor> b(r rVar) {
            return new s(this.f16201a, rVar.c(Uri.class, AssetFileDescriptor.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: ResourceLoader.java */
    public static class b implements o<Integer, ParcelFileDescriptor> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f16202a;

        public b(Resources resources) {
            this.f16202a = resources;
        }

        @Override // v2.o
        public final n<Integer, ParcelFileDescriptor> b(r rVar) {
            return new s(this.f16202a, rVar.c(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: ResourceLoader.java */
    public static class c implements o<Integer, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f16203a;

        public c(Resources resources) {
            this.f16203a = resources;
        }

        @Override // v2.o
        public final n<Integer, InputStream> b(r rVar) {
            return new s(this.f16203a, rVar.c(Uri.class, InputStream.class));
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: ResourceLoader.java */
    public static class d implements o<Integer, Uri> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Resources f16204a;

        public d(Resources resources) {
            this.f16204a = resources;
        }

        @Override // v2.o
        public final n<Integer, Uri> b(r rVar) {
            return new s(this.f16204a, u.f16206a);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f16200b = resources;
        this.f16199a = nVar;
    }

    @Override // v2.n
    public final n.a a(Integer num, int i10, int i11, p2.h hVar) {
        Uri uri;
        Integer num2 = num;
        try {
            uri = Uri.parse("android.resource://" + this.f16200b.getResourcePackageName(num2.intValue()) + '/' + this.f16200b.getResourceTypeName(num2.intValue()) + '/' + this.f16200b.getResourceEntryName(num2.intValue()));
        } catch (Resources.NotFoundException e10) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num2, e10);
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.f16199a.a(uri, i10, i11, hVar);
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(Integer num) {
        return true;
    }
}
