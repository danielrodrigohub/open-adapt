package h9;

import android.content.Intent;
import com.nike.adapt.ui.messaging.MessagingCenterActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class w extends a<MessagingCenterActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b9.c f8365c;

    public w(b9.c cVar) {
        super(MessagingCenterActivity.class);
        this.f8365c = cVar;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("PARAM_MESSAGE_TYPE", this.f8365c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w) && p4.h.c(this.f8365c, ((w) obj).f8365c);
    }

    public final int hashCode() {
        return this.f8365c.hashCode();
    }

    public final String toString() {
        return "MessagingCenterDoNavigate(messageType=" + this.f8365c + ")";
    }
}
