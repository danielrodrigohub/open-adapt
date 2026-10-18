package yc;

/* JADX INFO: compiled from: DataStore.kt */
/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: yc.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DataStore.kt */
    public interface InterfaceC0328a {
        void b(b bVar);
    }

    /* JADX INFO: compiled from: DataStore.kt */
    public interface b {
    }

    /* JADX INFO: compiled from: DataStore.kt */
    public interface c extends b {
    }

    /* JADX INFO: compiled from: DataStore.kt */
    public interface d<T extends a> extends InterfaceC0328a {
        T a();
    }
}
