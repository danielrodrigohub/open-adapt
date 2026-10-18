package a3;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.IOException;
import java.util.List;
import p2.h;
import p2.j;
import r2.w;

/* JADX INFO: compiled from: ResourceDrawableDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements j<Uri, Drawable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f210a;

    public e(Context context) {
        this.f210a = context.getApplicationContext();
    }

    @Override // p2.j
    public final boolean a(Uri uri, h hVar) throws IOException {
        return uri.getScheme().equals("android.resource");
    }

    @Override // p2.j
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final w<Drawable> b(Uri uri, int i10, int i11, h hVar) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (authority.equals(this.f210a.getPackageName())) {
            contextCreatePackageContext = this.f210a;
        } else {
            try {
                contextCreatePackageContext = this.f210a.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e10) {
                if (!authority.contains(this.f210a.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e10);
                }
                contextCreatePackageContext = this.f210a;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else {
            if (pathSegments.size() != 1) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e11) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e11);
            }
        }
        Drawable drawableA = b.a(this.f210a, contextCreatePackageContext, identifier, null);
        if (drawableA != null) {
            return new d(drawableA);
        }
        return null;
    }
}
