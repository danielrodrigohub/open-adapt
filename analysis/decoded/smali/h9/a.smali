.class public abstract Lh9/a;
.super Lf8/b;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Lf8/b;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lh9/a;-><init>(Ljava/lang/Class;ZLrd/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ZLrd/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lf8/b;-><init>()V

    iput-object p1, p0, Lh9/a;->a:Ljava/lang/Class;

    iput-boolean p2, p0, Lh9/a;->b:Z

    return-void
.end method


# virtual methods
.method public final e(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "from"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lh9/a;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lh9/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lh9/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lf8/b;->b()I

    move-result v0

    invoke-virtual {p0}, Lf8/b;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public final f(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Class;

    .line 3
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0, v0}, Lf8/b;->a(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Lh9/a;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x10008000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public g()Z
    .locals 0

    instance-of p0, p0, Lh9/i;

    return p0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lh9/a;->b:Z

    return v0
.end method
