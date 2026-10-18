package com.nike.adapt.adk;

import androidx.lifecycle.i;
import com.nike.adapt.adk.model.AdaptDeviceMode;
import ea.m;
import fd.o;
import i8.d;
import java.util.List;
import p4.h;
import qd.a;
import qd.l;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IAdaptRequester {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: AdaptRequester.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ IAdaptRequester create$default(Companion companion, d dVar, i iVar, String str, a aVar, a aVar2, l lVar, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str = "";
            }
            return companion.create(dVar, iVar, str, aVar, aVar2, lVar);
        }

        public final IAdaptRequester create(d dVar, i iVar, String str, a<o> aVar, a<o> aVar2, l<? super String[], o> lVar) {
            h.j(dVar, "eventUUID");
            h.j(str, "pairId");
            h.j(aVar, "isReady");
            h.j(aVar2, "noDevices");
            h.j(lVar, "permissionsRequired");
            return new AdaptRequester(dVar, iVar, str, aVar, aVar2, lVar);
        }
    }

    void connect(m mVar);

    boolean connectIfNotConnected();

    m currentDevice();

    void disconnect();

    m findOrSetDefaultDevice(List<m> list);

    List<AdaptDeviceMode> modes();

    void subscribe();

    void unsubscribe();
}
