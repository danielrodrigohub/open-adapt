package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AdaptIdentity {

    @b("avatar")
    private final Avatar avatar;

    @b("contact")
    private final Contact contact;

    @b("dob")
    private final Dob dob;

    @b("hometown")
    private final String hometown;

    @b("name")
    private final Name name;

    @b("nuId")
    private final String nuId;

    @b("registration")
    private final Registration registration;

    public AdaptIdentity(String str, Name name, String str2, Dob dob, Avatar avatar, Registration registration, Contact contact) {
        h.j(str, "nuId");
        this.nuId = str;
        this.name = name;
        this.hometown = str2;
        this.dob = dob;
        this.avatar = avatar;
        this.registration = registration;
        this.contact = contact;
    }

    public static /* synthetic */ AdaptIdentity copy$default(AdaptIdentity adaptIdentity, String str, Name name, String str2, Dob dob, Avatar avatar, Registration registration, Contact contact, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = adaptIdentity.nuId;
        }
        if ((i10 & 2) != 0) {
            name = adaptIdentity.name;
        }
        Name name2 = name;
        if ((i10 & 4) != 0) {
            str2 = adaptIdentity.hometown;
        }
        String str3 = str2;
        if ((i10 & 8) != 0) {
            dob = adaptIdentity.dob;
        }
        Dob dob2 = dob;
        if ((i10 & 16) != 0) {
            avatar = adaptIdentity.avatar;
        }
        Avatar avatar2 = avatar;
        if ((i10 & 32) != 0) {
            registration = adaptIdentity.registration;
        }
        Registration registration2 = registration;
        if ((i10 & 64) != 0) {
            contact = adaptIdentity.contact;
        }
        return adaptIdentity.copy(str, name2, str3, dob2, avatar2, registration2, contact);
    }

    public final String component1() {
        return this.nuId;
    }

    public final Name component2() {
        return this.name;
    }

    public final String component3() {
        return this.hometown;
    }

    public final Dob component4() {
        return this.dob;
    }

    public final Avatar component5() {
        return this.avatar;
    }

    public final Registration component6() {
        return this.registration;
    }

    public final Contact component7() {
        return this.contact;
    }

    public final AdaptIdentity copy(String str, Name name, String str2, Dob dob, Avatar avatar, Registration registration, Contact contact) {
        h.j(str, "nuId");
        return new AdaptIdentity(str, name, str2, dob, avatar, registration, contact);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptIdentity)) {
            return false;
        }
        AdaptIdentity adaptIdentity = (AdaptIdentity) obj;
        return h.c(this.nuId, adaptIdentity.nuId) && h.c(this.name, adaptIdentity.name) && h.c(this.hometown, adaptIdentity.hometown) && h.c(this.dob, adaptIdentity.dob) && h.c(this.avatar, adaptIdentity.avatar) && h.c(this.registration, adaptIdentity.registration) && h.c(this.contact, adaptIdentity.contact);
    }

    public final Avatar getAvatar() {
        return this.avatar;
    }

    public final Contact getContact() {
        return this.contact;
    }

    public final Dob getDob() {
        return this.dob;
    }

    public final String getHometown() {
        return this.hometown;
    }

    public final Name getName() {
        return this.name;
    }

    public final String getNuId() {
        return this.nuId;
    }

    public final Registration getRegistration() {
        return this.registration;
    }

    public int hashCode() {
        int iHashCode = this.nuId.hashCode() * 31;
        Name name = this.name;
        int iHashCode2 = (iHashCode + (name == null ? 0 : name.hashCode())) * 31;
        String str = this.hometown;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Dob dob = this.dob;
        int iHashCode4 = (iHashCode3 + (dob == null ? 0 : dob.hashCode())) * 31;
        Avatar avatar = this.avatar;
        int iHashCode5 = (iHashCode4 + (avatar == null ? 0 : avatar.hashCode())) * 31;
        Registration registration = this.registration;
        int iHashCode6 = (iHashCode5 + (registration == null ? 0 : registration.hashCode())) * 31;
        Contact contact = this.contact;
        return iHashCode6 + (contact != null ? contact.hashCode() : 0);
    }

    public String toString() {
        return "AdaptIdentity(nuId=" + this.nuId + ", name=" + this.name + ", hometown=" + this.hometown + ", dob=" + this.dob + ", avatar=" + this.avatar + ", registration=" + this.registration + ", contact=" + this.contact + ")";
    }
}
