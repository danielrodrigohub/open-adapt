.class public abstract Lp8/i;
.super Landroidx/preference/c;
.source "BreadCrumbPreferenceFragment.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/c;-><init>()V

    return-void
.end method


# virtual methods
.method public H(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/c;->H(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/i;->s0()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onCreate()"

    .line 3
    invoke-static {v0, v1, p1}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/i;->s0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onDestroy()"

    .line 2
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public O()V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/i;->s0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onPause()"

    .line 2
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public Q()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/i;->s0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onResume()"

    .line 3
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method

.method public S()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 3
    iput-object p0, v0, Landroidx/preference/f;->i:Landroidx/preference/f$c;

    .line 4
    iput-object p0, v0, Landroidx/preference/f;->j:Landroidx/preference/f$a;

    .line 5
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/i;->s0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onStart()"

    .line 6
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    return-void
.end method

.method public T()V
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Lp8/i;->s0()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onStop()"

    .line 2
    invoke-static {v1, v2, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 4
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Landroidx/preference/f;->i:Landroidx/preference/f$c;

    .line 6
    iput-object v1, v0, Landroidx/preference/f;->j:Landroidx/preference/f$a;

    return-void
.end method

.method public abstract s0()Ljava/lang/String;
.end method
