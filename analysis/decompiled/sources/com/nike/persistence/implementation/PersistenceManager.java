package com.nike.persistence.implementation;

import a0.b;
import android.content.Context;
import androidx.lifecycle.o;
import cd.a;
import dd.d;
import dd.f;
import java.util.List;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import p4.h;

/* JADX INFO: compiled from: PersistenceManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PersistenceManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f5940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f5941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<yc.a.c> f5942c = o.z(dd.a.App, new f("com.nike.persistence"), new d("runtime"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5943d = "settings.json";

    /* JADX INFO: compiled from: PersistenceManager.kt */
    @Serializable
    public static final class Settings {
        public static final Companion Companion = new Companion();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f5944a;

        /* JADX INFO: compiled from: PersistenceManager.kt */
        public static final class Companion {
            public final KSerializer<Settings> serializer() {
                return PersistenceManager$Settings$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Settings(int i10, String str) {
            if (1 != (i10 & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i10, 1, PersistenceManager$Settings$$serializer.INSTANCE.getDescriptor());
            }
            this.f5944a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Settings) && h.c(this.f5944a, ((Settings) obj).f5944a);
        }

        public final int hashCode() {
            return this.f5944a.hashCode();
        }

        public final String toString() {
            return a0.d.d(b.c("Settings(sessionID="), this.f5944a, ')');
        }

        public Settings(String str) {
            this.f5944a = str;
        }
    }
}
