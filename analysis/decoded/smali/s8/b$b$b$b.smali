.class public final Ls8/b$b$b$b;
.super Lrd/o;
.source "DataOptInHomeFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls8/b$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ls8/b;


# direct methods
.method public constructor <init>(Ls8/b;)V
    .locals 0

    iput-object p1, p0, Ls8/b$b$b$b;->h:Ls8/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lg0/n;->b:Z

    .line 4
    sget-object v0, Lt8/a;->a:Lt8/a;

    .line 5
    invoke-virtual {v0}, Lt8/a;->a()Lh8/a;

    move-result-object v1

    invoke-virtual {v0}, Lt8/a;->a()Lh8/a;

    move-result-object v0

    invoke-interface {v0}, Lh8/a;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Lh8/a;->j0(I)V

    .line 6
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 7
    iget-object p1, p0, Ls8/b$b$b$b;->h:Ls8/b;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 8
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
