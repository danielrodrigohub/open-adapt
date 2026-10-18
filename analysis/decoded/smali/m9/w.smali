.class public Lm9/w;
.super Lp8/c;
.source "SettingsFragment.kt"

# interfaces
.implements Landroidx/preference/c$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/w$a;
    }
.end annotation


# static fields
.field public static final K0:Lm9/w$a;


# instance fields
.field public final A0:Ljava/lang/String;

.field public final B0:Ljava/lang/String;

.field public final C0:Ljava/lang/String;

.field public final D0:Ljava/lang/String;

.field public final E0:Ljava/lang/String;

.field public final F0:Ljava/lang/String;

.field public final G0:Ljava/lang/String;

.field public H0:Lcom/nike/adapt/adk/IAdaptRequester;

.field public I0:Lcom/nike/adapt/adk/IDeviceController;

.field public final J0:Lfd/h;

.field public final l0:Ljava/lang/String;

.field public m0:Lea/m;

.field public final n0:Lh8/c;

.field public final o0:Ljava/lang/String;

.field public final p0:Ljava/lang/String;

.field public final q0:Ljava/lang/String;

.field public final r0:Ljava/lang/String;

.field public final s0:Ljava/lang/String;

.field public final t0:Ljava/lang/String;

.field public final u0:Ljava/lang/String;

.field public final v0:Ljava/lang/String;

.field public final w0:Ljava/lang/String;

.field public final x0:Ljava/lang/String;

.field public final y0:Ljava/lang/String;

.field public final z0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm9/w$a;

    invoke-direct {v0}, Lm9/w$a;-><init>()V

    sput-object v0, Lm9/w;->K0:Lm9/w$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/c;-><init>()V

    const-string v0, "SettingsFragment"

    .line 2
    iput-object v0, p0, Lm9/w;->l0:Ljava/lang/String;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    iput-object v0, p0, Lm9/w;->n0:Lh8/c;

    const v0, 0x7f11021d

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->o0:Ljava/lang/String;

    const v0, 0x7f11021e

    .line 6
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->p0:Ljava/lang/String;

    const v0, 0x7f110207

    .line 7
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->q0:Ljava/lang/String;

    const v0, 0x7f110209

    .line 8
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->r0:Ljava/lang/String;

    const v0, 0x7f110217

    .line 9
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->s0:Ljava/lang/String;

    const v0, 0x7f110029

    .line 10
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->t0:Ljava/lang/String;

    const v0, 0x7f110205

    .line 11
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->u0:Ljava/lang/String;

    const v0, 0x7f1101a7

    .line 12
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->v0:Ljava/lang/String;

    const v0, 0x7f1101e3

    .line 13
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->w0:Ljava/lang/String;

    const v0, 0x7f11017d

    .line 14
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->x0:Ljava/lang/String;

    const v0, 0x7f110221

    .line 15
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->y0:Ljava/lang/String;

    const v0, 0x7f110199

    .line 16
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->z0:Ljava/lang/String;

    const v0, 0x7f11010c

    .line 17
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->A0:Ljava/lang/String;

    const v0, 0x7f11003c

    .line 18
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->B0:Ljava/lang/String;

    const v0, 0x7f1101b0

    .line 19
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->C0:Ljava/lang/String;

    const v0, 0x7f11017f

    .line 20
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->D0:Ljava/lang/String;

    const v0, 0x7f110159

    .line 21
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->E0:Ljava/lang/String;

    const v0, 0x7f11017a

    .line 22
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->F0:Ljava/lang/String;

    const v0, 0x7f11004b

    .line 23
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm9/w;->G0:Ljava/lang/String;

    .line 24
    new-instance v0, Lm9/w$b;

    invoke-direct {v0, p0}, Lm9/w$b;-><init>(Lm9/w;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lm9/w;->J0:Lfd/h;

    return-void
.end method


# virtual methods
.method public final S()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/c;->S()V

    .line 2
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 3
    iget-object v1, p0, Lm9/w;->C0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;

    invoke-virtual {v0}, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->L()V

    :cond_0
    return-void
.end method

.method public final U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/c;->U(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p1, "EMPTY"

    invoke-static {p2, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-string p1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lm9/w;->z0:Ljava/lang/String;

    invoke-static {p1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Landroidx/preference/c;->q0(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const-string p1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    if-eqz v0, :cond_5

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v1

    invoke-static {v1, p1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lf/e;

    invoke-virtual {v1}, Lf/e;->i0()Lf/a;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/c;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p2, v0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 10
    :cond_3
    invoke-virtual {v1, p2}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 11
    :cond_4
    :goto_0
    sget-object p2, Lfd/o;->a:Lfd/o;

    :cond_5
    if-nez p2, :cond_7

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object p2

    invoke-static {p2, p1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lf/e;

    invoke-virtual {p2}, Lf/e;->i0()Lf/a;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const p2, 0x7f1101d0

    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/a;->o(Ljava/lang/CharSequence;)V

    .line 13
    :cond_7
    :goto_1
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lp8/s;->i0:Li8/d;

    .line 15
    sget-object v0, Lm9/y;->h:Lm9/y;

    .line 16
    new-instance v1, Lm9/x;

    invoke-direct {v1, p0}, Lm9/x;-><init>(Lm9/w;)V

    .line 17
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, p2, v0, v1}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    iput-object p1, p0, Lm9/w;->H0:Lcom/nike/adapt/adk/IAdaptRequester;

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->m()Lo7/s;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lp8/s;->i0:Li8/d;

    .line 20
    check-cast p1, Lo7/f;

    invoke-virtual {p1, p0, p2}, Lo7/f;->b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    const-string p2, "<set-?>"

    .line 21
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lm9/w;->I0:Lcom/nike/adapt/adk/IDeviceController;

    return-void
.end method

.method public final c(Landroidx/preference/Preference;)Z
    .locals 7

    const-string v0, "preference"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    sget-object v2, Lo7/x;->a:Lo7/x;

    .line 3
    iget-object v3, p0, Lm9/w;->l0:Ljava/lang/String;

    .line 4
    iget-object v4, p1, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lm9/w;->A0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v2, v0}, Lcom/nike/adapt/analytics/TrackManager;->isSettingsAccessed(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v2, p0, Lm9/w;->A0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 8
    sget-object p1, Ls9/y;->a:Ls9/y;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    sget-object v1, Lm9/w$c;->h:Lm9/w$c;

    sget-object v2, Lm9/w$d;->h:Lm9/w$d;

    invoke-virtual {p1, v0, v1, v2}, Ls9/y;->h(Landroid/app/Activity;Lqd/l;Lqd/l;)Landroidx/appcompat/app/d;

    goto/16 :goto_4

    .line 9
    :cond_1
    iget-object v2, p0, Lm9/w;->o0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-object p1, Lh9/m0;->c:Lh9/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 11
    :cond_2
    iget-object v2, p0, Lm9/w;->p0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    sget-object p1, Lh9/y0;->c:Lh9/y0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 13
    :cond_3
    iget-object v2, p0, Lm9/w;->r0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string v0, "countryCode"

    .line 16
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ls9/f;->values()[Ls9/f;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v5, v0, v1

    .line 18
    iget-object v6, v5, Ls9/f;->h:Ljava/lang/String;

    .line 19
    invoke-static {v6, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_5
    sget-object v5, Ls9/f;->k:Ls9/f;

    .line 21
    :goto_1
    iget p1, v5, Ls9/f;->i:I

    .line 22
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 26
    iget-object p1, p0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p1, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 28
    invoke-static {p1, v0, v4}, Ly/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 29
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    iget-object v2, p0, Lm9/w;->s0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 31
    sget-object p1, Lh9/x0;->c:Lh9/x0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 32
    :cond_8
    iget-object v2, p0, Lm9/w;->q0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 33
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->i:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 34
    :cond_9
    iget-object v2, p0, Lm9/w;->t0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 35
    sget-object p1, Lh9/e0;->c:Lh9/e0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 36
    :cond_a
    iget-object v2, p0, Lm9/w;->u0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->j:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 38
    :cond_b
    iget-object v2, p0, Lm9/w;->w0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 39
    sget-object p1, Lh9/o0;->c:Lh9/o0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 40
    :cond_c
    iget-object v2, p0, Lm9/w;->F0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    sget-object p1, Lh9/i0;->c:Lh9/i0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 42
    :cond_d
    iget-object v2, p0, Lm9/w;->x0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 43
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->k:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 44
    :cond_e
    iget-object v2, p0, Lm9/w;->y0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 45
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->l:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 46
    :cond_f
    iget-object v2, p0, Lm9/w;->z0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 47
    iget-object v0, p0, Lm9/w;->m0:Lea/m;

    if-eqz v0, :cond_18

    .line 48
    iget-object v0, v0, Lea/m;->n:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 49
    iget-object p1, p1, Landroidx/preference/Preference;->h:Landroid/content/Context;

    const-string v1, "context"

    .line 50
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :goto_2
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_11

    .line 52
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_10

    .line 53
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    goto :goto_3

    .line 54
    :cond_10
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.baseContext"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    :goto_3
    if-eqz v4, :cond_18

    .line 55
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string v1, "COLORWAY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 56
    :cond_12
    iget-object v2, p0, Lm9/w;->v0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 57
    new-instance p1, Lh9/n0;

    sget-object v0, Lv7/n;->i:Lv7/n;

    invoke-direct {p1, v0}, Lh9/n0;-><init>(Lv7/n;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 58
    :cond_13
    iget-object v2, p0, Lm9/w;->B0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 59
    sget-object p1, Lh9/f0;->c:Lh9/f0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_4

    .line 60
    :cond_14
    iget-object v2, p0, Lm9/w;->D0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 61
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->dataOptInPageViewed()V

    .line 62
    sget-object p1, Lh9/j0;->c:Lh9/j0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_4

    .line 63
    :cond_15
    iget-object v2, p0, Lm9/w;->C0:Ljava/lang/String;

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 64
    sget-object p1, Lh9/f;->c:Lh9/f;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 65
    iget-object p1, p0, Lm9/w;->n0:Lh8/c;

    invoke-virtual {p1, v1}, Lh8/c;->i(Z)V

    .line 66
    iget-object p1, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 67
    iget-object v0, p0, Lm9/w;->C0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 68
    check-cast p1, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->L()V

    goto :goto_4

    .line 69
    :cond_16
    iget-object v1, p0, Lm9/w;->E0:Ljava/lang/String;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 70
    sget-object p1, Lh9/h0;->c:Lh9/h0;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    return v3

    .line 71
    :cond_17
    iget-object v1, p0, Lm9/w;->G0:Ljava/lang/String;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 72
    new-instance p1, Lh9/p0;

    sget-object v0, Lv7/m;->n:Lv7/m;

    invoke-direct {p1, v0}, Lh9/p0;-><init>(Lv7/m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    :cond_18
    :goto_4
    return v3

    .line 73
    :cond_19
    invoke-super {p0, p1}, Landroidx/preference/c;->c(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_1a
    return v1
.end method

.method public onAdaptDeviceConnectionActionResult(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 1
    .annotation runtime Lfe/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp8/s;->i0:Li8/d;

    .line 2
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lm9/w;->t0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lm6/e;->c(Ljava/util/List;Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V

    .line 4
    instance-of v0, p1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getDevice()Lea/m;

    move-result-object p1

    iput-object p1, p0, Lm9/w;->m0:Lea/m;

    :cond_2
    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/f;->e(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->L(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preference object with key "

    const-string v2, " is not a PreferenceScreen"

    .line 6
    invoke-static {v1, p1, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    check-cast v0, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/c;->r0(Landroidx/preference/PreferenceScreen;)V

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    const-string v0, "adapt_settings_voice_pref_key"

    .line 11
    invoke-virtual {p1, v0}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 13
    iget-object v0, v0, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->K()V

    .line 16
    iget-object v1, p1, Landroidx/preference/Preference;->O:Landroidx/preference/PreferenceGroup;

    if-ne v1, v0, :cond_2

    .line 17
    iput-object v2, p1, Landroidx/preference/Preference;->O:Landroidx/preference/PreferenceGroup;

    .line 18
    :cond_2
    iget-object v1, v0, Landroidx/preference/PreferenceGroup;->V:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 20
    iget-object v2, v0, Landroidx/preference/PreferenceGroup;->T:Lp/g;

    invoke-virtual {p1}, Landroidx/preference/Preference;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, v0, Landroidx/preference/PreferenceGroup;->U:Landroid/os/Handler;

    iget-object v2, v0, Landroidx/preference/PreferenceGroup;->a0:Landroidx/preference/PreferenceGroup$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v1, v0, Landroidx/preference/PreferenceGroup;->U:Landroid/os/Handler;

    iget-object v2, v0, Landroidx/preference/PreferenceGroup;->a0:Landroidx/preference/PreferenceGroup$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_3
    iget-boolean v1, v0, Landroidx/preference/PreferenceGroup;->Y:Z

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {p1}, Landroidx/preference/Preference;->z()V

    .line 25
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0}, Landroidx/preference/Preference;->t()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 28
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_7

    const-string v0, "PREF_KEY"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 30
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 31
    invoke-virtual {v0, p1}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 32
    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    .line 34
    instance-of v1, v0, Landroidx/preference/c$f;

    if-eqz v1, :cond_7

    .line 35
    check-cast v0, Landroidx/preference/c$f;

    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-interface {v0, p0, p1}, Landroidx/preference/c$f;->q(Landroidx/preference/c;Landroidx/preference/PreferenceScreen;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 36
    invoke-virtual {p0, p1}, Lm9/w;->c(Landroidx/preference/Preference;)Z

    :cond_7
    :goto_2
    return-void

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should be called after super.onCreate."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Landroidx/preference/c;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "caller"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/preference/c;->r0(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final s0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm9/w;->l0:Ljava/lang/String;

    return-object v0
.end method

.method public final t0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu8/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lm9/w;->J0:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
