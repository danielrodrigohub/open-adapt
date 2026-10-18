package x;

import android.app.Person;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
import java.util.Objects;

/* JADX INFO: compiled from: Person.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f17692a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f17693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f17694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f17695d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17697f;

    /* JADX INFO: compiled from: Person.java */
    public static class a {
        public static t a(Person person) {
            IconCompat iconCompatB;
            b bVar = new b();
            bVar.f17698a = person.getName();
            if (person.getIcon() != null) {
                Icon icon = person.getIcon();
                PorterDuff.Mode mode = IconCompat.f1769k;
                Objects.requireNonNull(icon);
                int iC = IconCompat.a.c(icon);
                if (iC == 2) {
                    iconCompatB = IconCompat.b(IconCompat.a.b(icon), IconCompat.a.a(icon));
                } else if (iC == 4) {
                    Uri uriD = IconCompat.a.d(icon);
                    Objects.requireNonNull(uriD);
                    String string = uriD.toString();
                    Objects.requireNonNull(string);
                    iconCompatB = new IconCompat(4);
                    iconCompatB.f1771b = string;
                } else if (iC != 6) {
                    iconCompatB = new IconCompat(-1);
                    iconCompatB.f1771b = icon;
                } else {
                    Uri uriD2 = IconCompat.a.d(icon);
                    Objects.requireNonNull(uriD2);
                    String string2 = uriD2.toString();
                    Objects.requireNonNull(string2);
                    iconCompatB = new IconCompat(6);
                    iconCompatB.f1771b = string2;
                }
            } else {
                iconCompatB = null;
            }
            bVar.f17699b = iconCompatB;
            bVar.f17700c = person.getUri();
            bVar.f17701d = person.getKey();
            bVar.f17702e = person.isBot();
            bVar.f17703f = person.isImportant();
            return new t(bVar);
        }

        public static Person b(t tVar) {
            Person.Builder name = new Person.Builder().setName(tVar.f17692a);
            IconCompat iconCompat = tVar.f17693b;
            Icon iconF = null;
            if (iconCompat != null) {
                Objects.requireNonNull(iconCompat);
                iconF = IconCompat.a.f(iconCompat, null);
            }
            return name.setIcon(iconF).setUri(tVar.f17694c).setKey(tVar.f17695d).setBot(tVar.f17696e).setImportant(tVar.f17697f).build();
        }
    }

    /* JADX INFO: compiled from: Person.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CharSequence f17698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public IconCompat f17699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f17700c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f17701d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f17702e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f17703f;
    }

    public t(b bVar) {
        this.f17692a = bVar.f17698a;
        this.f17693b = bVar.f17699b;
        this.f17694c = bVar.f17700c;
        this.f17695d = bVar.f17701d;
        this.f17696e = bVar.f17702e;
        this.f17697f = bVar.f17703f;
    }
}
