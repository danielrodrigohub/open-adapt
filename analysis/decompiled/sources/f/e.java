package f;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.n1;
import androidx.lifecycle.p0;
import androidx.lifecycle.q0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: AppCompatActivity.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends androidx.fragment.app.p implements f {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public h f6805z;

    public e() {
        this.f663l.f3165b.b("androidx:appcompat", new c(this));
        a0(new d(this));
    }

    private void c0() {
        p0.a(getWindow().getDecorView(), this);
        q0.a(getWindow().getDecorView(), this);
        androidx.lifecycle.o.H(getWindow().getDecorView(), this);
    }

    @Override // f.f
    public final void I() {
    }

    @Override // f.f
    public final void R() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c0();
        h0().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(h0().d(context));
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        a aVarI0 = i0();
        if (getWindow().hasFeature(0)) {
            if (aVarI0 == null || !aVarI0.a()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // x.j, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a aVarI0 = i0();
        if (keyCode == 82 && aVarI0 != null && aVarI0.j(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final <T extends View> T findViewById(int i10) {
        return (T) h0().e(i10);
    }

    @Override // androidx.fragment.app.p
    public final void g0() {
        h0().j();
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return h0().g();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i10 = n1.f1385a;
        return super.getResources();
    }

    public final g h0() {
        if (this.f6805z == null) {
            p.c<WeakReference<g>> cVar = g.f6806h;
            this.f6805z = new h(this, null, this, this);
        }
        return this.f6805z;
    }

    public final a i0() {
        return h0().h();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        h0().j();
    }

    public final Intent j0() {
        return x.k.a(this);
    }

    public final void k0(Toolbar toolbar) {
        h0().v(toolbar);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        h0().k(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        h0().m();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        Window window;
        if ((Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        Intent intentA;
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        a aVarI0 = i0();
        if (menuItem.getItemId() == 16908332 && aVarI0 != null && (aVarI0.d() & 4) != 0 && (intentA = x.k.a(this)) != null) {
            if (!x.k.a.c(this, intentA)) {
                x.k.a.b(this, intentA);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent intentJ0 = j0();
            if (intentJ0 == null) {
                intentJ0 = x.k.a(this);
            }
            if (intentJ0 != null) {
                ComponentName component = intentJ0.getComponent();
                if (component == null) {
                    component = intentJ0.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent intentB = x.k.b(this, component);
                    while (intentB != null) {
                        arrayList.add(size, intentB);
                        intentB = x.k.b(this, intentB.getComponent());
                    }
                    arrayList.add(intentJ0);
                } catch (PackageManager.NameNotFoundException e10) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e10);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            Object obj = y.a.f18143a;
            y.a.C0318a.a(this, intentArr, null);
            try {
                int i11 = x.b.f17611b;
                x.b.a.a(this);
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuOpened(int i10, Menu menu) {
        return super.onMenuOpened(i10, menu);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i10, Menu menu) {
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((h) h0()).I();
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        h0().n();
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public void onStart() {
        super.onStart();
        h0().o();
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public void onStop() {
        super.onStop();
        h0().p();
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i10) {
        super.onTitleChanged(charSequence, i10);
        h0().x(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        a aVarI0 = i0();
        if (getWindow().hasFeature(0)) {
            if (aVarI0 == null || !aVarI0.k()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // f.f
    public final void p() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(int i10) {
        c0();
        h0().s(i10);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i10) {
        super.setTheme(i10);
        h0().w(i10);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        c0();
        h0().t(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c0();
        h0().u(view, layoutParams);
    }
}
