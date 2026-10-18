package s5;

import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.Objects;

/* JADX INFO: compiled from: BottomAppBar.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends FloatingActionButton.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f15129b;

    /* JADX INFO: compiled from: BottomAppBar.java */
    public class a extends FloatingActionButton.a {
        public a() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
        public final void b() {
            BottomAppBar bottomAppBar = b.this.f15129b;
            int i10 = BottomAppBar.f5022k0;
            Objects.requireNonNull(bottomAppBar);
        }
    }

    public b(BottomAppBar bottomAppBar, int i10) {
        this.f15129b = bottomAppBar;
        this.f15128a = i10;
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
    public final void a(FloatingActionButton floatingActionButton) {
        floatingActionButton.setTranslationX(this.f15129b.D(this.f15128a));
        floatingActionButton.o(new a(), true);
    }
}
