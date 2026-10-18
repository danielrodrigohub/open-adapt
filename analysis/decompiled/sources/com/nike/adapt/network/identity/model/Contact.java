package com.nike.adapt.network.identity.model;

import androidx.annotation.Keep;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: AdaptIdentity.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class Contact {

    @b("email")
    private final Email email;

    public Contact(Email email) {
        h.j(email, "email");
        this.email = email;
    }

    public static /* synthetic */ Contact copy$default(Contact contact, Email email, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            email = contact.email;
        }
        return contact.copy(email);
    }

    public final Email component1() {
        return this.email;
    }

    public final Contact copy(Email email) {
        h.j(email, "email");
        return new Contact(email);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Contact) && h.c(this.email, ((Contact) obj).email);
    }

    public final Email getEmail() {
        return this.email;
    }

    public int hashCode() {
        return this.email.hashCode();
    }

    public String toString() {
        return "Contact(email=" + this.email + ")";
    }
}
