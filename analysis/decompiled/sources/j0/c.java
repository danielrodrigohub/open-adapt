package j0;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: ContentInfoCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f9168a;

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public static final class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentInfo.Builder f9169a;

        public a(ClipData clipData, int i10) {
            this.f9169a = new ContentInfo.Builder(clipData, i10);
        }

        @Override // j0.c.b
        public final c a() {
            return new c(new d(this.f9169a.build()));
        }

        @Override // j0.c.b
        public final void b(Bundle bundle) {
            this.f9169a.setExtras(bundle);
        }

        @Override // j0.c.b
        public final void c(Uri uri) {
            this.f9169a.setLinkUri(uri);
        }

        @Override // j0.c.b
        public final void d(int i10) {
            this.f9169a.setFlags(i10);
        }
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public interface b {
        c a();

        void b(Bundle bundle);

        void c(Uri uri);

        void d(int i10);
    }

    /* JADX INFO: renamed from: j0.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public static final class C0179c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ClipData f9170a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9171b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f9172c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Uri f9173d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Bundle f9174e;

        public C0179c(ClipData clipData, int i10) {
            this.f9170a = clipData;
            this.f9171b = i10;
        }

        @Override // j0.c.b
        public final c a() {
            return new c(new f(this));
        }

        @Override // j0.c.b
        public final void b(Bundle bundle) {
            this.f9174e = bundle;
        }

        @Override // j0.c.b
        public final void c(Uri uri) {
            this.f9173d = uri;
        }

        @Override // j0.c.b
        public final void d(int i10) {
            this.f9172c = i10;
        }
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public static final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentInfo f9175a;

        public d(ContentInfo contentInfo) {
            Objects.requireNonNull(contentInfo);
            this.f9175a = contentInfo;
        }

        @Override // j0.c.e
        public final ClipData a() {
            return this.f9175a.getClip();
        }

        @Override // j0.c.e
        public final int b() {
            return this.f9175a.getFlags();
        }

        @Override // j0.c.e
        public final ContentInfo c() {
            return this.f9175a;
        }

        @Override // j0.c.e
        public final int d() {
            return this.f9175a.getSource();
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("ContentInfoCompat{");
            sbC.append(this.f9175a);
            sbC.append("}");
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public interface e {
        ClipData a();

        int b();

        ContentInfo c();

        int d();
    }

    /* JADX INFO: compiled from: ContentInfoCompat.java */
    public static final class f implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ClipData f9176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9177b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9178c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Uri f9179d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f9180e;

        public f(C0179c c0179c) {
            ClipData clipData = c0179c.f9170a;
            Objects.requireNonNull(clipData);
            this.f9176a = clipData;
            int i10 = c0179c.f9171b;
            if (i10 < 0) {
                throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", "source", 0, 5));
            }
            if (i10 > 5) {
                throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", "source", 0, 5));
            }
            this.f9177b = i10;
            int i11 = c0179c.f9172c;
            if ((i11 & 1) == i11) {
                this.f9178c = i11;
                this.f9179d = c0179c.f9173d;
                this.f9180e = c0179c.f9174e;
            } else {
                StringBuilder sbC = a0.b.c("Requested flags 0x");
                sbC.append(Integer.toHexString(i11));
                sbC.append(", but only 0x");
                sbC.append(Integer.toHexString(1));
                sbC.append(" are allowed");
                throw new IllegalArgumentException(sbC.toString());
            }
        }

        @Override // j0.c.e
        public final ClipData a() {
            return this.f9176a;
        }

        @Override // j0.c.e
        public final int b() {
            return this.f9178c;
        }

        @Override // j0.c.e
        public final ContentInfo c() {
            return null;
        }

        @Override // j0.c.e
        public final int d() {
            return this.f9177b;
        }

        public final String toString() {
            String strValueOf;
            String string;
            StringBuilder sbC = a0.b.c("ContentInfoCompat{clip=");
            sbC.append(this.f9176a.getDescription());
            sbC.append(", source=");
            int i10 = this.f9177b;
            if (i10 == 0) {
                strValueOf = "SOURCE_APP";
            } else if (i10 == 1) {
                strValueOf = "SOURCE_CLIPBOARD";
            } else if (i10 == 2) {
                strValueOf = "SOURCE_INPUT_METHOD";
            } else if (i10 == 3) {
                strValueOf = "SOURCE_DRAG_AND_DROP";
            } else if (i10 != 4) {
                strValueOf = i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT";
            } else {
                strValueOf = "SOURCE_AUTOFILL";
            }
            sbC.append(strValueOf);
            sbC.append(", flags=");
            int i11 = this.f9178c;
            sbC.append((i11 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i11));
            if (this.f9179d == null) {
                string = "";
            } else {
                StringBuilder sbC2 = a0.b.c(", hasLinkUri(");
                sbC2.append(this.f9179d.toString().length());
                sbC2.append(")");
                string = sbC2.toString();
            }
            sbC.append(string);
            return a1.f.d(sbC, this.f9180e != null ? ", hasExtras" : "", "}");
        }
    }

    public c(e eVar) {
        this.f9168a = eVar;
    }

    public final String toString() {
        return this.f9168a.toString();
    }
}
