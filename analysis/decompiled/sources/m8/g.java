package m8;

import android.content.SharedPreferences;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.nike.adapt.network.identity.model.AdaptIdentity;
import com.nike.adapt.network.identity.model.Avatar;
import com.nike.adapt.network.identity.model.Contact;
import com.nike.adapt.network.identity.model.Dob;
import com.nike.adapt.network.identity.model.Email;
import com.nike.adapt.network.identity.model.Latin;
import com.nike.adapt.network.identity.model.Name;
import com.nike.adapt.network.identity.model.Registration;
import com.nike.adapt.presenter.profile.AdaptUser;
import java.util.GregorianCalendar;
import java.util.Objects;
import java.util.TimeZone;
import qd.l;

/* JADX INFO: compiled from: FetchProfileRepository.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f10822b = new g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final fd.h f10823c = (fd.h) o.x(c.f10826h);

    /* JADX INFO: compiled from: FetchProfileRepository.kt */
    public static final class a extends rd.o implements l<Throwable, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f10824h = new a();

        public a() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(Throwable th) {
            p4.h.j(th, "it");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: FetchProfileRepository.kt */
    public static final class b implements f8.a<AdaptIdentity> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f8.c<AdaptUser> f10825a;

        public b(f8.c<AdaptUser> cVar) {
            this.f10825a = cVar;
        }

        @Override // f8.a
        public final void b(Throwable th) {
            this.f10825a.a(new f8.d(th));
        }

        @Override // f8.a
        public final void c(AdaptIdentity adaptIdentity) {
            Integer numValueOf;
            Email email;
            int i10;
            Latin latin;
            Latin latin2;
            AdaptIdentity adaptIdentity2 = adaptIdentity;
            String nuId = adaptIdentity2.getNuId();
            Name name = adaptIdentity2.getName();
            String given = (name == null || (latin2 = name.getLatin()) == null) ? null : latin2.getGiven();
            Name name2 = adaptIdentity2.getName();
            String family = (name2 == null || (latin = name2.getLatin()) == null) ? null : latin.getFamily();
            Avatar avatar = adaptIdentity2.getAvatar();
            String medium = avatar != null ? avatar.getMedium() : null;
            String hometown = adaptIdentity2.getHometown();
            Dob dob = adaptIdentity2.getDob();
            if (dob != null) {
                if (dob.getDay() == null || dob.getMonth() == null || dob.getYear() == null) {
                    i10 = 0;
                } else {
                    new GregorianCalendar().setTimeZone(TimeZone.getTimeZone("UTC"));
                    GregorianCalendar gregorianCalendar = new GregorianCalendar(dob.getYear().intValue(), dob.getMonth().intValue(), dob.getDay().intValue());
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                    i10 = gregorianCalendar2.get(1) - gregorianCalendar.get(1);
                    if (gregorianCalendar.get(2) > gregorianCalendar2.get(2) || (gregorianCalendar.get(2) == gregorianCalendar2.get(2) && gregorianCalendar.get(5) > gregorianCalendar2.get(5))) {
                        i10--;
                    }
                }
                numValueOf = Integer.valueOf(i10);
            } else {
                numValueOf = null;
            }
            Registration registration = adaptIdentity2.getRegistration();
            Long timestamp = registration != null ? registration.getTimestamp() : null;
            Contact contact = adaptIdentity2.getContact();
            AdaptUser adaptUser = new AdaptUser(nuId, given, family, medium, hometown, numValueOf, timestamp, (contact == null || (email = contact.getEmail()) == null) ? null : email.getAddress());
            f8.c<AdaptUser> cVar = this.f10825a;
            SharedPreferences.Editor editorEdit = h8.c.f8298b.m0().edit();
            p4.h.i(editorEdit, "editor");
            editorEdit.putString("PREF_BIGFOOT_USER", GsonInstrumentation.toJson(new e7.h(), adaptUser));
            editorEdit.apply();
            g.f10822b.b(cVar, new h(cVar));
        }
    }

    /* JADX INFO: compiled from: FetchProfileRepository.kt */
    public static final class c extends rd.o implements qd.a<e8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f10826h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final e8.a invoke() {
            int i10 = e8.a.f6550a;
            return e8.b.f6551b;
        }
    }

    /* JADX INFO: compiled from: FetchProfileRepository.kt */
    public static final class d implements f8.c<AdaptUser> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f8.c<AdaptUser> f10827a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l<Throwable, fd.o> f10828b;

        /* JADX WARN: Multi-variable type inference failed */
        public d(f8.c<AdaptUser> cVar, l<? super Throwable, fd.o> lVar) {
            this.f10827a = cVar;
            this.f10828b = lVar;
        }

        @Override // f8.c
        public final void a(f8.b bVar) {
            if (bVar instanceof f8.e) {
                this.f10827a.a(new f8.e(((f8.e) bVar).f7088a));
            } else if (bVar instanceof f8.d) {
                this.f10828b.invoke(((f8.d) bVar).f7087a);
            }
        }
    }

    @Override // m8.f
    public final void a(f8.c<AdaptUser> cVar) {
        b(cVar, a.f10824h);
        ((e8.a) f10823c.getValue()).a(new b(cVar));
    }

    public final void b(f8.c<AdaptUser> cVar, l<? super Throwable, fd.o> lVar) {
        h8.c cVar2 = h8.c.f8298b;
        h8.b bVar = new h8.b(new d(cVar, lVar));
        o7.b bVar2 = o7.b.IO;
        Objects.requireNonNull(bVar2);
        bVar2.f12367h.execute(new w4.h(bVar, 2));
    }
}
